using Il2Cpp;
using HarmonyLib;
using UnityEngine;

namespace SpeedMod;

/// <summary>A view-owned clock. Only pose sampling changes; simulation clocks remain untouched.</summary>
public sealed class VisualClock
{
    private readonly Dictionary<string, (float Logical, float Visual)> tracks = new();
    public static bool Reduced { get; private set; }
    internal static float Ratio { get; private set; } = 1f;
    internal static int Frame { get; private set; }

    // Thousands of animation/collision callbacks share one clock snapshot.
    // Refresh before gameplay, on board changes and synchronously on speed changes.
    internal static void Refresh()
    {
        Frame = Time.frameCount;
        float scale = TimeUtil.GetFlowingTimeScale();
        Reduced = scale >= 10f && Mod.Playing(Mod.Board);
        Ratio = Reduced ? 2f / scale : 1f;
    }

    public float Sample(string track, float seconds)
    {
        float visual = seconds;
        if (Reduced && tracks.TryGetValue(track, out var old))
            visual = seconds < old.Logical ? 0 : old.Visual + (seconds - old.Logical) * Ratio;
        tracks[track] = (seconds, visual);
        return visual;
    }
}

[HarmonyPatch]
internal static class VisualSpeedChangedPatch
{
    private static IEnumerable<System.Reflection.MethodBase> TargetMethods() => typeof(TimeUtil).GetMethods()
        .Where(method => method.Name == nameof(TimeUtil.SetFlowingTimeScale));
    private static void Postfix() => VisualClock.Refresh();
}
