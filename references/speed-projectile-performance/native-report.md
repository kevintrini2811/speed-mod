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

## Source.Controllers.ReloadedController.Update [0x6000c88]

requested

RVA `0x7cb4b0`; End of range `0x7cb580`; Document [replanted-0x6000c88.asm](replanted-0x6000c88.asm).

Caller:

- `0x7ab47b` `call`: Source.Controllers.CursorController.Update [0x6000afe] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7af276` `call`: Source.Controllers.GamepadCursorController.Update [0x6000b51] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7b11a5` `call`: Source.Controllers.GamepadCursorController._onMoveActionInProgress [0x6000b56] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7c650e` `call`: Source.Controllers.ProjectileController.Update [0x6000bfe] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7c701e` `call`: Source.Controllers.ReanimationController.Update [0x6000c0f] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7cbd2d` `call`: Source.Controllers.ScaryPotController.Update [0x6000cc3] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7ce2eb` `call`: Source.Controllers.StinkyController.Update [0x6000cd4] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7d1ceb` `call`: Source.Controllers.ZombieController.Update [0x6000cfd] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).

Goals:

- `0x7cb4e7` `call` to `0x4feb70`: unresolved native address.
- `0x7cb4f3` `call` to `0x4feb70`: unresolved native address.
- `0x7cb547` `call` nach `0x7cb3b0`: Source.Controllers.ReloadedController.UpdateSorting [0x6000c8c].
- `0x7cb568` `jmp` to `0x7ccee0`: Source.Controllers.ShadowController.UpdateShadow [0x6000cca].
- `0x7cb573` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7cb4d5`: `call rax`; Target open.
- `0x7cb537`: `call rax`; Target open.

## Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]

requested

RVA `0x7cb020`; End of range `0x7cb3b0`; Document [replanted-0x6000c89.asm](replanted-0x6000c89.asm).

Caller:

- `0x7aa3de` `call`: Source.Controllers.CoinController.UpdatePosition [0x6000ac8] nach `0x7cb020` (Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]).
- `0x7c6fb8` `call`: Source.Controllers.ReanimationController.UpdatePosition [0x6000c11] nach `0x7cb020` (Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]).

Goals:

- `0x7cb040` `call` to `0x4feb70`: unresolved native address.
- `0x7cb073` `call` to `0x4feeb0`: unresolved native address.
- `0x7cb098` `call` to `0x3832900`: unresolved native address.
- `0x7cb190` `call` to `0x3849110`: unresolved native address.
- `0x7cb1dd` `call` to `0x33c49a0`: unresolved native address.
- `0x7cb204` `call` to `0x38492d0`: unresolved native address.
- `0x7cb2bd` `call` to `0x3849110`: unresolved native address.
- `0x7cb2d0` `call` to `0x7c9c60`: Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a].
- `0x7cb2f7` `call` to `0x3849110`: unresolved native address.
- `0x7cb32a` `call` to `0x33c49a0`: unresolved native address.
- `0x7cb37f` `call` to `0x33c49a0`: unresolved native address.
- `0x7cb3a7` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7cb0c7`: `call rax`; Target open.
- `0x7cb0fb`: `call rax`; Target open.
- `0x7cb1ad`: `call rax`; Target open.
- `0x7cb251`: `call rax`; Target open.
- `0x7cb27c`: `call rax`; Target open.
- `0x7cb34a`: `call rax`; Target open.

## Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]

requested

RVA `0x7c9c60`; End of range `0x7c9d10`; Document [replanted-0x6000c8a.asm](replanted-0x6000c8a.asm).

Caller:

- `0x7c7c44` `call`: Source.Controllers.ReloadedCharacterController.GetTrackPosition [0x6000c42] to `0x7c9c60` (Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]).
- `0x7cb2d0` `call`: Source.Controllers.ReloadedController.UpdatePosition [0x6000c89] to `0x7c9c60` (Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]).

Goals:

- `0x7c9d09` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.Update [0x6001a91]

requested

RVA `0x6ca280`; End of range `0x6ca4d0`; Document [replanted-0x6001a91.asm](replanted-0x6001a91.asm).

Caller:

- `0x673721` `call`: Reloaded.Gameplay.Board.UpdateGameObjects [0x60016f3] nach `0x6ca280` (Reloaded.Gameplay.Projectile.Update [0x6001a91]).

Goals:

- `0x6ca2cd` `call` nach `0x6a5b20`: Reloaded.Gameplay.CutScene.ShouldRunUpsellBoard [0x6001924].
- `0x6ca351` `call` to `0x665070`: Reloaded.Gameplay.Board.MakeRenderOrder [0x6001737].
- `0x6ca3c5` `call` to `0x65eb20`: Reloaded.Gameplay.Board.GetPosYBasedOnRow [0x6001747].
- `0x6ca3db` `call` nach `0x6c9c90`: Reloaded.Gameplay.Projectile.UpdateNormalMotion [0x6001a9f].
- `0x6ca3e2` `call` nach `0x6c95f0`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99].
- `0x6ca3ff` `call` to `0x65eb20`: Reloaded.Gameplay.Board.GetPosYBasedOnRow [0x6001747].
- `0x6ca4ac` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x6ca4c1` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97]

requested, lifecycle/target candidate

RVA `0x6c6ac0`; End of range `0x6c6e30`; Document [replanted-0x6001a97.asm](replanted-0x6001a97.asm).

Caller:

- `0x6ca152` `call`: Reloaded.Gameplay.Projectile.UpdateNormalMotion [0x6001a9f] nach `0x6c6ac0` (Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97]).

Goals:

- `0x6c6ad9` `call` to `0x4feb70`: unresolved native address.
- `0x6c6ae5` `call` to `0x4feb70`: unresolved native address.
- `0x6c6bd5` `call` nach `0x6c8240`: Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0].
- `0x6c6bfc` `call` nach `0x7dd970`: Reloaded.TreeStateActivities.GameplayActivity.GetProjectileDefinition [0x6000ec4].
- `0x6c6c5e` `call` to `0x2040`: unresolved native address.
- `0x6c6ca5` `call` nach `0x7d9b50`: Reloaded.TreeStateActivities.GameplayActivity.AddTodParticle [0x6000f16].
- `0x6c6caf` `call` to `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c6cc6` `call` nach `0x6c8400`: Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98].
- `0x6c6ce5` `call` nach `0x6c6a60`: Reloaded.Gameplay.Projectile.CantHitHighGround [0x6001a9b].
- `0x6c6cfb` `call` nach `0x6c7710`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95].
- `0x6c6d21` `call` nach `0x677050`: Reloaded.Gameplay.Board.ZombieTryToGet [0x6001715].
- `0x6c6d3e` `call` nach `0x6f12f0`: Reloaded.Gameplay.Zombie.EffectedByDamage [0x6001cd7].
- `0x6c6d56` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c6d6e` `call` nach `0x6f2d70`: Reloaded.Gameplay.Zombie.GetZombieRect [0x6001cf0].
- `0x6c6db0` `call` to `0x4feeb0`: unresolved native address.
- `0x6c6dc2` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c6dfa` `call` nach `0x6c7710`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95].
- `0x6c6e0f` `call` to `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c6e1f` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]

requested

RVA `0x6c95f0`; End of range `0x6c9b50`; Document [replanted-0x6001a99.asm](replanted-0x6001a99.asm).

Caller:

- `0x6c9bc7` `call`: Reloaded.Gameplay.Projectile.UpdateMotion [0x6001a96] nach `0x6c95f0` (Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]).
- `0x6ca3e2` `call`: Reloaded.Gameplay.Projectile.Update [0x6001a91] nach `0x6c95f0` (Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]).

Goals:

- `0x6c9609` `call` to `0x4feb70`: unresolved native address.
- `0x6c9678` `call` to `0x66bd10`: Reloaded.Gameplay.Board.PixelToGridXKeepOnBoard [0x60016f0].
- `0x6c9696` `call` nach `0x65f630`: Reloaded.Gameplay.Board.GridToPixelY [0x60016ee].
- `0x6c96eb` `call` nach `0x7e3010`: Reloaded.TreeStateActivities.GameplayActivity.get_GameMode [0x6000ea6].
- `0x6c9857` `call` nach `0x6c8400`: Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98].
- `0x6c9866` `call` nach `0x6c8240`: Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0].
- `0x6c98b4` `call` nach `0x6c7710`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95].
- `0x6c98d8` `call` nach `0x65e2b0`: Reloaded.Gameplay.Board.GetLiveGargantuarCount [0x60016c6].
- `0x6c992e` `call` nach `0x664c70`: Reloaded.Gameplay.Board.KillAllZombiesInRadius [0x6001762].
- `0x6c9942` `call` nach `0x65e2b0`: Reloaded.Gameplay.Board.GetLiveGargantuarCount [0x60016c6].
- `0x6c9988` `call` nach `0x65f560`: Reloaded.Gameplay.Board.GrantAchievement [0x60017ba].
- `0x6c99ae` `call` nach `0x65d760`: Reloaded.Gameplay.Board.FindUmbrellaPlant [0x600174c].
- `0x6c99d5` `call` nach `0x7dd970`: Reloaded.TreeStateActivities.GameplayActivity.GetProjectileDefinition [0x6000ec4].
- `0x6c9a37` `call` to `0x2040`: unresolved native address.
- `0x6c9a50` `jmp` to `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c9a97` `call` to `0x2040`: unresolved native address.
- `0x6c9ab0` `jmp` nach `0x6ad780`: Reloaded.Gameplay.Plant.DoSpecial [0x6001a15].
- `0x6c9ad9` `call` to `0x2040`: unresolved native address.
- `0x6c9b1b` `call` nach `0x7d9b50`: Reloaded.TreeStateActivities.GameplayActivity.AddTodParticle [0x6000f16].
- `0x6c9b34` `jmp` to `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- Another 2 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedController.Die [0x6000c90]

lifecycle/target candidate

RVA `0x7c9970`; End of range `0x7c9af0`; Document [replanted-0x6000c90.asm](replanted-0x6000c90.asm).

Caller:

- `0x67e1a5` `call`: Reloaded.Gameplay.Challenge.DrawArtChallenge [0x6001812] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6971eb` `call`: Reloaded.Gameplay.Coin.Deserialize [0x60018ca] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x697415` `call`: Reloaded.Gameplay.Coin.Die [0x60018ae] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69aca1` `call`: Reloaded.Gameplay.CursorObject.Die [0x60018e0] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69ce5c` `call`: Reloaded.Gameplay.CursorObject.set_CursorType [0x60018d2] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d092` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d0ec` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d133` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d173` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ad091` `call`: Reloaded.Gameplay.Plant.Die [0x6001a18] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c064e` `call`: Reloaded.Gameplay.GamepadCursor.Die [0x6001af5] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c23fd` `call`: Reloaded.Gameplay.GridItem.GridItemDie [0x60019c3] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c3781` `jmp`: Reloaded.Gameplay.LawnMower.Die [0x60019e0] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c7077` `call`: Reloaded.Gameplay.Projectile.ConvertToFireball [0x6001aa1] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c7283` `call`: Reloaded.Gameplay.Projectile.ConvertToPea [0x6001aa2] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c76da` `call`: Reloaded.Gameplay.Projectile.Die [0x6001a94] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ca70c` `call`: Reloaded.Gameplay.Reanimation.Deserialize [0x6001ad8] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ca984` `call`: Reloaded.Gameplay.Reanimation.ReanimationDie [0x6001ab5] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ebf5b` `call`: Reloaded.Gameplay.Zombie.DieDeserialize [0x6001ccb] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ec269` `call`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca] to `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- Another 7 entries completely in native-analysis.json.

Goals:

- `0x7c998d` `call` to `0x4feb70`: unresolved native address.
- `0x7c9999` `call` to `0x4feb70`: unresolved native address.
- `0x7c99bc` `call` to `0x4feeb0`: unresolved native address.
- `0x7c99ce` `call` to `0x3832900`: unresolved native address.
- `0x7c99eb` `call` to `0x7c9970`: Source.Controllers.ReloadedController.Die [0x6000c90].
- `0x7c9a00` `call` to `0x4fdea0`: unresolved native address.
- `0x7c9a32` `call` to `0x38158a0`: unresolved native address.
- `0x7c9a4a` `call` to `0x4feeb0`: unresolved native address.
- `0x7c9a63` `jmp` to `0x382f800`: unresolved native address.
- `0x7c9aac` `call` to `0x4fbc00`: unresolved native address.
- `0x7c9aea` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7c9a2b`: `call rax`; Target open.
- `0x7c9acd`: `jmp r9`; Target open.

## Source.Controllers.ReloadedController.Reset [0x6000cae]

lifecycle/target candidate

RVA `0x7ca5b0`; End of range `0x7ca6f0`; Document [replanted-0x6000cae.asm](replanted-0x6000cae.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7ca5c9` `call` to `0x4fdea0`: unresolved native address.
- `0x7ca612` `call` to `0x4feb70`: unresolved native address.
- `0x7ca63f` `call` to `0x336c2a0`: unresolved native address.
- `0x7ca67f` `call` to `0x4feb70`: unresolved native address.

Indirect calls and jumps:

- `0x7ca6e7`: `jmp rax`; Target open.

## Source.Controllers.ReloadedController.Serialize [0x6000cb0]

lifecycle/target candidate

RVA `0x7ca6f0`; End of range `0x7cab40`; Document [replanted-0x6000cb0.asm](replanted-0x6000cb0.asm).

Caller:

- `0x7a9c1d` `call`: Source.Controllers.CoinController.Serialize [0x6000ad0] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7aae1c` `call`: Source.Controllers.CursorController.Serialize [0x6000b08] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7ac2d3` `call`: Source.Controllers.EffectController.Serialize [0x6000b26] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7b81d3` `call`: Source.Controllers.PreviewController.Serialize [0x6000be5] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7c6455` `call`: Source.Controllers.ProjectileController.Serialize [0x6000c01] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7c85b1` `call`: Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).

Goals:

- `0x7ca738` `call` to `0x4feb70`: unresolved native address.
- `0x7ca744` `call` to `0x4feb70`: unresolved native address.
- `0x7ca75b` `call` to `0x60dae0`: unresolved native address.
- `0x7ca788` `call` to `0x4feb70`: unresolved native address.
- `0x7ca794` `call` to `0x4feb70`: unresolved native address.
- `0x7ca7b2` `call` to `0x2c05bf0`: unresolved native address.
- `0x7ca7d6` `call` to `0x4fc300`: unresolved native address.
- `0x7ca7f6` `call` to `0x4feb70`: unresolved native address.
- `0x7ca802` `call` to `0x4feb70`: unresolved native address.
- `0x7ca81a` `call` to `0x2c05bc0`: unresolved native address.
- `0x7ca836` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x7ca86e` `call` to `0x6e4b60`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0x1c0.
- `0x7ca87f` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7ca8a1` `call` to `0x60dbf0`: unresolved native address.
- `0x7ca8c3` `call` to `0x60dbf0`: unresolved native address.
- `0x7ca8e6` `call` to `0x6e4b60`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0x1c0.
- `0x7ca8f9` `call` to `0x60dae0`: unresolved native address.
- `0x7ca90a` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7ca926` `call` to `0x4feeb0`: unresolved native address.
- `0x7ca933` `call` to `0x3832900`: unresolved native address.
- Another 20 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedController.Deserialize [0x6000cb1]

lifecycle/target candidate

RVA `0x7c9600`; End of range `0x7c9970`; Document [replanted-0x6000cb1.asm](replanted-0x6000cb1.asm).

Caller:

- `0x7a96bc` `call`: Source.Controllers.CoinController.Deserialize [0x6000ad1] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7aa75e` `call`: Source.Controllers.CursorController.Deserialize [0x6000b09] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7ab9a0` `call`: Source.Controllers.EffectController.Deserialize [0x6000b27] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7b7cb3` `call`: Source.Controllers.PreviewController.Deserialize [0x6000be6] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7c607b` `call`: Source.Controllers.ProjectileController.Deserialize [0x6000c02] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7c75a0` `call`: Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).

Goals:

- `0x7c9638` `call` to `0x4feb70`: unresolved native address.
- `0x7c964e` `call` to `0x60d8c0`: unresolved native address.
- `0x7c9663` `call` to `0x4feb70`: unresolved native address.
- `0x7c966f` `call` to `0x4feb70`: unresolved native address.
- `0x7c968e` `call` to `0x2c05bf0`: unresolved native address.
- `0x7c96b1` `call` to `0x4fc300`: unresolved native address.
- `0x7c96d0` `call` to `0x4feb70`: unresolved native address.
- `0x7c96dc` `call` to `0x4feb70`: unresolved native address.
- `0x7c96f4` `call` to `0x2c05bc0`: unresolved native address.
- `0x7c970d` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x7c9748` `call` to `0x6e4a40`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0xa0.
- `0x7c975a` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x7c9769` `call` to `0x60d9d0`: unresolved native address.
- `0x7c9778` `call` to `0x60d9d0`: unresolved native address.
- `0x7c978a` `call` to `0x6e4a40`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0xa0.
- `0x7c979c` `call` to `0x60d8c0`: unresolved native address.
- `0x7c97b2` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x7c97ce` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x7c97fd` `call` to `0x4feb70`: unresolved native address.
- `0x7c9813` `call` to `0x60d9d0`: unresolved native address.
- Another 15 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedController.PostDeserialize [0x6000cb2]

lifecycle/target candidate

RVA `0x60f880`; End of range `0x60f890`; Document [replanted-0x6000cb2.asm](replanted-0x6000cb2.asm).

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

## Source.Controllers.ReloadedController..ctor [0x6000cb3]

lifecycle/target candidate

RVA `0x7cb580`; End of range `0x7cb620`; Document [replanted-0x6000cb3.asm](replanted-0x6000cb3.asm).

Caller:

- `0x7a8151` `jmp`: Source.Controllers.BoardViewController..ctor [0x6000aa9] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7aa4fb` `jmp`: Source.Controllers.CoinController..ctor [0x6000ad2] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7ab4b6` `jmp`: Source.Controllers.CursorController..ctor [0x6000b0a] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7acc6b` `jmp`: Source.Controllers.EffectController..ctor [0x6000b28] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7aff80` `jmp`: Source.Controllers.GamepadCursorController..ctor [0x6000b67] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7b3852` `jmp`: Source.Controllers.GridPlacementPreviewController..ctor [0x6000b83] / Source.Controllers.ProjectileController..ctor [0x6000c03] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7b8a72` `jmp`: Source.Controllers.PreviewController..ctor [0x6000be7] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7c71da` `jmp`: Source.Controllers.ReanimationController..ctor [0x6000c19] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7c8afc` `jmp`: Source.Controllers.ReloadedCharacterController..ctor [0x6000c63] / Source.Controllers.ZombieBobsledController..ctor [0x6000ced] / Source.Controllers.ZombieController..ctor [0x6000d0c] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7d063d` `jmp`: Source.Controllers.ZombieBungeeController..ctor [0x6000cf6] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).
- `0x7d2186` `jmp`: Source.Controllers.ZombieDiscoController..ctor [0x6000d15] nach `0x7cb580` (Source.Controllers.ReloadedController..ctor [0x6000cb3]).

Goals:

- `0x7cb59d` `call` to `0x4feb70`: unresolved native address.
- `0x7cb5a9` `call` to `0x4feb70`: unresolved native address.
- `0x7cb5da` `call` to `0x4fedd0`: unresolved native address.
- `0x7cb5ec` `call` to `0x1812a50`: unresolved native address.
- `0x7cb602` `call` to `0x4fdea0`: unresolved native address.
- `0x7cb616` `jmp` to `0x38148f0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]

lifecycle/target candidate

RVA `0x6c8e60`; End of range `0x6c9280`; Document [replanted-0x6001a90.asm](replanted-0x6001a90.asm).

Caller:

- `0x655621` `call`: Reloaded.Gameplay.Board.AddProjectile [0x60016b7] nach `0x6c8e60` (Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]).
- `0x655709` `call`: Reloaded.Gameplay.Board.AddProjectile [0x60016b6] nach `0x6c8e60` (Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]).

Goals:

- `0x6c8e88` `call` to `0x4feb70`: unresolved native address.
- `0x6c8eb9` `call` nach `0x7dc700`: Reloaded.TreeStateActivities.GameplayActivity.CreateProjectileController [0x6000f3c].
- `0x6c8ecf` `call` to `0x4fdea0`: unresolved native address.
- `0x6c8ee9` `call` to `0x66bd10`: Reloaded.Gameplay.Board.PixelToGridXKeepOnBoard [0x60016f0].
- `0x6c8f45` `call` nach `0x65f630`: Reloaded.Gameplay.Board.GridToPixelY [0x60016ee].
- `0x6c9003` `call` nach `0x6719c0`: Reloaded.Gameplay.Board.StageHasRoof [0x6001767].
- `0x6c9123` `call` to `0x4feeb0`: unresolved native address.
- `0x6c913b` `call` to `0x6cbd40`: Reloaded.Gameplay.Common.RandRangeFloat [0x6001bde].
- `0x6c914f` `call` nach `0x6cbe80`: Reloaded.Gameplay.Common.Rand [0x6001bdf].
- `0x6c9180` `call` to `0x4feeb0`: unresolved native address.
- `0x6c918f` `call` nach `0x6cbf00`: Reloaded.Gameplay.Common.Rand [0x6001be0].
- `0x6c91d8` `call` to `0x4feeb0`: unresolved native address.
- `0x6c9215` `call` to `0x4feeb0`: unresolved native address.
- `0x6c922d` `call` to `0x6cbd40`: Reloaded.Gameplay.Common.RandRangeFloat [0x6001bde].
- `0x6c9265` `call` to `0x4fee20`: unresolved native address.
- `0x6c926b` `call` to `0x4fee10`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.Die [0x6001a94]

lifecycle/target candidate

RVA `0x6c7650`; End of range `0x6c7710`; Document [replanted-0x6001a94.asm](replanted-0x6001a94.asm).

Caller:

- `0x66dbce` `call`: Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6a04fe` `call`: Reloaded.Gameplay.CutScene.ClearUpsellBoard [0x600191d] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6aa7c5` `jmp`: Reloaded.Gameplay.Board/<>c.<Deserialize>b__459_10 [0x60017ec] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c6caf` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c6e0f` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c7cdf` `jmp`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c9a50` `jmp`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c9b34` `jmp`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).

Goals:

- `0x6c766d` `call` to `0x4feb70`: unresolved native address.
- `0x6c769a` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x6c76b6` `call` to `0x4feeb0`: unresolved native address.
- `0x6c76c3` `call` to `0x3832900`: unresolved native address.
- `0x6c76da` `call` to `0x7c9970`: Source.Controllers.ReloadedController.Die [0x6000c90].
- `0x6c76f3` `call` to `0x4fdea0`: unresolved native address.
- `0x6c7703` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]

lifecycle/target candidate

RVA `0x6c8400`; End of range `0x6c8640`; Document [replanted-0x6001a98.asm](replanted-0x6001a98.asm).

Caller:

- `0x6c6cc6` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c8400` (Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]).
- `0x6c9857` `call`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c8400` (Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]).

Goals:

- `0x6c841c` `call` to `0x4feb70`: unresolved native address.
- `0x6c8428` `call` to `0x4feb70`: unresolved native address.
- `0x6c8434` `call` to `0x4feb70`: unresolved native address.
- `0x6c8455` `call` nach `0x6c8a60`: Reloaded.Gameplay.Projectile.PeaAboutToHitTorchwood [0x6001aa6].
- `0x6c8495` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c8509` `call` to `0x2449330`: unresolved native address.
- `0x6c853d` `call` nach `0x6f12f0`: Reloaded.Gameplay.Zombie.EffectedByDamage [0x6001cd7].
- `0x6c858e` `call` nach `0x6f2d70`: Reloaded.Gameplay.Zombie.GetZombieRect [0x6001cf0].
- `0x6c85ab` `call` to `0x4feeb0`: unresolved native address.
- `0x6c85bd` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c862e` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]

lifecycle/target candidate

RVA `0x6c8240`; End of range `0x6c8400`; Document [replanted-0x6001aa0.asm](replanted-0x6001aa0.asm).

Caller:

- `0x6c6bd5` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c8240` (Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]).
- `0x6c9866` `call`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c8240` (Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]).

Goals:

- `0x6c825d` `call` to `0x4feb70`: unresolved native address.
- `0x6c8269` `call` to `0x4feb70`: unresolved native address.
- `0x6c8275` `call` to `0x4feb70`: unresolved native address.
- `0x6c82a1` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c82f9` `call` to `0x2449330`: unresolved native address.
- `0x6c834a` `call` nach `0x6b1a00`: Reloaded.Gameplay.Plant.GetPlantRect [0x6001a2a].
- `0x6c8367` `call` to `0x4feeb0`: unresolved native address.
- `0x6c8379` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c83bd` `call` to `0x65f2a0`: Reloaded.Gameplay.Board.GetTopPlantAt [0x60016fb].
- `0x6c83f7` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.Reset [0x6001aa7]

lifecycle/target candidate

RVA `0x6c9280`; End of range `0x6c9320`; Document [replanted-0x6001aa7.asm](replanted-0x6001aa7.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x6c928b` `call` nach `0x6ce570`: Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32].
- `0x6c930c` `jmp` to `0x4fdea0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.Projectile.Serialize [0x6001aa8]

lifecycle/target candidate

RVA `0x6c9320`; End of range `0x6c95f0`; Document [replanted-0x6001aa8.asm](replanted-0x6001aa8.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x6c934d` `call` to `0x4feb70`: unresolved native address.
- `0x6c9359` `call` to `0x4feb70`: unresolved native address.
- `0x6c9365` `call` to `0x4feb70`: unresolved native address.
- `0x6c9371` `call` to `0x4feb70`: unresolved native address.
- `0x6c9389` `call` nach `0x6ce5a0`: Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35].
- `0x6c9397` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93a5` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93b3` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93c3` `call` to `0x60dae0`: unresolved native address.
- `0x6c93d6` `call` to `0x60dae0`: unresolved native address.
- `0x6c93e9` `call` to `0x60dae0`: unresolved native address.
- `0x6c93fc` `call` to `0x60dae0`: unresolved native address.
- `0x6c940f` `call` to `0x60dae0`: unresolved native address.
- `0x6c9422` `call` to `0x60dae0`: unresolved native address.
- `0x6c9435` `call` to `0x60dae0`: unresolved native address.
- `0x6c9448` `call` to `0x60dae0`: unresolved native address.
- `0x6c945a` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6c946b` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c947c` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c948d` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- Another 16 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x6c95c6`: `call rax`; Target open.

## Reloaded.Gameplay.Projectile.Deserialize [0x6001aa9]

lifecycle/target candidate

RVA `0x6c7330`; End of range `0x6c7650`; Document [replanted-0x6001aa9.asm](replanted-0x6001aa9.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x6c735d` `call` to `0x4feb70`: unresolved native address.
- `0x6c7369` `call` to `0x4feb70`: unresolved native address.
- `0x6c7375` `call` to `0x4feb70`: unresolved native address.
- `0x6c738d` `call` nach `0x6ce400`: Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36].
- `0x6c739c` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73ab` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73ba` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73c9` `call` to `0x60d8c0`: unresolved native address.
- `0x6c73db` `call` to `0x60d8c0`: unresolved native address.
- `0x6c73ed` `call` to `0x60d8c0`: unresolved native address.
- `0x6c73ff` `call` to `0x60d8c0`: unresolved native address.
- `0x6c7411` `call` to `0x60d8c0`: unresolved native address.
- `0x6c7423` `call` to `0x60d8c0`: unresolved native address.
- `0x6c7435` `call` to `0x60d8c0`: unresolved native address.
- `0x6c7447` `call` to `0x60d8c0`: unresolved native address.
- `0x6c7459` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6c746b` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c7481` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c749f` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c74bb` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- Another 16 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x6c7630`: `call rax`; Target open.

## Reloaded.Gameplay.Projectile..ctor [0x6001aaa]

lifecycle/target candidate

RVA `0x6c50a0`; End of range `0x6c50b0`; Document [replanted-0x6001aaa.asm](replanted-0x6001aaa.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x6c50a2` `jmp` nach `0x6ce700`: Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e].

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]

lifecycle/target candidate

RVA `0x6ce700`; End of range `0x6ce740`; Document [replanted-0x6001b2e.asm](replanted-0x6001b2e.asm).

Caller:

- `0x678ac3` `call`: Reloaded.Gameplay.Board..ctor [0x60016a6] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x69a961` `jmp`: Reloaded.Gameplay.Coin..ctor [0x60018cb] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x69ca0e` `call`: Reloaded.Gameplay.CursorObject..ctor [0x60018dd] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x69e16d` `call`: Reloaded.Gameplay.CursorPreview..ctor [0x60018eb] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x6be37f` `call`: Reloaded.Gameplay.Plant..ctor [0x6001a0b] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x6c0ee9` `call`: Reloaded.Gameplay.GamepadCursor..ctor [0x6001af4] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x6c3391` `call`: Reloaded.Gameplay.GridItem..ctor [0x60019be] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x6c50a2` `jmp`: Reloaded.Gameplay.LawnMower..ctor [0x60019e9] / Reloaded.Gameplay.Projectile..ctor [0x6001aaa] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x6cad9f` `call`: Reloaded.Gameplay.Reanimation..ctor [0x6001ab1] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x70a5cd` `call`: Reloaded.Gameplay.Zombie..ctor [0x6001cc0] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x790e0d` `call`: Source.Debug.DebugCrazyDave.Awake [0x60009e8] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).
- `0x7f4800` `call`: Reloaded.Services.CrazyDaveService..ctor [0x6001071] nach `0x6ce700` (Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]).

Goals:

- `0x6ce719` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]

lifecycle/target candidate

RVA `0x6ce570`; End of range `0x6ce5a0`; Document [replanted-0x6001b32.asm](replanted-0x6001b32.asm).

Caller:

- `0x699023` `call`: Reloaded.Gameplay.Coin.Reset [0x60018c8] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6b4f5f` `call`: Reloaded.Gameplay.Plant.Reset [0x6001a78] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c2749` `call`: Reloaded.Gameplay.GridItem.Reset [0x60019d6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c43ef` `call`: Reloaded.Gameplay.LawnMower.Reset [0x60019e6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c928b` `call`: Reloaded.Gameplay.Projectile.Reset [0x6001aa7] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6ca9cf` `call`: Reloaded.Gameplay.Reanimation.Reset [0x6001ad6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6f5d9f` `call`: Reloaded.Gameplay.Zombie.Reset [0x6001da0] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).

Goals:

- No direct external targets found.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]

lifecycle/target candidate

RVA `0x6ce5a0`; End of range `0x6ce700`; Document [replanted-0x6001b35.asm](replanted-0x6001b35.asm).

Caller:

- `0x699379` `call`: Reloaded.Gameplay.Coin.Serialize [0x60018c9] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x69ad28` `call`: Reloaded.Gameplay.CursorObject.Serialize [0x60018e8] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x69cf23` `call`: Reloaded.Gameplay.CursorPreview.Serialize [0x60018ef] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6b513a` `call`: Reloaded.Gameplay.Plant.Serialize [0x6001a79] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6c28a0` `call`: Reloaded.Gameplay.GridItem.Serialize [0x60019d7] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6c4498` `call`: Reloaded.Gameplay.LawnMower.Serialize [0x60019e7] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6c9389` `call`: Reloaded.Gameplay.Projectile.Serialize [0x6001aa8] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6caaac` `call`: Reloaded.Gameplay.Reanimation.Serialize [0x6001ad7] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6cf046` `call`: Reloaded.Gameplay.SeedBank.Serialize [0x6001b4e] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6d6583` `call`: Reloaded.Gameplay.SeedPacket.Serialize [0x6001bc0] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).
- `0x6f6456` `call`: Reloaded.Gameplay.Zombie.Serialize [0x6001da1] nach `0x6ce5a0` (Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]).

Goals:

- `0x6ce5c0` `call` to `0x4feb70`: unresolved native address.
- `0x6ce5d7` `call` to `0x60dae0`: unresolved native address.
- `0x6ce5e7` `call` to `0x60dae0`: unresolved native address.
- `0x6ce5f5` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce603` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce612` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6ce620` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce62e` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce63d` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6ce64d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce65d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce66d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce67d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce68d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce69d` `call` to `0x60dae0`: unresolved native address.
- `0x6ce6ab` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6b9` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6c7` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6d7` `call` to `0x60dae0`: unresolved native address.
- `0x6ce6f1` `jmp` to `0x60dae0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]

lifecycle/target candidate

RVA `0x6ce400`; End of range `0x6ce570`; Document [replanted-0x6001b36.asm](replanted-0x6001b36.asm).

Caller:

- `0x696f03` `call`: Reloaded.Gameplay.Coin.Deserialize [0x60018ca] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x69aa72` `call`: Reloaded.Gameplay.CursorObject.Deserialize [0x60018e9] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x69cec3` `call`: Reloaded.Gameplay.CursorPreview.Deserialize [0x60018f0] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6ac63d` `call`: Reloaded.Gameplay.Plant.Deserialize [0x6001a7a] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6c14f1` `call`: Reloaded.Gameplay.GridItem.Deserialize [0x60019d8] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6c34d9` `call`: Reloaded.Gameplay.LawnMower.Deserialize [0x60019e8] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6c738d` `call`: Reloaded.Gameplay.Projectile.Deserialize [0x6001aa9] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6ca5ad` `call`: Reloaded.Gameplay.Reanimation.Deserialize [0x6001ad8] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6ceab4` `call`: Reloaded.Gameplay.SeedBank.Deserialize [0x6001b4f] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6d5c67` `call`: Reloaded.Gameplay.SeedPacket.Deserialize [0x6001bc1] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).
- `0x6eaed8` `call`: Reloaded.Gameplay.Zombie.Deserialize [0x6001da2] nach `0x6ce400` (Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]).

Goals:

- `0x6ce420` `call` to `0x4feb70`: unresolved native address.
- `0x6ce436` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce445` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce454` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce463` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce472` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6ce481` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce490` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce49f` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6ce4ae` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce4bd` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce4cc` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce4db` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce4ea` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce4f9` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce508` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce520` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce536` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce545` `call` to `0x60d8c0`: unresolved native address.
- `0x6ce55e` `jmp` to `0x60d8c0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Gameplay.ReloadedObject.PostDeserialize [0x6001b37]

lifecycle/target candidate

RVA `0x60f880`; End of range `0x60f890`; Document [replanted-0x6001b37.asm](replanted-0x6001b37.asm).

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

## Technical handover

1. Trace the relevant callers and targets to the actual state writer. Choose more methods with `--method`.
2. Check targeting rules: ranks, distance, flight status, friend/enemy, death and terrain on the specific branches.
3. Documents per field object type, initialization, writer, serialize/deserialize, reset and pool reuse.
4. Check board change, dataID, pause, abort, death and cleanup. Document unsaved states.
5. Add technical results in a separate port-notes.md; this report will be replaced when it is called up again.
