# Native Behavior Analysis: Replanted

This report collects static evidence. It does not confirm any gambling behavior.

## Boundaries

- Callers: direct calls and external jumps from assembly CSharp method scopes, including `jmp`.
- Areas end at the next method pointer or section end. Internal addresses are only mapping candidates.
- Areas can contain additional native helper functions; The specified caller name is then only a candidate.
- Indirect calls, native functions outside of these areas and embedded copies remain to be followed technically.
- Aliases share the same address. Automatic target and lifecycle selection is based on method names.
- The display limits aliases to three and lists per method to 20 entries. The JSON contains the complete lists.
- Field receipts are offset candidates without proof of the object type. `lea` only occupies one address.
- Field search includes methods of the declared field owner. Foreign writers and register aliases must be checked manually.
- Missing hits do not prove unused helpers, free fields or missing storage.

## cover

5779 unique areas; 692 methods with no analyzable region.
18 areas with early decoder end.

## Storage and field candidates

## Reloaded.TreeStateActivities.GameplayActivity.GamePause [0x6000f7f]

requested

RVA `0x7dd010`; End of range `0x7dd090`; Document [replanted-0x6000f7f.asm](replanted-0x6000f7f.asm).

Caller:

- `0x621adb` `call`: PauseGameActivity.ActiveStarted [0x600004d] nach `0x7dd010` (Reloaded.TreeStateActivities.GameplayActivity.GamePause [0x6000f7f]).
- `0x621bb9` `call`: PauseGameActivity.InactiveStarted [0x600004e] nach `0x7dd010` (Reloaded.TreeStateActivities.GameplayActivity.GamePause [0x6000f7f]).

Goals:

- `0x7dd030` `call` to `0x4feb70`: unresolved native address.
- `0x7dd055` `call` to `0x2200`: unresolved native address.
- `0x7dd073` `call` nach `0x66d8c0`: Reloaded.Gameplay.Board.RefreshSeedPacketFromCursor [0x60016b9].
- `0x7dd083` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity.RemoveParticle [0x6000f28]

lifecycle/target candidate

RVA `0x60f880`; End of range `0x60f890`; Document [replanted-0x6000f28.asm](replanted-0x6000f28.asm).

Caller:

- `0x60e8fd` `call`: Eadp.Nexus.Connect.Grpc.V1.AccessToken.Clone [0x60001d6] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x60efb2` `call`: Eadp.Nexus.Connect.Grpc.V1.AccessToken..ctor [0x60001d5] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x60f022` `jmp`: AudioSequence/DelayedAudioSequenceData..ctor [0x600000d] / ByteWrite..ctor [0x600008b] / UnitySourceGeneratedAssemblyMonoScriptTypes_v1..ctor [0x60000b8] / 184 weitere Aliase (JSON aliases[6352928]) nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x6107e6` `call`: UI.Scripts.AlmanacArchive.Start [0x60000c6] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x6107f9` `call`: UI.Scripts.AlmanacArchive.Start [0x60000c6] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x61671d` `call`: Eadp.Nexus.Connect.Grpc.V1.FieldFilter.Clone [0x60001f2] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x616cf2` `call`: Eadp.Nexus.Connect.Grpc.V1.FieldFilter..ctor [0x60001f1] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x61810d` `call`: Eadp.Nexus.Connect.Grpc.V1.GetAuthForEpicClientId3Request.Clone [0x600020c] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x618f22` `call`: Eadp.Nexus.Connect.Grpc.V1.GetAuthForEpicClientId3Request..ctor [0x600020b] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x61c492` `call`: Eadp.Nexus.Connect.Grpc.V1.GetAuthForMobileXplayClientId3Request..ctor [0x6000239] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x6204aa` `call`: UI.Scripts.LevelSelectScreen.HideCarousel [0x6000105] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x620703` `call`: UI.Scripts.LevelSelectScreen.OnEnterLevelSelect [0x60000fc] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x620716` `call`: UI.Scripts.LevelSelectScreen.OnEnterLevelSelect [0x60000fc] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x620762` `call`: UI.Scripts.LevelSelectScreen.OnEnterLevelSelect [0x60000fc] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x620891` `call`: UI.Scripts.LevelSelectScreen.OnLeaveLevelSelect [0x60000fd] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x6208a4` `call`: UI.Scripts.LevelSelectScreen.OnLeaveLevelSelect [0x60000fd] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x620c7d` `call`: UI.Scripts.LevelSelectScreen.ShowCarouselAfterXSeconds [0x60000fa] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x62114e` `call`: UI.Scripts.LevelSelectScreen.Start [0x60000f9] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x621a36` `call`: PauseGameActivity.ActiveStarted [0x600004d] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- `0x621b86` `call`: PauseGameActivity.InactiveStarted [0x600004e] nach `0x60f880` (SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072])).
- Another 723 entries completely in native-analysis.json.

Goals:

- No direct external targets found.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]

lifecycle/target candidate

RVA `0x7e14a0`; End of range `0x7e15a0`; Document [replanted-0x6000f29.asm](replanted-0x6000f29.asm).

Caller:

- `0x69ac5c` `call`: Reloaded.Gameplay.CursorObject.Die [0x60018e0] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6ace1a` `call`: Reloaded.Gameplay.Plant.Die [0x6001a18] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4eb8` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4ecf` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4ee6` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4efd` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4f14` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b4f2b` `call`: Reloaded.Gameplay.Plant.RemoveEffects [0x6001a62] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6b580e` `call`: Reloaded.Gameplay.Plant.SetSleeping [0x6001a4b] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6bfa58` `call`: Reloaded.Gameplay.CloudyDayMode.Update [0x6001ae8] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6e5858` `call`: Reloaded.Gameplay.Zombie.ApplyBurn [0x6001d33] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6ec026` `call`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6ef571` `call`: Reloaded.Gameplay.Zombie.DropFlag [0x6001d83] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6ef93f` `call`: Reloaded.Gameplay.Zombie.DropHead [0x6001d2b] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).
- `0x6f5130` `call`: Reloaded.Gameplay.Zombie.PlayDeathAnim [0x6001d18] nach `0x7e14a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f29]).

Goals:

- `0x7e14bf` `call` to `0x4feb70`: unresolved native address.
- `0x7e14cd` `call` to `0x63cd70`: GRPC.NET.PushPullStream.get_Position [0x6000857] / Source.Controllers.ReloadedCharacterController.GetFrameCount [0x6000c3b] / Source.Controllers.ReloadedCharacterController.FindTrackIndex [0x6000c5e] / 45 additional aliases (JSON aliases[6540656]).
- `0x7e14ff` `call` nach `0x6be7d0`: Reloaded.Gameplay.DataID.op_Implicit [0x6001935] / Reloaded.Gameplay.DataID.op_Implicit [0x6001936] / Reloaded.Gameplay.DataID.op_Implicit [0x6001937] / 46 weitere Aliase (JSON aliases[7071696]).
- `0x7e1519` `call` to `0x2448850`: unresolved native address.
- `0x7e1531` `call` to `0x4feb70`: unresolved native address.
- `0x7e1551` `call` to `0x6ca910`: Reloaded.Gameplay.Reanimation.ReanimationDie [0x6001ab5].
- `0x7e1578` `call` to `0x2448460`: unresolved native address.
- `0x7e158d` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f2a]

lifecycle/target candidate

RVA `0x7e15a0`; End of range `0x7e1620`; Document [replanted-0x6000f2a.asm](replanted-0x6000f2a.asm).

Caller:

- `0x7c6ab5` `jmp`: Source.Controllers.ReanimationController.RemoveReanimation [0x6000c14] nach `0x7e15a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f2a]).
- `0x7c7157` `call`: Source.Controllers.ReanimationController.Update [0x6000c0f] nach `0x7e15a0` (Reloaded.TreeStateActivities.GameplayActivity.RemoveReanimation [0x6000f2a]).

Goals:

- `0x7e15c0` `call` to `0x4feb70`: unresolved native address.
- `0x7e15e0` `call` to `0x6ca910`: Reloaded.Gameplay.Reanimation.ReanimationDie [0x6001ab5].
- `0x7e1607` `call` to `0x2448460`: unresolved native address.
- `0x7e1617` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity.FlySeedPacketToTarget [0x6000f56]

lifecycle/target candidate

RVA `0x7dce30`; End of range `0x7dcef0`; Document [replanted-0x6000f56.asm](replanted-0x6000f56.asm).

Caller:

- `0x6cfa27` `call`: Reloaded.Gameplay.SeedChooserScreen.CascadeSeedPackets [0x6001b74] nach `0x7dce30` (Reloaded.TreeStateActivities.GameplayActivity.FlySeedPacketToTarget [0x6000f56]).

Goals:

- `0x7dce58` `call` to `0x4feb70`: unresolved native address.
- `0x7dce64` `call` to `0x4feb70`: unresolved native address.
- `0x7dce9c` `call` to `0xebda00`: unresolved native address.
- `0x7dcee5` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity.FlySeedPacketToTarget [0x6000f57]

lifecycle/target candidate

RVA `0x7dcef0`; End of range `0x7dd010`; Document [replanted-0x6000f57.asm](replanted-0x6000f57.asm).

Caller:

- `0x6cff0b` `call`: Reloaded.Gameplay.SeedChooserScreen.ClickedSeedInBank [0x6001b82] nach `0x7dcef0` (Reloaded.TreeStateActivities.GameplayActivity.FlySeedPacketToTarget [0x6000f57]).
- `0x6d01ee` `call`: Reloaded.Gameplay.SeedChooserScreen.ClickedSeedInChooser [0x6001b83] nach `0x7dcef0` (Reloaded.TreeStateActivities.GameplayActivity.FlySeedPacketToTarget [0x6000f57]).

Goals:

- `0x7dcf20` `call` to `0x4feb70`: unresolved native address.
- `0x7dcf2c` `call` to `0x4feb70`: unresolved native address.
- `0x7dcf70` `call` to `0xebda00`: unresolved native address.
- `0x7dcfbb` `call` to `0xebda00`: unresolved native address.
- `0x7dcffc` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.TreeStateActivities.GameplayActivity..ctor [0x6000f80]

lifecycle/target candidate

RVA `0x7e2bc0`; End of range `0x7e2d80`; Document [replanted-0x6000f80.asm](replanted-0x6000f80.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7e2bdd` `call` to `0x4feb70`: unresolved native address.
- `0x7e2be9` `call` to `0x4feb70`: unresolved native address.
- `0x7e2bf5` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c01` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c0d` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c19` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c25` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c31` `call` to `0x4feb70`: unresolved native address.
- `0x7e2c62` `call` to `0x4fedd0`: unresolved native address.
- `0x7e2c74` `call` to `0x1812a50`: unresolved native address.
- `0x7e2c8a` `call` to `0x4fdea0`: unresolved native address.
- `0x7e2c96` `call` to `0x4fedd0`: unresolved native address.
- `0x7e2ca3` `call` nach `0x6c03e0`: Reloaded.Gameplay.EffectSystem..ctor [0x6001998].
- `0x7e2cb9` `call` to `0x4fdea0`: unresolved native address.
- `0x7e2ccf` `call` to `0x4fedd0`: unresolved native address.
- `0x7e2ce1` `call` to `0x1812a50`: unresolved native address.
- `0x7e2cf7` `call` to `0x4fdea0`: unresolved native address.
- `0x7e2d03` `call` to `0x4fedd0`: unresolved native address.
- `0x7e2d10` `call` nach `0x7bec80`: Reloaded.GameplayPooler..ctor [0x6000da2].
- `0x7e2d26` `call` to `0x4fdea0`: unresolved native address.
- Another 4 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Technical handover

1. Trace the relevant callers and targets to the actual state writer. Choose more methods with `--method`.
2. Check targeting rules: ranks, distance, flight status, friend/enemy, death and terrain on the specific branches.
3. Documents per field object type, initialization, writer, serialize/deserialize, reset and pool reuse.
4. Check board change, dataID, pause, abort, death and cleanup. Document unsaved states.
5. Add technical results in a separate port-notes.md; this report will be replaced when it is called up again.
