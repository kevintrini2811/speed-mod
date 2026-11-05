using System.Reflection;
using HarmonyLib;
using Il2CppReloaded.Gameplay;
using Il2CppReloaded.TreeStateActivities;

namespace SpeedMod;

// Scope starts before other mods' collision prefixes and ends after their
// postfixes. Never skip projectile simulation, damage, status effects or audio.
internal static class ImpactEffects
{
    [ThreadStatic] internal static int Depth;
    [ThreadStatic] internal static List<(Reanimation Effect, uint Id)>? Reanimations;

    internal static bool Particle(ParticleEffect effect) => effect is
        ParticleEffect.MelonSplash or ParticleEffect.WinterMelon or ParticleEffect.PopcornSplash
        or ParticleEffect.PeaSplat or ParticleEffect.PeashooterPeaSplat or ParticleEffect.ButterSplat
        or ParticleEffect.CabbageSplat or ParticleEffect.PuffSplat or ParticleEffect.StarSplat
        or ParticleEffect.SnowpeaSplat or ParticleEffect.SnowpeaPuff
        or ParticleEffect.Powie or ParticleEffect.Pow or ParticleEffect.Doom
        or ParticleEffect.IceSparkle or ParticleEffect.Blastmark;

    internal static void End(int firstEffect)
    {
        if (firstEffect < 0) return;
        try
        {
            while (Reanimations != null && Reanimations.Count > firstEffect)
            {
                var (effect, id) = Reanimations[^1];
                Reanimations.RemoveAt(Reanimations.Count - 1);
                if (effect.DataID == id && !effect.mDead) effect.ReanimationDie();
            }
        }
        finally { --Depth; }
    }
}

[HarmonyPatch]
internal static class ProjectileImpactScopePatch
{
    private static IEnumerable<MethodBase> TargetMethods()
    {
        foreach (var name in new[] { nameof(Projectile.Update), nameof(Projectile.DoImpact),
            nameof(Projectile.CheckForCollision), nameof(Projectile.UpdateLobMotion), nameof(Projectile.DoSplashDamage) })
            yield return AccessTools.Method(typeof(Projectile), name);
    }
    [HarmonyPriority(int.MaxValue)]
    private static void Prefix(Projectile __instance, out int __state)
    {
        __state = -1;
        if (!VisualClock.Reduced || __instance.mBoard?.Pointer != Mod.Board?.Pointer) return;
        __state = ImpactEffects.Reanimations?.Count ?? 0;
        ++ImpactEffects.Depth;
    }
    [HarmonyPriority(int.MinValue)]
    private static void Finalizer(int __state) => ImpactEffects.End(__state);
}

[HarmonyPatch]
internal static class ImpactParticlePatch
{
    private static IEnumerable<MethodBase> TargetMethods() => typeof(GameplayActivity).GetMethods()
        .Where(method => method.Name == nameof(GameplayActivity.AddTodParticle));
    [HarmonyPriority(int.MaxValue)]
    private static bool Prefix(ParticleEffect theEffect, ref TodParticleSystem? __result)
    {
        if (ImpactEffects.Depth == 0 || !ImpactEffects.Particle(theEffect)) return true;
        __result = null;
        return false;
    }
}

[HarmonyPatch(typeof(GameplayActivity), nameof(GameplayActivity.AddReanimation))]
internal static class ImpactReanimationPatch
{
    private static void Postfix(ReanimationType animationType, Reanimation? __result)
    {
        if (ImpactEffects.Depth == 0 || __result == null
            || animationType is not (ReanimationType.PeashooterJalapenoFire or ReanimationType.JalapenoFire)) return;
        // Native DoImpact dereferences this result to configure its clip and
        // scale. Retire the visual only after that caller finishes configuring it.
        (ImpactEffects.Reanimations ??= new()).Add((__result, __result.DataID));
    }
}
