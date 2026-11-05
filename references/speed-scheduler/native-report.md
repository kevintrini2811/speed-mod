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

## Reloaded.TreeStateActivities.GameplayActivity.UpdateGame [0x6000f76]

requested

RVA `0x7e1fd0`; End of range `0x7e21e0`; Document [replanted-0x6000f76.asm](replanted-0x6000f76.asm).

Caller:

- `0x7d959d` `call`: Reloaded.TreeStateActivities.GameplayActivity.ActiveUpdate [0x6000f7b] nach `0x7e1fd0` (Reloaded.TreeStateActivities.GameplayActivity.UpdateGame [0x6000f76]).

Goals:

- `0x7e1fe9` `call` to `0x4feb70`: unresolved native address.
- `0x7e1ff5` `call` to `0x4feb70`: unresolved native address.
- `0x7e2001` `call` to `0x4feb70`: unresolved native address.
- `0x7e201d` `call` to `0x4feeb0`: unresolved native address.
- `0x7e2024` `call` to `0x379e760`: unresolved native address.
- `0x7e2040` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x7e206b` `call` to `0x3840160`: unresolved native address.
- `0x7e2096` `call` to `0x4feeb0`: unresolved native address.
- `0x7e20d3` `call` nach `0x66cf90`: Reloaded.Gameplay.Board.ProcessDeleteQueue [0x60016e1].
- `0x7e2166` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x7e2170` `call` nach `0x7da330`: Reloaded.TreeStateActivities.GameplayActivity.CheckForGameEnd [0x6000f74].
- `0x7e21a6` `call` nach `0x66ce10`: Reloaded.Gameplay.Board.PostUpdate [0x60016d1].
- `0x7e21c0` `call` to `0x2290`: unresolved native address.
- `0x7e21d0` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7e20f9`: `call rax`; Target open.
- `0x7e2118`: `call rax`; Target open.
- `0x7e2137`: `call rax`; Target open.
- `0x7e2156`: `call rax`; Target open.

## Reloaded.TreeStateActivities.GameplayActivity.ActiveUpdate [0x6000f7b]

requested

RVA `0x7d9540`; End of range `0x7d96d0`; Document [replanted-0x6000f7b.asm](replanted-0x6000f7b.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7d9559` `call` to `0x4feb70`: unresolved native address.
- `0x7d956a` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x7d957f` `call` to `0x4feeb0`: unresolved native address.
- `0x7d9586` `call` to `0x625d40`: TimeUtil.IsTimePaused [0x600008c].
- `0x7d959d` `call` nach `0x7e1fd0`: Reloaded.TreeStateActivities.GameplayActivity.UpdateGame [0x6000f76].
- `0x7d95b2` `call` to `0x4feb70`: unresolved native address.
- `0x7d95be` `call` to `0x4feb70`: unresolved native address.
- `0x7d95ca` `call` to `0x4feb70`: unresolved native address.
- `0x7d9619` `call` to `0x2449330`: unresolved native address.
- `0x7d9634` `call` to `0x3840160`: unresolved native address.
- `0x7d9653` `call` to `0x6d7cd0`: Reloaded.Gameplay.TodParticleSystem.ParticleSystemDie [0x6001c23].
- `0x7d9677` `call` to `0x2448460`: unresolved native address.
- `0x7d96be` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7d96a7`: `call rax`; Target open.

## Reloaded.Gameplay.Board.UpdateGame [0x6001738]

requested

RVA `0x673a60`; End of range `0x673eb0`; Document [replanted-0x6001738.asm](replanted-0x6001738.asm).

Caller:

- `0x676a72` `call`: Reloaded.Gameplay.Board.Update [0x60016d2] nach `0x673a60` (Reloaded.Gameplay.Board.UpdateGame [0x6001738]).
- `0x692b8d` `call`: Reloaded.Gameplay.Challenge.Update [0x600180b] nach `0x673a60` (Reloaded.Gameplay.Board.UpdateGame [0x6001738]).

Goals:

- `0x673a79` `call` to `0x4feb70`: unresolved native address.
- `0x673a85` `call` to `0x4feb70`: unresolved native address.
- `0x673a91` `call` to `0x4feb70`: unresolved native address.
- `0x673aa2` `call` nach `0x6734d0`: Reloaded.Gameplay.Board.UpdateGameObjects [0x60016f3].
- `0x673ac2` `call` nach `0x7ddd90`: Reloaded.TreeStateActivities.GameplayActivity.GetShovelBankPosition [0x6000f05].
- `0x673b49` `call` nach `0x6a5b20`: Reloaded.Gameplay.CutScene.ShouldRunUpsellBoard [0x6001924].
- `0x673b61` `call` nach `0x6753e0`: Reloaded.Gameplay.Board.UpdateSunSpawning [0x6001706].
- `0x673b6b` `call` nach `0x675d40`: Reloaded.Gameplay.Board.UpdateZombieSpawning [0x6001705].
- `0x673b75` `call` nach `0x673fd0`: Reloaded.Gameplay.Board.UpdateIce [0x6001717].
- `0x673ba5` `call` nach `0x7e1000`: Reloaded.TreeStateActivities.GameplayActivity.ParticleTryToGet [0x6000f17].
- `0x673be0` `call` nach `0x7de670`: Reloaded.TreeStateActivities.GameplayActivity.HasNotCompletedFirstTimeAdventureLevel [0x6000ee3].
- `0x673bfd` `call` to `0x6701e0`: Reloaded.Gameplay.Board.SetTutorialState [0x600174d].
- `0x673c0c` `jmp` nach `0x675020`: Reloaded.Gameplay.Board.UpdateProgressMeter [0x600172b].
- `0x673c29` `call` nach `0x7de670`: Reloaded.TreeStateActivities.GameplayActivity.HasNotCompletedFirstTimeAdventureLevel [0x6000ee3].
- `0x673c64` `call` to `0x2290`: unresolved native address.
- `0x673c8f` `call` to `0x4feb70`: unresolved native address.
- `0x673c9b` `call` to `0x4feb70`: unresolved native address.
- `0x673ca7` `call` to `0x4feb70`: unresolved native address.
- `0x673cb3` `call` to `0x4feb70`: unresolved native address.
- `0x673cbf` `call` to `0x4feb70`: unresolved native address.
- Another 22 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x673af3`: `call rax`; Target open.
- `0x673b1c`: `call rax`; Target open.

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

## Reloaded.Gameplay.Board..ctor [0x60016a6]

lifecycle/target candidate

RVA `0x6779e0`; End of range `0x679870`; Document [replanted-0x60016a6.asm](replanted-0x60016a6.asm).

Caller:

- `0x7e0087` `call`: Reloaded.TreeStateActivities.GameplayActivity.MakeNewBoard [0x6000ed0] nach `0x6779e0` (Reloaded.Gameplay.Board..ctor [0x60016a6]).

Goals:

- `0x677a06` `call` to `0x4feb70`: unresolved native address.
- `0x677a12` `call` to `0x4feb70`: unresolved native address.
- `0x677a1e` `call` to `0x4feb70`: unresolved native address.
- `0x677a2a` `call` to `0x4feb70`: unresolved native address.
- `0x677a36` `call` to `0x4feb70`: unresolved native address.
- `0x677a42` `call` to `0x4feb70`: unresolved native address.
- `0x677a4e` `call` to `0x4feb70`: unresolved native address.
- `0x677a5a` `call` to `0x4feb70`: unresolved native address.
- `0x677a66` `call` to `0x4feb70`: unresolved native address.
- `0x677a72` `call` to `0x4feb70`: unresolved native address.
- `0x677a7e` `call` to `0x4feb70`: unresolved native address.
- `0x677a8a` `call` to `0x4feb70`: unresolved native address.
- `0x677a96` `call` to `0x4feb70`: unresolved native address.
- `0x677aa2` `call` to `0x4feb70`: unresolved native address.
- `0x677aae` `call` to `0x4feb70`: unresolved native address.
- `0x677aba` `call` to `0x4feb70`: unresolved native address.
- `0x677ac6` `call` to `0x4feb70`: unresolved native address.
- `0x677ad2` `call` to `0x4feb70`: unresolved native address.
- `0x677ade` `call` to `0x4feb70`: unresolved native address.
- `0x677aea` `call` to `0x4feb70`: unresolved native address.
- Another 304 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x679475`: `call rax`; Target open.
- `0x6794e3`: `call rax`; Target open.
- `0x679524`: `call r10`; Target open.
- `0x6795bb`: `call r10`; Target open.
- `0x679693`: `call rax`; Target open.
- `0x6796d4`: `call r10`; Target open.
- `0x67975c`: `call rax`; Target open.

## Reloaded.Gameplay.Board.RemoveAllPlants [0x60016c0]

lifecycle/target candidate

RVA `0x66dad0`; End of range `0x66db60`; Document [replanted-0x60016c0.asm](replanted-0x60016c0.asm).

Caller:

- `0x6d86f4` `call`: Reloaded.Gameplay.VersusMode.ClearBoard [0x6001b21] nach `0x66dad0` (Reloaded.Gameplay.Board.RemoveAllPlants [0x60016c0]).

Goals:

- `0x66daed` `call` to `0x4feb70`: unresolved native address.
- `0x66daf9` `call` to `0x4feb70`: unresolved native address.
- `0x66db29` `call` to `0x2449330`: unresolved native address.
- `0x66db38` `call` to `0x6acd40`: Reloaded.Gameplay.Plant.Die [0x6001a18].
- `0x66db57` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveAllGridItems [0x60016c1]

lifecycle/target candidate

RVA `0x66da30`; End of range `0x66dad0`; Document [replanted-0x60016c1.asm](replanted-0x60016c1.asm).

Caller:

- `0x6d8709` `jmp`: Reloaded.Gameplay.VersusMode.ClearBoard [0x6001b21] nach `0x66da30` (Reloaded.Gameplay.Board.RemoveAllGridItems [0x60016c1]).

Goals:

- `0x66da4d` `call` to `0x4feb70`: unresolved native address.
- `0x66da59` `call` to `0x4feb70`: unresolved native address.
- `0x66da8f` `call` to `0x2449330`: unresolved native address.
- `0x66da9e` `call` to `0x6c2390`: Reloaded.Gameplay.GridItem.GridItemDie [0x60019c3].
- `0x66dac0` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveAllZombies [0x60016c2]

lifecycle/target candidate

RVA `0x66dc00`; End of range `0x66dcb0`; Document [replanted-0x60016c2.asm](replanted-0x60016c2.asm).

Caller:

- `0x66302a` `call`: Reloaded.Gameplay.Board.KeyChar [0x60016ce] nach `0x66dc00` (Reloaded.Gameplay.Board.RemoveAllZombies [0x60016c2]).
- `0x663113` `call`: Reloaded.Gameplay.Board.KeyChar [0x60016ce] nach `0x66dc00` (Reloaded.Gameplay.Board.RemoveAllZombies [0x60016c2]).
- `0x6d86e4` `call`: Reloaded.Gameplay.VersusMode.ClearBoard [0x6001b21] nach `0x66dc00` (Reloaded.Gameplay.Board.RemoveAllZombies [0x60016c2]).
- `0x6fa084` `call`: Reloaded.Gameplay.Zombie.TrySpawnLevelAward [0x6001cea] nach `0x66dc00` (Reloaded.Gameplay.Board.RemoveAllZombies [0x60016c2]).

Goals:

- `0x66dc1d` `call` to `0x4feb70`: unresolved native address.
- `0x66dc29` `call` to `0x4feb70`: unresolved native address.
- `0x66dc5e` `call` to `0x2449330`: unresolved native address.
- `0x66dc70` `call` to `0x6f3600`: Reloaded.Gameplay.Zombie.IsDeadOrDying [0x6001d53].
- `0x66dc7e` `call` to `0x6ebf90`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca].
- `0x66dca2` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3]

lifecycle/target candidate

RVA `0x66db60`; End of range `0x66dc00`; Document [replanted-0x60016c3.asm](replanted-0x60016c3.asm).

Caller:

- `0x6d8e5f` `call`: Reloaded.Gameplay.VersusMode.InitializeWin [0x6001b20] nach `0x66db60` (Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3]).
- `0x6d998d` `call`: Reloaded.Gameplay.VersusMode.UpdateWin [0x6001b1f] nach `0x66db60` (Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3]).
- `0x6d9c93` `call`: Reloaded.Gameplay.VersusMode.Update [0x6001b11] nach `0x66db60` (Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3]).

Goals:

- `0x66db7d` `call` to `0x4feb70`: unresolved native address.
- `0x66db89` `call` to `0x4feb70`: unresolved native address.
- `0x66dbbf` `call` to `0x2449330`: unresolved native address.
- `0x66dbce` `call` to `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x66dbf0` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveCutsceneZombies [0x60016c4]

lifecycle/target candidate

RVA `0x66dcb0`; End of range `0x66dd50`; Document [replanted-0x60016c4.asm](replanted-0x60016c4.asm).

Caller:

- `0x6a8850` `call`: Reloaded.Gameplay.CutScene.Update [0x60018f7] nach `0x66dcb0` (Reloaded.Gameplay.Board.RemoveCutsceneZombies [0x60016c4]).

Goals:

- `0x66dccd` `call` to `0x4feb70`: unresolved native address.
- `0x66dcd9` `call` to `0x4feb70`: unresolved native address.
- `0x66dd09` `call` to `0x2449330`: unresolved native address.
- `0x66dd21` `call` to `0x6ebf90`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca].
- `0x66dd40` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.BungeeIsTargetingCell [0x6001749]

lifecycle/target candidate

RVA `0x656160`; End of range `0x656240`; Document [replanted-0x6001749.asm](replanted-0x6001749.asm).

Caller:

- `0x6f4997` `call`: Reloaded.Gameplay.Zombie.PickBungeeZombieTarget [0x6001cdb] nach `0x656160` (Reloaded.Gameplay.Board.BungeeIsTargetingCell [0x6001749]).

Goals:

- `0x65618e` `call` to `0x4feb70`: unresolved native address.
- `0x65619a` `call` to `0x4feb70`: unresolved native address.
- `0x6561cf` `call` to `0x2449330`: unresolved native address.
- `0x6561e1` `call` to `0x6f3600`: Reloaded.Gameplay.Zombie.IsDeadOrDying [0x6001d53].
- `0x65622e` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveParticleByType [0x600178b]

lifecycle/target candidate

RVA `0x66dd50`; End of range `0x66de50`; Document [replanted-0x600178b.asm](replanted-0x600178b.asm).

Caller:

- `0x6e7254` `call`: Reloaded.Gameplay.Zombie.BossDestroyFireball [0x6001d75] nach `0x66dd50` (Reloaded.Gameplay.Board.RemoveParticleByType [0x600178b]).
- `0x6e73a2` `call`: Reloaded.Gameplay.Zombie.BossDestroyIceballInRow [0x6001d76] nach `0x66dd50` (Reloaded.Gameplay.Board.RemoveParticleByType [0x600178b]).
- `0x6f3172` `call`: Reloaded.Gameplay.Zombie.HitIceTrap [0x6001d0b] nach `0x66dd50` (Reloaded.Gameplay.Board.RemoveParticleByType [0x600178b]).

Goals:

- `0x66dd74` `call` to `0x4feb70`: unresolved native address.
- `0x66dd80` `call` to `0x4feb70`: unresolved native address.
- `0x66ddfe` `call` to `0x2449330`: unresolved native address.
- `0x66de12` `call` to `0x6d7cd0`: Reloaded.Gameplay.TodParticleSystem.ParticleSystemDie [0x6001c23].
- `0x66de3c` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.RemoveZombiesForRepick [0x60017b6]

lifecycle/target candidate

RVA `0x66de50`; End of range `0x66df20`; Document [replanted-0x60017b6.asm](replanted-0x60017b6.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x66de6d` `call` to `0x4feb70`: unresolved native address.
- `0x66de79` `call` to `0x4feb70`: unresolved native address.
- `0x66debb` `call` to `0x2449330`: unresolved native address.
- `0x66decd` `call` to `0x6f3600`: Reloaded.Gameplay.Zombie.IsDeadOrDying [0x6001d53].
- `0x66deed` `call` to `0x6ebf90`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca].
- `0x66df16` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Board.Serialize [0x60017c1]

lifecycle/target candidate

RVA `0x66f190`; End of range `0x66fa00`; Document [replanted-0x60017c1.asm](replanted-0x60017c1.asm).

Caller:

- `0x8027cb` `call`: Reloaded.Services.SerializationService.Serialize [0x60012bc] nach `0x66f190` (Reloaded.Gameplay.Board.Serialize [0x60017c1]).

Goals:

- `0x66f1b5` `call` to `0x4feb70`: unresolved native address.
- `0x66f1c1` `call` to `0x4feb70`: unresolved native address.
- `0x66f1cd` `call` to `0x4feb70`: unresolved native address.
- `0x66f1d9` `call` to `0x4feb70`: unresolved native address.
- `0x66f1e5` `call` to `0x4feb70`: unresolved native address.
- `0x66f1f1` `call` to `0x4feb70`: unresolved native address.
- `0x66f1fd` `call` to `0x4feb70`: unresolved native address.
- `0x66f209` `call` to `0x4feb70`: unresolved native address.
- `0x66f215` `call` to `0x4feb70`: unresolved native address.
- `0x66f221` `call` to `0x4feb70`: unresolved native address.
- `0x66f22d` `call` to `0x4feb70`: unresolved native address.
- `0x66f239` `call` to `0x4feb70`: unresolved native address.
- `0x66f245` `call` to `0x4feb70`: unresolved native address.
- `0x66f251` `call` to `0x4feb70`: unresolved native address.
- `0x66f25d` `call` to `0x4feb70`: unresolved native address.
- `0x66f269` `call` to `0x4feb70`: unresolved native address.
- `0x66f275` `call` to `0x4feb70`: unresolved native address.
- `0x66f281` `call` to `0x4feb70`: unresolved native address.
- `0x66f28d` `call` to `0x4feb70`: unresolved native address.
- `0x66f299` `call` to `0x4feb70`: unresolved native address.
- Another 61 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x66f347`: `call rax`; Target open.
- `0x66f3e6`: `call rax`; Target open.
- `0x66f41d`: `call rax`; Target open.

## Reloaded.Gameplay.Board.Deserialize [0x60017c3]

lifecycle/target candidate

RVA `0x659840`; End of range `0x65a440`; Document [replanted-0x60017c3.asm](replanted-0x60017c3.asm).

Caller:

- `0x80192d` `call`: Reloaded.Services.SerializationService.Deserialize [0x60012bd] nach `0x659840` (Reloaded.Gameplay.Board.Deserialize [0x60017c3]).

Goals:

- `0x659865` `call` to `0x4feb70`: unresolved native address.
- `0x659871` `call` to `0x4feb70`: unresolved native address.
- `0x65987d` `call` to `0x4feb70`: unresolved native address.
- `0x659889` `call` to `0x4feb70`: unresolved native address.
- `0x659895` `call` to `0x4feb70`: unresolved native address.
- `0x6598a1` `call` to `0x4feb70`: unresolved native address.
- `0x6598ad` `call` to `0x4feb70`: unresolved native address.
- `0x6598b9` `call` to `0x4feb70`: unresolved native address.
- `0x6598c5` `call` to `0x4feb70`: unresolved native address.
- `0x6598d1` `call` to `0x4feb70`: unresolved native address.
- `0x6598dd` `call` to `0x4feb70`: unresolved native address.
- `0x6598e9` `call` to `0x4feb70`: unresolved native address.
- `0x6598f5` `call` to `0x4feb70`: unresolved native address.
- `0x659901` `call` to `0x4feb70`: unresolved native address.
- `0x65990d` `call` to `0x4feb70`: unresolved native address.
- `0x659919` `call` to `0x4feb70`: unresolved native address.
- `0x659925` `call` to `0x4feb70`: unresolved native address.
- `0x659931` `call` to `0x4feb70`: unresolved native address.
- `0x65993d` `call` to `0x4feb70`: unresolved native address.
- `0x659949` `call` to `0x4feb70`: unresolved native address.
- Another 97 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x659b16`: `call rax`; Target open.
- `0x659bc1`: `call rax`; Target open.
- `0x659bfc`: `call rax`; Target open.
- `0x659cbe`: `call r10`; Target open.
- `0x65a40c`: `jmp rax`; Target open.

## Reloaded.Gameplay.Board.PostDeserialize [0x60017c6]

lifecycle/target candidate

RVA `0x66cd00`; End of range `0x66ce10`; Document [replanted-0x60017c6.asm](replanted-0x60017c6.asm).

Caller:

- `0x801949` `call`: Reloaded.Services.SerializationService.Deserialize [0x60012bd] nach `0x66cd00` (Reloaded.Gameplay.Board.PostDeserialize [0x60017c6]).

Goals:

- `0x66cd19` `call` to `0x4feb70`: unresolved native address.
- `0x66cd25` `call` to `0x4feb70`: unresolved native address.
- `0x66cd31` `call` to `0x4feb70`: unresolved native address.
- `0x66cd3d` `call` to `0x4feb70`: unresolved native address.
- `0x66cd49` `call` to `0x4feb70`: unresolved native address.
- `0x66cd55` `call` to `0x4feb70`: unresolved native address.
- `0x66cd61` `call` to `0x4feb70`: unresolved native address.
- `0x66cd7e` `call` to `0x13470f0`: unresolved native address.
- `0x66cd91` `call` to `0x13470f0`: unresolved native address.
- `0x66cda4` `call` to `0x13470f0`: unresolved native address.
- `0x66cdba` `call` to `0x13470f0`: unresolved native address.
- `0x66cdd0` `call` to `0x13470f0`: unresolved native address.
- `0x66cde6` `call` to `0x13470f0`: unresolved native address.
- `0x66ce01` `jmp` to `0x13470f0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Widget..ctor [0x6001c47]

lifecycle/target candidate

RVA `0x6da1e0`; End of range `0x6da1f0`; Document [replanted-0x6001c47.asm](replanted-0x6001c47.asm).

Caller:

- `0x6780e7` `call`: Reloaded.Gameplay.Board..ctor [0x60016a6] nach `0x6da1e0` (Reloaded.Gameplay.Widget..ctor [0x6001c47]).
- `0x695102` `jmp`: Reloaded.Gameplay.ButtonWidget..ctor [0x60017f0] nach `0x6da1e0` (Reloaded.Gameplay.Widget..ctor [0x6001c47]).
- `0x6c00d2` `call`: Reloaded.Gameplay.Dialog..ctor [0x6001990] nach `0x6da1e0` (Reloaded.Gameplay.Widget..ctor [0x6001c47]).
- `0x6c02d3` `jmp`: Reloaded.Gameplay.Dialog..ctor [0x600198e] nach `0x6da1e0` (Reloaded.Gameplay.Widget..ctor [0x6001c47]).

Goals:

- `0x6da1e2` `jmp` nach `0x6da070`: Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48].

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48]

lifecycle/target candidate

RVA `0x6da070`; End of range `0x6da130`; Document [replanted-0x6001c48.asm](replanted-0x6001c48.asm).

Caller:

- `0x6ce1ad` `call`: Reloaded.Gameplay.ImitaterDialog..ctor [0x6001b53] nach `0x6da070` (Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48]).
- `0x6d45b3` `call`: Reloaded.Gameplay.SeedChooserScreen..ctor [0x6001b5e] nach `0x6da070` (Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48]).
- `0x6da1da` `jmp`: Reloaded.Gameplay.WidgetManager..ctor [0x6001c50] nach `0x6da070` (Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48]).
- `0x6da1e2` `jmp`: Reloaded.Gameplay.Widget..ctor [0x6001c47] nach `0x6da070` (Reloaded.Gameplay.WidgetContainer..ctor [0x6001c48]).

Goals:

- `0x6da08d` `call` to `0x4feb70`: unresolved native address.
- `0x6da099` `call` to `0x4feb70`: unresolved native address.
- `0x6da0ac` `call` to `0x4fedd0`: unresolved native address.
- `0x6da0be` `call` to `0x1812a50`: unresolved native address.
- `0x6da0ce` `call` to `0x4fdea0`: unresolved native address.
- `0x6da0d8` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x6da0f1` `call` to `0x4fdea0`: unresolved native address.
- `0x6da100` `call` to `0x4fdea0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Technical handover

1. Trace the relevant callers and targets to the actual state writer. Choose more methods with `--method`.
2. Check targeting rules: ranks, distance, flight status, friend/enemy, death and terrain on the specific branches.
3. Documents per field object type, initialization, writer, serialize/deserialize, reset and pool reuse.
4. Check board change, dataID, pause, abort, death and cleanup. Document unsaved states.
5. Add technical results in a separate port-notes.md; this report will be replaced when it is called up again.
