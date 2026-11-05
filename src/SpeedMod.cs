using HarmonyLib;
using Il2CppReloaded.Gameplay;
using Il2CppReloaded.Services;
using MelonLoader;

[assembly: MelonInfo(typeof(SpeedMod.Mod), "Speed Mod", "1.0.4", "Kevin / Codex")]
[assembly: MelonGame("PopCap Games", "PvZ Replanted")]
[assembly: MelonOptionalDependencies("DebugMod")]
[assembly: MelonAdditionalDependencies("BloomEngine")]
[assembly: MelonPriority(-50)]

namespace SpeedMod;

public sealed class Mod : MelonMod
{
    internal static Board? Board;
    internal static bool Playing(Board? board)
    {
        var app = board?.mApp;
        return app != null && app.GameScene == GameScenes.Playing
            && app.GameMode != GameMode.ChallengeZenGarden;
    }

    public override void OnInitializeMelon() => MenuPresentation.Register(this);
    public override void OnUpdate() => VisualClock.Refresh();
    public override void OnLateUpdate()
    {
        BoardSpeed.Update(Playing(Board));
        NativeAnimations.Prune();
    }
    internal static void Clear()
    {
        Board = null;
        VisualClock.Refresh();
        BoardSpeed.Clear(false);
        NativeAnimations.Clear();
    }
    public override void OnDeinitializeMelon()
    {
        BoardSpeed.Clear(); NativeAnimations.Clear(); Board = null; VisualClock.Refresh();
        MenuPresentation.Dispose();
    }
}

[HarmonyPatch(typeof(Board), nameof(Board.UpdateGame))]
internal static class BoardTickPatch
{
    private static void Postfix(Board __instance)
    {
        if (!Mod.Playing(__instance)) return;
        if (Mod.Board != null && Mod.Board.Pointer != __instance.Pointer) Mod.Clear();
        if (Mod.Board == null)
        {
            Mod.Board = __instance;
            VisualClock.Refresh();
        }
    }
}

[HarmonyPatch(typeof(Board), nameof(Board.DisposeBoard))]
internal static class BoardDisposePatch
{
    private static void Prefix(Board __instance)
    { if (Mod.Board?.Pointer == __instance.Pointer) Mod.Clear(); }
}
