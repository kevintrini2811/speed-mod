using System.Reflection;
using System.Reflection.Emit;
using HarmonyLib;
using Il2Cpp;
using UnityEngine;

namespace SpeedMod;

// Only gameplay cooldowns use flowing time. Input hold gestures and UI polling
// keep real time, and direct GloveState.Tick callers retain their seconds contract.
[HarmonyPatch]
internal static class LawnGloveCompatibility
{
    private static MethodBase? Method => AccessTools.Method(AccessTools.TypeByName("LawnGlove.LawnGloveMod"), "OnUpdate");
    private static bool Prepare() => Method != null;
    private static MethodBase TargetMethod() => Method!;

    internal static float GameDeltaTime() => TimeUtil.IsTimePaused()
        ? 0 : Time.unscaledDeltaTime * TimeUtil.GetFlowingTimeScale();

    internal static IEnumerable<CodeInstruction> Transpiler(IEnumerable<CodeInstruction> instructions)
    {
        var code = instructions.ToList();
        var delta = AccessTools.PropertyGetter(typeof(Time), nameof(Time.unscaledDeltaTime));
        var tick = AccessTools.Method(AccessTools.TypeByName("LawnGlove.GloveState"), "Tick", new[] { typeof(double) });
        int matches = 0;
        for (int i = 0; i + 2 < code.Count; ++i)
            if (code[i].Calls(delta) && code[i + 1].opcode == OpCodes.Conv_R8 && tick != null && code[i + 2].Calls(tick))
            {
                code[i].operand = AccessTools.Method(typeof(LawnGloveCompatibility), nameof(GameDeltaTime));
                ++matches;
            }
        if (matches != 1)
            throw new InvalidOperationException("Unsupported LawnGlove cooldown update; expected one real-time GloveState.Tick call.");
        return code;
    }
}
