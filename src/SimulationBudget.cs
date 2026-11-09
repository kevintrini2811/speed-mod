using System.Diagnostics;
using HarmonyLib;
using Il2Cpp;
using Il2CppReloaded;
using Il2CppReloaded.TreeStateActivities;

namespace SpeedMod;

// The native UpdateGame accumulator otherwise drains an entire scaled frame
// before rendering. Under overload that causes a self-sustaining catch-up spiral.
// Stop requesting catch-up only AFTER a complete native tick, including game-end
// checks. Never skip Board.Update, combat, animation events or individual objects.
internal static class SimulationBudget
{
    internal readonly record struct Scope(IntPtr App, long Deadline, double Tick);
    internal static Scope Current;
    private static readonly long frameTicks = (long)(Stopwatch.Frequency * .012);

    internal static void Begin(GameplayActivity app)
    {
        Current = default;
        var board = Mod.Board;
        if (TimeUtil.GetFlowingTimeScale() <= 1f || !Mod.Playing(board)
            || board!.mPaused || board.mApp.Pointer != app.Pointer || TimeUtil.IsTimePaused()) return;
        double tick = Constants.Gameplay.TIME_FOR_UPDATE;
        if (!double.IsFinite(tick) || tick <= 0) return;
        Current = new(app.Pointer, Stopwatch.GetTimestamp() + frameTicks, tick);
    }

    internal static double TrimPendingTime(double pending, double tick)
    {
        // Native code subtracts the current tick immediately after our hook.
        // Retain the fractional tick, but not unachievable wall-clock catch-up.
        if (!double.IsFinite(pending) || pending < tick) return pending;
        return Math.Min(tick + pending % tick, Math.BitDecrement(2 * tick));
    }

    internal static void TickFinished(GameplayActivity app)
    {
        var scope = Current;
        if (scope.App != app.Pointer || scope.App == IntPtr.Zero
            || Stopwatch.GetTimestamp() < scope.Deadline) return;
        app.m_updateTimer = TrimPendingTime(app.m_updateTimer, scope.Tick);
    }
}

[HarmonyPatch(typeof(GameplayActivity), nameof(GameplayActivity.UpdateGame))]
internal static class SimulationFramePatch
{
    private static void Prefix(GameplayActivity __instance, out SimulationBudget.Scope __state)
    {
        __state = SimulationBudget.Current;
        SimulationBudget.Begin(__instance);
    }
    private static void Finalizer(SimulationBudget.Scope __state) => SimulationBudget.Current = __state;
}

[HarmonyPatch(typeof(GameplayActivity), nameof(GameplayActivity.CheckForGameEnd))]
internal static class SimulationTickFinishedPatch
{
    private static void Postfix(GameplayActivity __instance) => SimulationBudget.TickFinished(__instance);
}
