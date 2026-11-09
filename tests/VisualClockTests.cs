using SpeedMod;
using Il2Cpp;

static void Check(bool value, string message)
{
    if (!value) throw new Exception(message);
}
static void Near(float value, float expected, string message) => Check(Math.Abs(value - expected) < .0001f, message);

Mod.Board = new TestBoard();
TimeUtil.Scale = 10;
VisualClock.Refresh();
Check(VisualClock.Reduced, "10x must reduce visuals");
int reads = TimeUtil.Reads;
for (int i = 0; i < 10000; ++i)
{
    Check(VisualClock.Reduced, "cached mode");
    Near(VisualClock.Ratio, .2f, "cached ratio");
}
Check(TimeUtil.Reads == reads, "hot callbacks must not query the native clock");
var clock = new VisualClock();
Near(clock.Sample("idle", 0), 0, "initial sample");
Near(clock.Sample("idle", 10), 2, "10x must display 2x");
TimeUtil.Scale = 20;
VisualClock.Refresh();
Near(clock.Sample("idle", 30), 4, "20x must preserve visual continuity at 2x");
Near(clock.Sample("idle", 1), 0, "track rewind resets visual time");
TimeUtil.Scale = 5;
VisualClock.Refresh();
Check(!VisualClock.Reduced, "5x restores native visuals");
Near(clock.Sample("idle", 7), 7, "native sample below threshold");
TimeUtil.Scale = .2f;
VisualClock.Refresh();
Check(!VisualClock.Reduced, "slowdown restores native visuals");
TimeUtil.Scale = 20;
Mod.Board = null;
VisualClock.Refresh();
Check(!VisualClock.Reduced, "board disposal clears reduced mode");
Mod.Board = new TestBoard();
Mod.IsPlaying = false;
VisualClock.Refresh();
Check(!VisualClock.Reduced, "menus must not reduce visuals");
Console.WriteLine("VisualClock: cache, 10x/20x continuity, rewind, 5x, slowdown, disposal and menu checks passed.");

// Budget keeps complete ticks and fractional progress; it never drains catch-up
// after the deadline or interferes with native 1x, pause and other boards.
var app = new Il2CppReloaded.TreeStateActivities.GameplayActivity();
Mod.Board = new TestBoard { mApp = app };
Mod.IsPlaying = true;
TimeUtil.Scale = 20;
SimulationBudget.Begin(app);
Check(SimulationBudget.Current.App == app.Pointer, "fast game owns budget");
app.m_updateTimer = .125;
SimulationBudget.Current = new(app.Pointer, long.MaxValue, .01);
SimulationBudget.TickFinished(app);
Near((float)app.m_updateTimer, .125f, "under-budget native work remains untouched");
SimulationBudget.Current = new(app.Pointer, 0, .01);
SimulationBudget.TickFinished(app);
Near((float)app.m_updateTimer, .015f, "overload retains current and fractional tick");
Check(app.m_updateTimer - .01 < .01, "native subtraction must end the catch-up loop");
for (int i = 1; i <= 10000; ++i)
{
    double pending = i * .0001234567;
    if (pending < .01) continue;
    double trimmed = SimulationBudget.TrimPendingTime(pending, .01);
    Check(trimmed >= .01 && trimmed < .02, "trim must preserve exactly one current tick");
    Check(Math.Abs((trimmed - .01) - pending % .01) < 1e-12, "fractional progress survives");
}
TimeUtil.Scale = 1;
SimulationBudget.Begin(app);
Check(SimulationBudget.Current.App == IntPtr.Zero, "1x uses native scheduling");
TimeUtil.Scale = 20;
Mod.Board.mPaused = true;
SimulationBudget.Begin(app);
Check(SimulationBudget.Current.App == IntPtr.Zero, "board pause has no budget");
Mod.Board.mPaused = false;
TimeUtil.Paused = true;
SimulationBudget.Begin(app);
Check(SimulationBudget.Current.App == IntPtr.Zero, "native time pause has no budget");
TimeUtil.Paused = false;
var other = new Il2CppReloaded.TreeStateActivities.GameplayActivity { Pointer = new IntPtr(2) };
SimulationBudget.Begin(other);
Check(SimulationBudget.Current.App == IntPtr.Zero, "other board cannot own budget");
Console.WriteLine("SimulationBudget: deadline, full ticks, fractional progress, 1x, pauses and board ownership passed.");

namespace Il2Cpp
{
    public static class TimeUtil
    {
        public static float Scale;
        public static int Reads;
        public static bool Paused;
        public static bool IsTimePaused() => Paused;
        public static float GetFlowingTimeScale() { ++Reads; return Scale; }
        public static void SetFlowingTimeScale(float scale) => Scale = scale;
    }
}
namespace UnityEngine { public static class Time { public static int frameCount; } }
namespace HarmonyLib { public sealed class HarmonyPatch : Attribute { public HarmonyPatch() {} public HarmonyPatch(Type type, string name) {} } }
namespace SpeedMod
{
    internal static class Mod
    {
        internal static TestBoard? Board;
        internal static bool IsPlaying = true;
        internal static bool Playing(TestBoard? board) => board != null && IsPlaying;
    }
}

namespace SpeedMod
{
    internal sealed class TestBoard
    {
        internal bool mPaused;
        internal Il2CppReloaded.TreeStateActivities.GameplayActivity mApp = new();
    }
}
namespace Il2CppReloaded
{
    public static class Constants { public static class Gameplay { public static double TIME_FOR_UPDATE = .01; } }
}
namespace Il2CppReloaded.TreeStateActivities
{
    public class GameplayActivity
    {
        public IntPtr Pointer = new IntPtr(1);
        public double m_updateTimer;
        public void UpdateGame() { }
        public void CheckForGameEnd() { }
    }
}
