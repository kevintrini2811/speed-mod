# Runtime check: Speed ​​Mod 1.0.3

Tested on November 3, 2026 with PvZ Replanted 1.5.1469_Steam on Proton and the installed mod configuration including Fusion 20.1.0. Debug Mod 1.1.1 controls the test via the local file API. Only temporary debug levels are used; no permanent profile changes are requested.

## Cause and change

The native `GameplayActivity.UpdateGame` adds scaled frame time to `m_updateTimer` and executes all due simulation ticks before `Board.PostUpdate` and the next frame. Many projectiles make the simulation expensive. A long frame creates even more catch-up work. At 20×, the measured frame times were ultimately around 1.75 seconds. Native documents are in `speed-scheduler/replanted-0x6000f76.asm` and `speed-scheduler/native-report.md`.

The new frame budget only ends further catch-up work after a full tick including `CheckForGameEnd`. The native loop then subtracts its current time interval as before. The mod receives its fraction and discards any excess wall time that has not yet been simulated. The mod does not skip individual item updates, combat calculations, or events within a tick performed. The budget applies exclusively to the active game owner in Fast Forward. 1×, slow motion and pause retain native controls.

In addition, repeated native queries of the visual clock are no longer necessary. Starting at 10×, the projectile controller directly uses the native base update without the subsequent rotation block. Position, sorting and shadows remain in the native code. Documents are in `native-animation/replanted-0x6000bfe.asm` and `speed-projectile-performance/`.

## measurement

30 native repeaters in six columns, five native normal zombies as iced targets with 10000000 body health each. About 40-56 projectiles at a time. Two measurements per speed level over at least six seconds, first ascending and then descending. FPS are calculated from the difference between native render frame counts and measured wall time. Both versions retain 30 plants and five zombies during the comparison.

| Selected level | Speed ​​Mod 1.0.2 | Speed ​​Mod 1.0.3 |
| --- | ---: | ---: |
| 1× | 60,26 FPS | 59,91 FPS |
| 5× | 2,35 FPS | 46,31 FPS |
| 10× | 1,12 FPS | 43,52 FPS |
| 20× | 0,57 FPS | 42,62 FPS |

Simply saving the native clock polls and projectile rotation achieved around 0.65 FPS at 20x. Only the limited catch-up eliminates the long rendering blocks.

The smoothing has an explicit price: under this CPU load, the simulation reaches around 279 ticks/s instead of the previous 455 ticks/s at selected 20×. The native interval is 1/120 second. This corresponds to around 2.32× instead of 3.79× actual speed achieved. The selected level is retained. Without overload, the simulation is allowed to continue executing all ticks due. There will be no subsequent avalanche of catch-up.

Raw data: `performance/before.json`, `performance/cached.json`, `performance/budget.json`. The historical property `simulation_rate` of these three files nominally uses 100 ticks/s; for actual tempo, multiply by 100/120. `performance/summary.json` contains the explicit ticks/s, versions and installed checksums. The `tools/benchmark_projectiles.py` repeatable test already uses the game-supplied `fps.tickSeconds`.

## Reproduction and limits

```sh
rtk proxy python3 pvzreplanted/speed-mod/tools/benchmark_projectiles.py /tmp/speed-performance.json
rtk proxy pvzreplanted/.tools/dotnet/dotnet run --project pvzreplanted/speed-mod/tests/VisualClockTests.csproj -c Release
```

The benchmark requires the game to be started on the start screen or in the main menu. He presses the native start button via `startup.continue`, creates his debug session and exits it after the test. Complete results are retained at the specified output path.

The regression tests check clock cache, animation at 10×/20×, track restart, return below reduction threshold, end of board, menu, deadline, full ticks, fractional retention, 1×, pause and foreign boards. Release builds of SpeedMod and DebugMod are successful.

This is a specific local load test, not a general 60 FPS guarantee. A single expensive native tick can exceed the 12ms budget. Different plants, mods and hardware change the achievable frame rate and simulation speed. The native calling path has been checked for the mentioned game version.

## Functional runtime decrease

`performance/runtime.json` contains the requests and responses from the final check with the final installed DLLs. Pass all of the following tests:

- `startup.continue` reaches the main menu independently. Repetition in the main menu is idempotent; `INVALID_STATE` is reported during a level.
- Without combat load, levels 1×, 1.5×, 2×, 2.5×, 5×, 10× and 20× reach their selected speed within the measurement tolerance. At 20×, 20.14× were achieved.
- Native Pause stops the simulation counter. Repeated pausing/resume remains idempotent. Selecting speed during pause does not cancel pause.
- Invalid icing duration does not change the previously checked body lives. Missing values ​​and outdated board IDs are rejected.
- Consecutive projectile snapshots show position progression of the same projectile ID. At 20x, the test zombie's health continues to decrease; the icing remains.
- Returning from 20× to 1× restores more than 45 FPS without a catch-up avalanche.
- Native removal of icing resets its counter. Level changing protects old IDs. Exiting a paused debug board releases the API's own pause.

The previously ineffective API pause now calls the native time control and has exactly its own pause entry. `DebugUi.Dispose` takes UI objects already destroyed by Unity into account. During the final runtime check, the game log contains no errors or exceptions.

SpeedMod 1.0.3 and DebugMod 1.1.1 are installed. Build files and installed DLLs each have identical SHA-256 checksums. Backups and installation manifests are under `debug-mod/backups/install-20261103-161638-169072` and for the final API under `debug-mod/backups/install-20261103-162319-208721`.
