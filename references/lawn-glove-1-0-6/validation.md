# Optional Lawn Glove compatibility 1.0.6

The optional Harmony integration changes only the real-time delta passed from
`LawnGloveMod.OnUpdate` to `GloveState.Tick`. The tool state remains responsible
for the 10-second Glove, 30-second Hammer, and 20-second Zombie Glove cooldowns.
Controller holds, UI polling, and direct callers of `Tick(seconds)` retain
their existing time contracts. Native pause produces a zero cooldown delta.

## Offline verification

- Release build: zero errors and zero warnings.
- Existing Visual Clock and Simulation Budget regression passes.
- The production transpiler transforms an IL fixture, and a `DynamicMethod`
  executes the transformed call. All three production tool states pass at
  0.2x, 0.5x, 1x, 2.5x, 5x, 10x, and 20x. Native pause, non-playing state,
  unscaled UI getters, and incompatible IL rejection are covered.
- The test uses direct IL execution because native Harmony detours are not
  supported by this Linux test host. Actual Harmony installation is verified
  separately in the running game.

## Live verification

Debug Mod 1.3.7 runs a temporary Day session. `debug.tools` disables the normal
debug cooldown reset before measuring a real Hammer action. The measured
cooldown slopes are:

| Effective scale | Measured seconds per real second | Result |
| --- | --- | --- |
| 1x | 1.007 | Pass |
| Native pause | 0.000 | Pass |
| 20x | 20.576 | Pass; cooldown also reaches zero |

The short 20x sample includes API/frame timing uncertainty. It clearly
distinguishes accelerated cooldowns from the previous 1x behavior.

At 20x, a 1300 ms virtual B hold does not switch tools. A 2200 ms hold switches
exactly once, retaining the 1.5 real-second threshold. The API's virtual
controller is removed afterward; game speed and debug cooldown suppression
are restored to their original settings.

Slow scales are covered offline. The Wayland pointer path could not reliably
activate the slowdown UI for a live 0.2x measurement. A temporary native
GameplaySpeed setting probe did not change the active TimeCycler scale and
was restored. No slow live result is claimed.

The initial normal-session attempt uses a new disposable test profile. It
cannot start the desired chooser with that profile's single bank slot. The
test profile is deleted and the original profile is restored before the
successful temporary-debug measurement. No existing profile is changed.

Selected API evidence is in `runtime.json`. Full requests and game logs are
retained under
`/home/kevin/modding/pvzreplanted/.test-runs/tools-speed-20261106-134926/`.
Already documented teardown and Versus Bot exceptions remain separate issues;
the Speed Mod integration adds no new runtime exception.

Speed Mod 1.0.6 also reaches the main menu in a separate process with both
LawnGlove.dll and its dependent FusionMod.dll moved outside Mods. The loaded
assembly list confirms both are absent, and the complete startup log has no
red errors. Original DLLs are restored after a regular shutdown. Speed and
Debug installed hashes match their current builds; the original Fusion hash
remains unchanged. The original Kevin profile remains active and no test
profile remains.

Status: DONE.
