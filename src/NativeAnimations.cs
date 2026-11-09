using HarmonyLib;
using Il2CppInterop.Runtime;
using Il2CppReloaded.Characters;
using Il2CppSource.Controllers;
using Il2CppSpine;
using Il2CppSpine.Unity;
using UnityEngine;
using AnimationState = Il2CppSpine.AnimationState;

namespace SpeedMod;

// Native tracks retain full simulation speed and event delivery. An unsubscribed
// state samples visible poses at 2x. Never slow the state used by combat or saves.
internal static class NativeAnimations
{
    internal sealed class View
    {
        internal readonly SkeletonAnimation Skeleton;
        internal readonly ReloadedController Controller;
        internal readonly AnimationState Logical, Visual;
        internal readonly Dictionary<int, (IntPtr Entry, IntPtr Animation, float Time)> Sources = new();
        internal readonly bool Projectile;
        internal float Delta;
        internal bool EventsApplied;
        internal int Frame = -1;
        internal View(SkeletonAnimation skeleton, ReloadedController controller)
        {
            Skeleton = skeleton; Controller = controller; Logical = skeleton.state;
            Visual = new AnimationState(Logical.Data);
            Projectile = controller.TryCast<ProjectileController>() != null;
        }
    }
    private static readonly Dictionary<IntPtr, View> views = new();
    private static int lastPrune;

    internal static View? Get(SkeletonAnimation skeleton)
    {
        // Native removal can leave an animation callback queued for a destroyed
        // Unity component. Its IL2CPP wrapper and state can still be non-null.
        if (!VisualClock.Reduced || skeleton == null || !skeleton || skeleton.state == null) return null;
        if (views.TryGetValue(skeleton.Pointer, out var view))
        {
            if (view.Logical.Pointer == skeleton.state.Pointer) return view;
            views.Remove(skeleton.Pointer);
        }
        var controller = skeleton.GetComponentInParent<ReloadedController>();
        if (controller == null || controller.m_obj?.mBoard?.Pointer != Mod.Board?.Pointer) return null;
        view = new View(skeleton, controller);
        views.Add(skeleton.Pointer, view);
        return view;
    }

    internal static bool Apply(SkeletonAnimation skeleton, out AnimationState? restore)
    {
        restore = null;
        var view = Get(skeleton);
        if (view == null) return true;
        // Replanted runs OnlyEventTimelines on every simulation tick, then a
        // full pose pass after gameplay. Keep the native event pass untouched.
        if (skeleton.updateMode == UpdateMode.OnlyEventTimelines)
        { view.EventsApplied = true; return true; }
        // Other callers may render directly without the native event-only pass.
        if (!view.EventsApplied)
        {
            view.Logical.ApplyEventTimelinesOnly(skeleton.Skeleton);
            view.EventsApplied = true;
        }
        if (view.Frame == VisualClock.Frame || view.Projectile && view.Frame >= 0) return false;
        view.Frame = VisualClock.Frame;
        var tracks = view.Logical.Tracks;
        for (int i = 0; i < tracks.Count; ++i)
        {
            var source = tracks.Items[i];
            if (source == null)
            { view.Visual.ClearTrack(i); view.Sources.Remove(i); continue; }
            var key = (source.Pointer, source.Animation.Pointer);
            var target = view.Visual.GetCurrent(i);
            if (!view.Sources.TryGetValue(i, out var previous) || (previous.Entry, previous.Animation) != key
                || source.TrackTime < previous.Time || target == null)
            {
                target = view.Visual.SetAnimation(i, source.Animation, source.Loop);
                target.TrackTime = view.Sources.ContainsKey(i) ? 0 : source.TrackTime;
                target.MixDuration = source.MixDuration;
            }
            view.Sources[i] = (key.Item1, key.Item2, source.TrackTime);
            target.Loop = source.Loop;
            target.TimeScale = source.TimeScale;
            target.Alpha = source.Alpha;
            target.AnimationStart = source.AnimationStart; target.AnimationEnd = source.AnimationEnd;
            target.MixBlend = source.MixBlend; target.HoldPrevious = source.HoldPrevious;
            target.Reverse = source.Reverse;
        }
        // Removed high-index tracks must not remain visible.
        for (int i = view.Visual.Tracks.Count - 1; i >= tracks.Count; --i) view.Visual.ClearTrack(i);
        view.Visual.TimeScale = view.Logical.TimeScale;
        view.Visual.Update(view.Projectile ? 0 : view.Delta);
        view.Delta = 0;
        restore = view.Logical;
        skeleton.state = view.Visual;
        return true;
    }

    internal static void Remove(SkeletonAnimation skeleton) => views.Remove(skeleton.Pointer);
    internal static void Clear() => views.Clear();
    internal static void Prune()
    {
        if (!VisualClock.Reduced) { Clear(); return; }
        if (VisualClock.Frame - lastPrune < 120) return;
        lastPrune = VisualClock.Frame;
        foreach (var item in views.ToArray())
            if (!item.Value.Skeleton || !item.Value.Controller || !item.Value.Skeleton.gameObject.activeInHierarchy)
                views.Remove(item.Key);
    }
}

[HarmonyPatch]
internal static class AnimationDeltaPatch
{
    private static IEnumerable<System.Reflection.MethodBase> TargetMethods()
    {
        yield return AccessTools.Method(typeof(SkeletonAnimation), nameof(SkeletonAnimation.Update), new[] { typeof(float) });
        yield return AccessTools.Method(typeof(SkeletonAnimation), nameof(SkeletonAnimation.UpdateAnimationStatus));
    }
    private static void Prefix(SkeletonAnimation __instance, float deltaTime)
    {
        var view = NativeAnimations.Get(__instance);
        if (view == null) return;
        view.EventsApplied = false;
        view.Delta += deltaTime * __instance.timeScale * VisualClock.Ratio;
    }
}

[HarmonyPatch(typeof(SkeletonAnimation), nameof(SkeletonAnimation.ApplyAnimation))]
internal static class VisualPosePatch
{
    private static bool Prefix(SkeletonAnimation __instance, out AnimationState? __state)
        => NativeAnimations.Apply(__instance, out __state);
    private static void Finalizer(SkeletonAnimation __instance, AnimationState? __state)
    { if (__state != null) __instance.state = __state; }
}

[HarmonyPatch(typeof(SkeletonAnimation), nameof(SkeletonAnimation.ClearState))]
internal static class ClearPosePatch
{
    private static void Prefix(SkeletonAnimation __instance) => NativeAnimations.Remove(__instance);
}

// Walking must use native baked logical travel, not the slower visible ground bone.
[HarmonyPatch(typeof(CharacterAnimationController), nameof(CharacterAnimationController.GetGroundVelocity))]
internal static class GroundTravelPatch
{
    private static bool Prefix(CharacterAnimationController __instance, ref float __result)
    {
        if (!VisualClock.Reduced || !__instance.HasGroundSlot) return true;
        __result = __instance.GetGroundVelocityBaked(); return false;
    }
}

// ProjectileController.Update consists of its native base Update followed by roll.
// Invoke the base method nonvirtually: preserve position, sorting and shadows,
// but avoid computing a rotation only to overwrite it through Unity interop.
[HarmonyPatch(typeof(ProjectileController), nameof(ProjectileController.Update))]
internal static class ProjectileRollPatch
{
    private static readonly IntPtr baseUpdate = IL2CPP.il2cpp_class_get_method_from_name(
        Il2CppClassPointerStore<ReloadedController>.NativeClassPtr, nameof(ProjectileController.Update), 0);

    private static unsafe bool Prefix(ProjectileController __instance)
    {
        if (!VisualClock.Reduced || baseUpdate == IntPtr.Zero) return true;
        IntPtr error = IntPtr.Zero;
        IL2CPP.il2cpp_runtime_invoke(baseUpdate, __instance.Pointer, null, ref error);
        Il2CppException.RaiseExceptionIfNecessary(error);
        return false;
    }
}

// Pool reuse keeps GameObjects alive. Drop the previous occupant's frozen pose.
[HarmonyPatch(typeof(ReloadedController), nameof(ReloadedController.Init))]
internal static class ControllerReusePatch
{
    private static void Prefix(ReloadedController __instance)
    {
        foreach (var skeleton in __instance.GetComponentsInChildren<SkeletonAnimation>(true))
            NativeAnimations.Remove(skeleton);
    }
}
