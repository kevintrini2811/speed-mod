# Speed Mod 1.0.4

## Dependencies

- Game/runtime: PvZ Replanted (Windows/IL2CPP), MelonLoader 0.7.3, and .NET 6.
- Required mods: `BloomEngine.dll`.
- Optional integrations: `DebugMod`.
- Building: .NET SDK with `net6.0` support and the game/MelonLoader reference assemblies declared in `SpeedMod.csproj`.

Version 1.0.4 checks whether the native Unity component is still alive before additional animation accesses. After plant removal, a native animation callback can still be called with an existing IL2CPP wrapper whose Unity object is already destroyed.

Standalone MelonLoader mod for PvZ Replanted. Requires BloomEngine, but no Fusion mod.

The native fast forward also gets 5×, 10× and 20×. Right click on the fast forward selects the previous stage. The slowdown button to the left switches on and off 0.2×. The previously selected fast forward level is retained, even when changing levels during slow motion. Native pause, audio tempo and menus retain their responsibility.

From 10x onwards, visible animations run at the relative speed of 2x. Native animation tracks, events, hits, movement and simulation continue to run at the selected game pace. Projectile poses and visual rotations freeze at 10×; Flight and collisions continue. Impact particles and pure impact reanimations are also suppressed starting at 10x. Hits, damage, status effects and impact sounds are retained. Below 10× the native representation is used again. The additional visual states are fleeting and do not change game states.

The Fusion Mod requires SpeedMod. Its built-in speed controls have been removed. Fusion uses the public position anchor for the golden coffee bean and a `VisualClock` bound to the respective graphic object for imported plants and zombies. Imported projectiles omit pose calculation and rotations above 10x. Fusion still owns their graphics models; SpeedMod owns the speed rules.

Like Plant Library, the mod menu uses an embedded, opaque 512×512 icon. The native 1.5× indicator is mirrored like the slowdown button, placed on its native button plate and combined with `Area5_Roof`. BloomEngine sets frame and position. Origin and checksums are in `assets/sources.json`.

## Building and installing

From `/home/kevin/modding`:

```sh
rtk proxy pvzreplanted/.tools/dotnet/dotnet build pvzreplanted/fusion-mod/FusionMod.csproj -c Release
rtk proxy pvzreplanted/.tools/fusion-workflow/bin/python pvzreplanted/speed-mod/tools/install.py
```

To update only this mod, a release build of `speed-mod/SpeedMod.csproj` and then `python3 pvzreplanted/debug-mod/tools/install.py --only SpeedMod` is sufficient. This installer also secures DLL and checksums before atomic exchange.

The Fusion build includes SpeedMod. The installer saves both existing DLLs, checks interim file changes and replaces `Mods/SpeedMod.dll` and `Mods/FusionMod.dll`. In the event of an installation error, it restores the previous state. `backups/<Zeitstempel>/installation.json` contains the original and installed checksums.

To restore both DLLs together from the same backup. If no SpeedMod was previously installed, remove `Mods/SpeedMod.dll` and restore the backed up FusionMod.dll. Keep the game closed during installation and dismantling.

## Testing and acceptance

Testing includes release compilation, visual clock regression testing, native call paths, and a runtime test via the Debug API. Results and limits are in `references/performance-validation.md`.

`references/native-animation` occupies the animation clock and the native projectile rotation. `references/native-spine` occupies `SkeletonAnimation.Update(float)` and the separate `OnlyEventTimelines` phase. This phase remains unchanged; only the subsequent visible pose uses a separate AnimationState without game event subscribers. `references/native-impact` occupies the separate impact, damage and effect calls. Only impact particles within projectile calls are suppressed. Butter and ice states as well as death particles are preserved. The native fire impact animation must first provide a valid object because the caller configures it immediately; The object is released after the call before the next drawing.

`references/native-ground` demonstrates native ground motion based on logical track times. Reused controllers discard the old visual state.

Check manually:

- Fast forward 1×, 1.5×, 2×, 2.5×, 5×, 10× and 20×; Right click backwards.
- Slow motion 0.2×, level selection during slow motion, return to selected level.
- Pause, resume, level end, new level, save and load at high speed.
- From 10×: native and imported plants/zombies with 2× animation; unchanged attack, damage and movement cycles.
- Impact effects visible at 5×, suppressed at 10×/20×; Damage, area damage, butter, cold and sounds remain correct.
- Native and fusion projectiles: no pose animation or rotation from 10x, but correct flight, shadows and hits. Below 10× normal animation again.
- SpeedMod without Fusion and together with Fusion; Mod menu icon, slowdown button and coffee bean position.

## Projectile optimization in 1.0.3

Otherwise, the native catch-up loop will empty all accumulated playing time before the next render frame. High speed and lots of projectiles extend the frame, the next frame accumulates even more work. In the tested mod configuration, a frame at 20× blocked for about 1.75 seconds.

When fast forwarding, the simulation can therefore work for around 12 ms per render frame. Only after a complete native tick including the end-of-level check is any excess catch-up time discarded. The remainder of a started time interval remains intact. No single combat, event or object tick is skipped. 1×, slow motion, pause and other boards retain their native controls. Under CPU overload, the actual game speed achieved is lower than the selected level. The level is retained and is reached again if there is enough power; there is no avalanche of time to be made up later.

The frequent animation and hit calls use a common snapshot of speed level and visual beat. The snapshot is updated per render frame and immediately upon native speed and board changes. Repeated native access to game mode, scene and time control is no longer required in these hotpaths.

From 10× the projectile controller directly calls its native `ReloadedController.Update`. Its native position, sort and shadow updates are retained. The subsequent rotation block is completely eliminated; previously the mod calculated the rotation and reset it via further Unity calls. The method is resolved via IL2CPP metadata, without hard-coded binary addresses. If it is not available, the full native update remains active. Simulation, events and collisions remain unchanged.

Regressionstest:

```sh
rtk proxy pvzreplanted/.tools/dotnet/dotnet run --project pvzreplanted/speed-mod/tests/VisualClockTests.csproj -c Release
```
