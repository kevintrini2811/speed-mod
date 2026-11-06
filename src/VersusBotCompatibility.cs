using System.Reflection;
using System.Reflection.Emit;
using HarmonyLib;
using Il2Cpp;

namespace SpeedMod;

// VersusBot's speed control resets any >1.5x speed even outside Bot vs Bot.
// Remove only that outside-mode cap; retain its UI cleanup and Bot vs Bot speed.
[HarmonyPatch]
internal static class VersusBotCompatibility
{
    private static MethodBase? Method => AccessTools.Method(AccessTools.TypeByName("VersusBot.BotonVelocidad"), "Actualizar");
    private static bool Prepare() => Method != null;
    private static MethodBase TargetMethod() => Method!;
    private static IEnumerable<CodeInstruction> Transpiler(IEnumerable<CodeInstruction> instructions)
    {
        var code = instructions.ToList();
        var getSpeed = AccessTools.Method(typeof(TimeUtil), nameof(TimeUtil.GetFlowingTimeScale));
        int matches = 0;
        for (int i = 1; i < code.Count; ++i)
            if (code[i - 1].Calls(getSpeed) && code[i].opcode == OpCodes.Ldc_R4
                && code[i].operand is float cap && cap == 1.5f)
            {
                code[i].operand = float.PositiveInfinity;
                ++matches;
            }
        if (matches != 1)
            throw new InvalidOperationException("Unsupported VersusBot speed control; expected one outside-mode 1.5x cap.");
        return code;
    }
}
