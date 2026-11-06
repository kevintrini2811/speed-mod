# VersusBot resets native fast-forward speeds above 1.5× outside Bot vs Bot

## Summary

VersusBot 1.0.0 resets the game's global speed to 1× whenever the current speed exceeds 1.5× and Bot vs Bot is not active. This affects ordinary gameplay, including the game's native 2× and 2.5× stages. Speed Mod is not required for the faulty condition to execute; it also affects higher speeds added by other mods.

## Environment

- PvZ Replanted 1.5.1469_Steam, Unity 6000.0.52f1
- MelonLoader 0.7.3 Open-Beta
- Versus Bot 1.0.0, informational version `1.0.0+38cc3bfbd10df82662f8101219fc713728e46f2b`
- Observed on Linux using Proton 11.0
- VersusBot.dll SHA-256: `dad6340deb1029ff874b4f9c07fc03b121a188b9515a6f02f6e4766c071b0b50`

## Steps to reproduce

1. Enable VersusBot and start a regular non-versus level.
2. Use the game's native fast-forward button to select a speed above 1.5×.
3. Observe the selected speed and effective simulation speed over the next few frames.

For a minimal reproduction, disable Speed Mod and other speed-control mods. The game's native speed stages are sufficient.

## Expected behavior

Outside Bot vs Bot, VersusBot should leave the game's selected speed unchanged. Its speed control should affect only the mode it owns.

## Actual behavior

Speeds above 1.5× revert to 1× on the next VersusBot update. The native time cycler subsequently resets its selected stage to match. This makes the fast-forward button appear to stop at 1.5×.

## Root cause

`VersusBotMod.OnUpdate()` calls `BotonVelocidad.Actualizar()` every frame. The non-Bot-vs-Bot branch contains:

```csharp
if (!VersusBotMod.EnPartidaBotVsBot)
{
    // Existing UI cleanup...
    if (TimeUtil.GetFlowingTimeScale() > 1.5f)
    {
        TimeUtil.SetFlowingTimeScale(1f, 1f);
    }
}
```

The condition reads global game speed and does not check whether VersusBot previously changed it. It has no dependency on Speed Mod.

A runtime trace captured the reset directly:

```text
SPEED WRITE 20
  at DebugMod.DebugCommands.SetSpeed(...)
SPEED WRITE 1
  at VersusBot.VersusBotMod.OnUpdate()
```

The second write occurred approximately 15 ms after selecting 20×. Selecting native 2× also triggers the same `> 1.5f` condition.

## Suggested fix

Remove the unconditional speed reset from the non-Bot-vs-Bot update branch. If restoring speed on exit is necessary, perform it once when leaving Bot vs Bot, and only restore a value that this control actually owns. Keep the existing UI cleanup and Bot vs Bot speed selection.

## Verification status

Confirmed in a live temporary debug level with both `SpeedMod.dll` and `FusionMod.dll` disabled. The native time cycler exposed four stages: 1×, 1.5×, 2× and 2.5×. Selecting native 2× or 2.5× returned that effective speed immediately, then returned to selected index 0 and effective 1× after 250 ms. The original VersusBot DLL remained installed throughout. Both temporarily disabled DLLs were restored afterward and their SHA-256 hashes verified. Machine-readable observations are archived in `versusbot-without-speed/runtime.json`.
