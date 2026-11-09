using System.Reflection.Emit;
using System.Reflection;
using System.Runtime.CompilerServices;
using HarmonyLib;
using LawnGlove;
using SpeedMod;

static void Check(bool condition, string message)
{
    if (!condition) throw new Exception(message);
}

// Execute the rewritten IL without native detours, which are unavailable in the
// Linux test runner. The game applies the same transpiler through MelonLoader.
var method = new DynamicMethod("PatchedUpdate", typeof(void), new[] { typeof(LawnGloveMod) });
var generator = method.GetILGenerator();
var done = generator.DefineLabel();
var getter = AccessTools.PropertyGetter(typeof(UnityEngine.Time), "unscaledDeltaTime");
var code = new List<CodeInstruction>
{
    new(OpCodes.Ldarg_0), new(OpCodes.Call, getter),
    new(OpCodes.Stfld, AccessTools.Field(typeof(LawnGloveMod), "UiDelta")),
    new(OpCodes.Ldarg_0), new(OpCodes.Ldfld, AccessTools.Field(typeof(LawnGloveMod), "Playing")),
    new(OpCodes.Brfalse, done),
    new(OpCodes.Ldarg_0), new(OpCodes.Ldfld, AccessTools.Field(typeof(LawnGloveMod), "State")),
    new(OpCodes.Call, getter), new(OpCodes.Conv_R8),
    new(OpCodes.Callvirt, AccessTools.Method(typeof(GloveState), "Tick")),
    new(OpCodes.Ret)
};
code[^1].labels.Add(done);
foreach (var instruction in LawnGloveCompatibility.Transpiler(code))
{
    foreach (var label in instruction.labels) generator.MarkLabel(label);
    switch (instruction.operand)
    {
        case MethodInfo target: generator.Emit(instruction.opcode, target); break;
        case FieldInfo field: generator.Emit(instruction.opcode, field); break;
        case Label label: generator.Emit(instruction.opcode, label); break;
        case null: generator.Emit(instruction.opcode); break;
        default: throw new Exception("Unexpected test instruction");
    }
}
var update = method.CreateDelegate<Action<LawnGloveMod>>();
{
    foreach (float scale in new[] { .2f, .5f, 1f, 2.5f, 5f, 10f, 20f })
        foreach (var tool in new[] { LawnTool.Glove, LawnTool.Hammer, LawnTool.ZombieGlove })
        {
            var mod = new LawnGloveMod();
            while (mod.State.SelectedTool != tool) mod.State.Toggle();
            mod.State.Tick(100); // Set up a charged tool using its unmodified seconds API.
            Check(mod.State.TryArm(), "tool must arm");
            mod.State.CommitMove();
            double before = mod.State.Remaining;
            UnityEngine.Time.Delta = .1f;
            Il2Cpp.TimeUtil.Scale = scale;
            update(mod);
            Check(Math.Abs(mod.State.Remaining - (before - .1 * scale)) < .00001,
                $"{tool} cooldown must use {scale}x game time");
            Check(mod.UiDelta == .1f, "unrelated real-time getter must remain unchanged");
            before = mod.State.Remaining;
            Il2Cpp.TimeUtil.Paused = true;
            update(mod);
            Check(mod.State.Remaining == before, "native pause must freeze cooldown");
            Il2Cpp.TimeUtil.Paused = false;
            mod.Playing = false;
            update(mod);
            Check(mod.State.Remaining == before, "menu must freeze cooldown");
        }

    var bad = new[] { new CodeInstruction(OpCodes.Nop) };
    try
    {
        LawnGloveCompatibility.Transpiler(bad).ToArray();
        throw new Exception("unsupported update must be detected");
    }
    catch (InvalidOperationException) { }
}


Console.WriteLine("LawnGlove compatibility: all tool cooldowns, .2x/.5x/1x/2.5x/5x/10x/20x, pause, menus, real-time isolation and incompatible IL passed.");

namespace LawnGlove
{
    // Managed call-site fixture: verifies the Harmony IL rewrite, including
    // an unrelated getter that must not be scaled. GloveState is production code.
    public sealed class LawnGloveMod
    {
        public GloveState State = new();
        public bool Playing = true;
        public float UiDelta;
        [MethodImpl(MethodImplOptions.NoInlining)]
        public void OnUpdate()
        {
            UiDelta = UnityEngine.Time.unscaledDeltaTime;
            if (Playing) State.Tick(UnityEngine.Time.unscaledDeltaTime);
        }
    }
}
namespace UnityEngine
{
    public static class Time
    {
        public static float Delta;
        public static float unscaledDeltaTime => Delta;
    }
}
namespace Il2Cpp
{
    public static class TimeUtil
    {
        public static float Scale = 1;
        public static bool Paused;
        public static float GetFlowingTimeScale() => Scale;
        public static bool IsTimePaused() => Paused;
    }
}
