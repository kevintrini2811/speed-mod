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

## Source.Controllers.ProjectileController.Update [0x6000bfe]

requested

RVA `0x7c64e0`; End of range `0x7c65c0`; Document [replanted-0x6000bfe.asm](replanted-0x6000bfe.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7c64fd` `call` to `0x4feb70`: unresolved native address.
- `0x7c650e` `call` to `0x7cb4b0`: Source.Controllers.ReloadedController.Update [0x6000c88].
- `0x7c6527` `call` to `0x4feeb0`: unresolved native address.
- `0x7c6534` `call` to `0x3832900`: unresolved native address.
- `0x7c6587` `call` to `0x3824170`: unresolved native address.
- `0x7c65a4` `call` to `0x38491f0`: unresolved native address.
- `0x7c65b4` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]

requested

RVA `0x7c8a50`; End of range `0x7c8af0`; Document [replanted-0x6000c25.asm](replanted-0x6000c25.asm).

Caller:

- `0x6b9b85` `call`: Reloaded.Gameplay.Plant.UpdateInternal [0x6001a11] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x6be2a6` `call`: Reloaded.Gameplay.Plant.Update [0x6001a10] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x6c3316` `call`: Reloaded.Gameplay.GridItem.Update [0x60019c8] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x6cad74` `call`: Reloaded.Gameplay.Reanimation.Update [0x6001ab6] to `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x6fc82f` `call`: Reloaded.Gameplay.Zombie.UpdateBoss [0x6001d62] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x6fe4e8` `call`: Reloaded.Gameplay.Zombie.UpdateDeath [0x6001d19] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).
- `0x70681f` `call`: Reloaded.Gameplay.Zombie.Update [0x6001cc9] nach `0x7c8a50` (Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25]).

Goals:

- `0x7c8a69` `call` to `0x4feb70`: unresolved native address.
- `0x7c8aa7` `call` to `0x4feeb0`: unresolved native address.
- `0x7c8ad2` `jmp` nach `0x726cb0`: Reloaded.Characters.CharacterAnimationController.UpdateAnimation [0x6002040].
- `0x7c8add` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.UpdateAnimation [0x6002040]

requested

RVA `0x726cb0`; End of range `0x726cd0`; Document [replanted-0x6002040.asm](replanted-0x6002040.asm).

Caller:

- `0x7c8ad2` `jmp`: Source.Controllers.ReloadedCharacterController.UpdateAnim [0x6000c25] nach `0x726cb0` (Reloaded.Characters.CharacterAnimationController.UpdateAnimation [0x6002040]).
- `0x7ce6c5` `call`: Source.Controllers.TreeOfWisdomController.GrowTo [0x6000cd7] nach `0x726cb0` (Reloaded.Characters.CharacterAnimationController.UpdateAnimation [0x6002040]).

Goals:

- `0x726cbc` `call` nach `0x726ec0`: Reloaded.Characters.CharacterAnimationController.UpdateSkeletonAnimation [0x6002041].
- `0x726ccb` `jmp` nach `0x726cd0`: Reloaded.Characters.CharacterAnimationController.UpdateAttachments [0x600205e].

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.UpdateSkeletonAnimation [0x6002041]

requested

RVA `0x726ec0`; End of range `0x726fc0`; Document [replanted-0x6002041.asm](replanted-0x6002041.asm).

Caller:

- `0x724f2b` `call`: Reloaded.Characters.CharacterAnimationController.PlayAnimation [0x6002051] nach `0x726ec0` (Reloaded.Characters.CharacterAnimationController.UpdateSkeletonAnimation [0x6002041]).
- `0x726cbc` `call`: Reloaded.Characters.CharacterAnimationController.UpdateAnimation [0x6002040] nach `0x726ec0` (Reloaded.Characters.CharacterAnimationController.UpdateSkeletonAnimation [0x6002041]).

Goals:

- `0x726ee1` `call` to `0x4feb70`: unresolved native address.
- `0x726ef2` `call` nach `0x722320`: Reloaded.Characters.CharacterAnimationController.CalculateGroundT [0x600204e].
- `0x726f12` `call` to `0x4feeb0`: unresolved native address.
- `0x726f5d` `call` to `0x2f6d740`: unresolved native address.
- `0x726f85` `call` to `0x4feeb0`: unresolved native address.
- `0x726fb8` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.ApplyAnimation [0x6002042]

requested

RVA `0x721db0`; End of range `0x721e30`; Document [replanted-0x6002042.asm](replanted-0x6002042.asm).

Caller:

- `0x7c8548` `jmp`: Source.Controllers.ReloadedCharacterController.PostGameplayUpdate [0x6000c23] nach `0x721db0` (Reloaded.Characters.CharacterAnimationController.ApplyAnimation [0x6002042]).

Goals:

- `0x721dc9` `call` to `0x4feb70`: unresolved native address.
- `0x721de8` `call` to `0x4feeb0`: unresolved native address.
- `0x721e28` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x721e1f`: `jmp rax`; Target open.

## Source.Controllers.ProjectileController.Serialize [0x6000c01]

lifecycle/target candidate

RVA `0x7c6410`; End of range `0x7c64e0`; Document [replanted-0x6000c01.asm](replanted-0x6000c01.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7c643d` `call` to `0x4feb70`: unresolved native address.
- `0x7c6455` `call` to `0x7ca6f0`: Source.Controllers.ReloadedController.Serialize [0x6000cb0].
- `0x7c6471` `call` to `0x4feeb0`: unresolved native address.
- `0x7c647e` `call` to `0x3832900`: unresolved native address.
- `0x7c648f` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x7c64d2` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7c64bb`: `call rax`; Target open.

## Source.Controllers.ProjectileController.Deserialize [0x6000c02]

lifecycle/target candidate

RVA `0x7c6060`; End of range `0x7c60e0`; Document [replanted-0x6000c02.asm](replanted-0x6000c02.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7c607b` `call` to `0x7c9600`: Source.Controllers.ReloadedController.Deserialize [0x6000cb1].
- `0x7c6090` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x7c60d1` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- `0x7c60bf`: `call rax`; Target open.

## Source.Controllers.ProjectileController..ctor [0x6000c03]

lifecycle/target candidate

RVA `0x7b3850`; End of range `0x7b3860`; Document [replanted-0x6000c03.asm](replanted-0x6000c03.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7b3852` `jmp` to `0x7cb580`: Source.Controllers.ReloadedController..ctor [0x6000cb3].

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60]

lifecycle/target candidate

RVA `0x7c8560`; End of range `0x7c8640`; Document [replanted-0x6000c60.asm](replanted-0x6000c60.asm).

Caller:

- `0x7b2807` `call`: Source.Controllers.GridItemController.Serialize [0x6000b7c] nach `0x7c8560` (Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60]).
- `0x7b74e0` `call`: Source.Controllers.PlantController.Serialize [0x6000bc6] nach `0x7c8560` (Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60]).
- `0x7c6ae3` `call`: Source.Controllers.ReanimationController.Serialize [0x6000c17] nach `0x7c8560` (Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60]).
- `0x7d1983` `call`: Source.Controllers.ZombieController.Serialize [0x6000d07] nach `0x7c8560` (Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60]).

Goals:

- `0x7c858d` `call` to `0x4feb70`: unresolved native address.
- `0x7c8599` `call` to `0x4feb70`: unresolved native address.
- `0x7c85b1` `call` to `0x7ca6f0`: Source.Controllers.ReloadedController.Serialize [0x6000cb0].
- `0x7c85c2` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7c85de` `call` to `0x4feeb0`: unresolved native address.
- `0x7c85eb` `call` to `0x3832900`: unresolved native address.
- `0x7c85fc` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x7c861a` `call` nach `0x7258d0`: Reloaded.Characters.CharacterAnimationController.Serialize [0x600206a].
- `0x7c8634` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61]

lifecycle/target candidate

RVA `0x7c7560`; End of range `0x7c7620`; Document [replanted-0x6000c61.asm](replanted-0x6000c61.asm).

Caller:

- `0x7b1f75` `call`: Source.Controllers.GridItemController.Deserialize [0x6000b7d] nach `0x7c7560` (Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61]).
- `0x7b6d73` `call`: Source.Controllers.PlantController.Deserialize [0x6000bc7] nach `0x7c7560` (Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61]).
- `0x7c66db` `call`: Source.Controllers.ReanimationController.Deserialize [0x6000c18] nach `0x7c7560` (Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61]).
- `0x7d0b63` `call`: Source.Controllers.ZombieController.Deserialize [0x6000d08] nach `0x7c7560` (Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61]).

Goals:

- `0x7c7588` `call` to `0x4feb70`: unresolved native address.
- `0x7c75a0` `call` to `0x7c9600`: Source.Controllers.ReloadedController.Deserialize [0x6000cb1].
- `0x7c75b8` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x7c75d7` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x7c75f8` `call` nach `0x722ab0`: Reloaded.Characters.CharacterAnimationController.Deserialize [0x600206b].
- `0x7c760d` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedCharacterController.PostDeserialize [0x6000c62]

lifecycle/target candidate

RVA `0x7c8450`; End of range `0x7c84d0`; Document [replanted-0x6000c62.asm](replanted-0x6000c62.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x7c846d` `call` to `0x4feb70`: unresolved native address.
- `0x7c8490` `call` to `0x4feeb0`: unresolved native address.
- `0x7c849d` `call` to `0x3832900`: unresolved native address.
- `0x7c84b4` `call` nach `0x724f50`: Reloaded.Characters.CharacterAnimationController.PostDeserialize [0x600206c].
- `0x7c84c4` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Source.Controllers.ReloadedCharacterController..ctor [0x6000c63]

lifecycle/target candidate

RVA `0x7c8af0`; End of range `0x7c8b10`; Document [replanted-0x6000c63.asm](replanted-0x6000c63.asm).

Caller:

- `0x7aa672` `jmp`: Source.Controllers.CrazyDaveController..ctor [0x6000aee] / Source.Controllers.GridItemController..ctor [0x6000b7e] / Source.Controllers.LawnMowerController..ctor [0x6000b94] / 1 weitere Aliase (JSON aliases[8038000]) nach `0x7c8af0` (Source.Controllers.ReloadedCharacterController..ctor [0x6000c63] / Source.Controllers.ZombieBobsledController..ctor [0x6000ced] / Source.Controllers.ZombieController..ctor [0x6000d0c]).

Goals:

- `0x7c8afc` `jmp` to `0x7cb580`: Source.Controllers.ReloadedController..ctor [0x6000cb3].

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

## Reloaded.Characters.CharacterAnimationController.get_TargetOffset [0x6002037]

lifecycle/target candidate

RVA `0x7272d0`; End of range `0x7272f0`; Document [replanted-0x6002037.asm](replanted-0x6002037.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- No direct external targets found.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.SerializeTargetBoneData [0x6002068]

lifecycle/target candidate

RVA `0x7256d0`; End of range `0x7258d0`; Document [replanted-0x6002068.asm](replanted-0x6002068.asm).

Caller:

- `0x725c7c` `call`: Reloaded.Characters.CharacterAnimationController.Serialize [0x600206a] nach `0x7256d0` (Reloaded.Characters.CharacterAnimationController.SerializeTargetBoneData [0x6002068]).

Goals:

- `0x7256ff` `call` to `0x4feb70`: unresolved native address.
- `0x72570b` `call` to `0x4feb70`: unresolved native address.
- `0x725717` `call` to `0x4feb70`: unresolved native address.
- `0x725723` `call` to `0x4feb70`: unresolved native address.
- `0x72572f` `call` to `0x4feb70`: unresolved native address.
- `0x725751` `call` to `0x63cd70`: GRPC.NET.PushPullStream.get_Position [0x6000857] / Source.Controllers.ReloadedCharacterController.GetFrameCount [0x6000c3b] / Source.Controllers.ReloadedCharacterController.FindTrackIndex [0x6000c5e] / 45 additional aliases (JSON aliases[6540656]).
- `0x72577c` `call` to `0x4feeb0`: unresolved native address.
- `0x725789` `call` to `0x3832900`: unresolved native address.
- `0x725810` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x72581e` `call` nach `0x63bf60`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x3a0.
- `0x72582b` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x725851` `jmp` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7258c0` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.DeserializeTargetBoneData [0x6002069]

lifecycle/target candidate

RVA `0x722a00`; End of range `0x722ab0`; Document [replanted-0x6002069.asm](replanted-0x6002069.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x722a20` `call` to `0x4feb70`: unresolved native address.
- `0x722a39` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x722a4b` `call` nach `0x63b810`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x790.
- `0x722a63` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x722a85` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x722a90` `call` nach `0x6be7d0`: Reloaded.Gameplay.DataID.op_Implicit [0x6001935] / Reloaded.Gameplay.DataID.op_Implicit [0x6001936] / Reloaded.Gameplay.DataID.op_Implicit [0x6001937] / 46 weitere Aliase (JSON aliases[7071696]).

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.Serialize [0x600206a]

lifecycle/target candidate

RVA `0x7258d0`; End of range `0x725e40`; Document [replanted-0x600206a.asm](replanted-0x600206a.asm).

Caller:

- `0x7c861a` `call`: Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60] nach `0x7258d0` (Reloaded.Characters.CharacterAnimationController.Serialize [0x600206a]).

Goals:

- `0x725907` `call` to `0x4feb70`: unresolved native address.
- `0x725913` `call` to `0x4feb70`: unresolved native address.
- `0x725939` `call` nach `0x6cb440`: range candidate: Reloaded.Gameplay.CutScene/<>c__DisplayClass97_0.<AdvanceCrazyDaveDialog>b__1 [0x600192f] + 0x180.
- `0x725949` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x725970` `call` to `0x4feb70`: unresolved native address.
- `0x72597c` `call` to `0x4feb70`: unresolved native address.
- `0x72599a` `call` to `0x2c05bf0`: unresolved native address.
- `0x7259be` `call` to `0x4fc300`: unresolved native address.
- `0x7259de` `call` to `0x4feb70`: unresolved native address.
- `0x7259ea` `call` to `0x4feb70`: unresolved native address.
- `0x725a02` `call` to `0x2c05bc0`: unresolved native address.
- `0x725a2e` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x725a4e` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x725a62` `call` to `0x60dae0`: unresolved native address.
- `0x725a70` `call` to `0x60dae0`: unresolved native address.
- `0x725a8e` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x725ac9` `call` to `0x1813b00`: unresolved native address.
- `0x725af8` `call` to `0x4feb70`: unresolved native address.
- `0x725b09` `call` to `0x2a21e30`: unresolved native address.
- `0x725b18` `call` to `0x2a496d0`: unresolved native address.
- Another 22 entries completely in native-analysis.json.

Indirect calls and jumps:

- `0x725b3d`: `call r9`; Target open.
- `0x725c34`: `call rax`; Target open.

## Reloaded.Characters.CharacterAnimationController.Deserialize [0x600206b]

lifecycle/target candidate

RVA `0x722ab0`; End of range `0x722fa0`; Document [replanted-0x600206b.asm](replanted-0x600206b.asm).

Caller:

- `0x7c75f8` `call`: Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61] nach `0x722ab0` (Reloaded.Characters.CharacterAnimationController.Deserialize [0x600206b]).

Goals:

- `0x722ae2` `call` to `0x4feb70`: unresolved native address.
- `0x722aee` `call` to `0x4feb70`: unresolved native address.
- `0x722afa` `call` to `0x4feb70`: unresolved native address.
- `0x722b06` `call` to `0x4feb70`: unresolved native address.
- `0x722b24` `call` nach `0x726380`: Reloaded.Characters.CharacterAnimationController.Start [0x600203f].
- `0x722b39` `call` to `0x4feb70`: unresolved native address.
- `0x722b45` `call` to `0x4feb70`: unresolved native address.
- `0x722b63` `call` to `0x2c05bf0`: unresolved native address.
- `0x722b82` `call` to `0x4fc300`: unresolved native address.
- `0x722ba0` `call` to `0x4feb70`: unresolved native address.
- `0x722bac` `call` to `0x4feb70`: unresolved native address.
- `0x722bc4` `call` to `0x2c05bc0`: unresolved native address.
- `0x722bdd` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x722c01` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x722c13` `call` to `0x6e4a40`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0xa0.
- `0x722c25` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x722c37` `call` to `0x60d8c0`: unresolved native address.
- `0x722c52` `call` to `0x60d8c0`: unresolved native address.
- `0x722c83` `call` to `0x2bf45a0`: unresolved native address.
- `0x722c96` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- Another 24 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.PostDeserialize [0x600206c]

lifecycle/target candidate

RVA `0x724f50`; End of range `0x7251b0`; Document [replanted-0x600206c.asm](replanted-0x600206c.asm).

Caller:

- `0x7c84b4` `call`: Source.Controllers.ReloadedCharacterController.PostDeserialize [0x6000c62] nach `0x724f50` (Reloaded.Characters.CharacterAnimationController.PostDeserialize [0x600206c]).

Goals:

- `0x724f69` `call` to `0x4feb70`: unresolved native address.
- `0x724f75` `call` to `0x4feb70`: unresolved native address.
- `0x724f81` `call` to `0x4feb70`: unresolved native address.
- `0x724f8d` `call` to `0x4feb70`: unresolved native address.
- `0x724f99` `call` to `0x4feb70`: unresolved native address.
- `0x724fc1` `call` to `0x1356df0`: unresolved native address.
- `0x724fd9` `call` to `0x4feeb0`: unresolved native address.
- `0x724fe6` `call` to `0x3832900`: unresolved native address.
- `0x725056` `call` to `0x2448850`: unresolved native address.
- `0x7250ad` `call` to `0x2448850`: unresolved native address.
- `0x7250fd` `call` to `0x2448850`: unresolved native address.
- `0x725116` `call` to `0x4fdea0`: unresolved native address.
- `0x72512f` `call` to `0x4feeb0`: unresolved native address.
- `0x72513c` `call` to `0x3832900`: unresolved native address.
- `0x725165` `call` to `0x2f923c0`: unresolved native address.
- `0x72517c` `call` to `0x2f3de30`: unresolved native address.
- `0x72518c` `call` to `0x4fdea0`: unresolved native address.
- `0x72519c` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController.Reset [0x6002071]

lifecycle/target candidate

RVA `0x7251b0`; End of range `0x7252c0`; Document [replanted-0x6002071.asm](replanted-0x6002071.asm).

Caller:

- `0x7c8011` `call`: Source.Controllers.ReloadedCharacterController.OnControllerReset [0x6000c5f] nach `0x7251b0` (Reloaded.Characters.CharacterAnimationController.Reset [0x6002071]).
- `0x7d0fb1` `call`: Source.Controllers.ZombieController.OnControllerReset [0x6000d06] after `0x7251b0` (Reloaded.Characters.CharacterAnimationController.Reset [0x6002071]).

Goals:

- `0x7251c9` `call` to `0x4feb70`: unresolved native address.
- `0x7251d5` `call` to `0x4feb70`: unresolved native address.
- `0x7251e6` `call` nach `0x722fa0`: Reloaded.Characters.CharacterAnimationController.DetachFromBone [0x6002063].
- `0x7251fa` `call` to `0x2f6dc60`: unresolved native address.
- `0x72520d` `call` to `0x2f20400`: unresolved native address.
- `0x725221` `call` to `0x2f923c0`: unresolved native address.
- `0x725234` `call` to `0x2f3f680`: unresolved native address.
- `0x72524c` `call` to `0x2466100`: unresolved native address.
- `0x725264` `call` to `0x2466100`: unresolved native address.
- `0x725277` `call` to `0x4fdea0`: unresolved native address.
- `0x7252b6` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Reloaded.Characters.CharacterAnimationController..ctor [0x6002072]

lifecycle/target candidate

RVA `0x727000`; End of range `0x7271d0`; Document [replanted-0x6002072.asm](replanted-0x6002072.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x72701d` `call` to `0x4feb70`: unresolved native address.
- `0x727029` `call` to `0x4feb70`: unresolved native address.
- `0x727035` `call` to `0x4feb70`: unresolved native address.
- `0x727041` `call` to `0x4feb70`: unresolved native address.
- `0x72704d` `call` to `0x4feb70`: unresolved native address.
- `0x727059` `call` to `0x4feb70`: unresolved native address.
- `0x727065` `call` to `0x4feb70`: unresolved native address.
- `0x727071` `call` to `0x4feb70`: unresolved native address.
- `0x72707d` `call` to `0x4feb70`: unresolved native address.
- `0x7270a6` `call` to `0x4fdea0`: unresolved native address.
- `0x7270b2` `call` to `0x4fedd0`: unresolved native address.
- `0x7270c4` `call` to `0x1812a50`: unresolved native address.
- `0x7270da` `call` to `0x4fdea0`: unresolved native address.
- `0x7270e6` `call` to `0x4fedd0`: unresolved native address.
- `0x7270f8` `call` to `0x1812a50`: unresolved native address.
- `0x72710e` `call` to `0x4fdea0`: unresolved native address.
- `0x727124` `call` to `0x4fedd0`: unresolved native address.
- `0x727136` `call` to `0x2532230`: unresolved native address.
- `0x72714c` `call` to `0x4fdea0`: unresolved native address.
- `0x727158` `call` to `0x4fedd0`: unresolved native address.
- Another 6 entries completely in native-analysis.json.

Indirect calls and jumps:

- None found in decoded area.

## Technical handover

1. Trace the relevant callers and targets to the actual state writer. Choose more methods with `--method`.
2. Check targeting rules: ranks, distance, flight status, friend/enemy, death and terrain on the specific branches.
3. Documents per field object type, initialization, writer, serialize/deserialize, reset and pool reuse.
4. Check board change, dataID, pause, abort, death and cleanup. Document unsaved states.
5. Add technical results in a separate port-notes.md; this report will be replaced when it is called up again.
