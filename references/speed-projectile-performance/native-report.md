# Native Verhaltensanalyse: Replanted

Dieser Bericht sammelt statische Belege. Er bestätigt kein Spielverhalten.

## Grenzen

- Aufrufer: direkte Aufrufe und externe Sprünge aus Assembly-CSharp-Methodenbereichen, einschließlich `jmp`.
- Bereiche enden am nächsten Methodenzeiger oder Sektionsende. Innere Adressen sind nur Zuordnungskandidaten.
- Bereiche können zusätzliche native Hilfsfunktionen enthalten; auch der angegebene Aufrufername ist dann nur ein Kandidat.
- Indirekte Aufrufe, native Funktionen außerhalb dieser Bereiche und eingebettete Kopien bleiben fachlich zu verfolgen.
- Aliasnamen teilen dieselbe Adresse. Automatische Ziel- und Lebenszyklusauswahl beruht auf Methodennamen.
- Die Anzeige begrenzt Aliasnamen auf drei und Listen pro Methode auf 20 Einträge. Das JSON enthält die vollständigen Listen.
- Feldbelege sind Offsetkandidaten ohne Nachweis des Objekttyps. `lea` belegt nur eine Adresse.
- Feldsuche umfasst Methoden des deklarierten Feldbesitzers. Fremde Schreiber und Registeralias müssen manuell geprüft werden.
- Fehlende Treffer beweisen weder unbenutzte Helfer noch freie Felder oder fehlende Speicherung.

## Abdeckung

5779 eindeutige Bereiche; 692 Methoden ohne analysierbaren Bereich.
18 Bereiche mit vorzeitigem Decoderende.

## Speicherung und Feldkandidaten

## Source.Controllers.ReloadedController.Update [0x6000c88]

requested

RVA `0x7cb4b0`; Bereichsende `0x7cb580`; Beleg [replanted-0x6000c88.asm](replanted-0x6000c88.asm).

Aufrufer:

- `0x7ab47b` `call`: Source.Controllers.CursorController.Update [0x6000afe] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7af276` `call`: Source.Controllers.GamepadCursorController.Update [0x6000b51] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7b11a5` `call`: Source.Controllers.GamepadCursorController._onMoveActionInProgress [0x6000b56] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7c650e` `call`: Source.Controllers.ProjectileController.Update [0x6000bfe] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7c701e` `call`: Source.Controllers.ReanimationController.Update [0x6000c0f] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7cbd2d` `call`: Source.Controllers.ScaryPotController.Update [0x6000cc3] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7ce2eb` `call`: Source.Controllers.StinkyController.Update [0x6000cd4] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).
- `0x7d1ceb` `call`: Source.Controllers.ZombieController.Update [0x6000cfd] nach `0x7cb4b0` (Source.Controllers.ReloadedController.Update [0x6000c88]).

Ziele:

- `0x7cb4e7` `call` nach `0x4feb70`: unresolved native address.
- `0x7cb4f3` `call` nach `0x4feb70`: unresolved native address.
- `0x7cb547` `call` nach `0x7cb3b0`: Source.Controllers.ReloadedController.UpdateSorting [0x6000c8c].
- `0x7cb568` `jmp` nach `0x7ccee0`: Source.Controllers.ShadowController.UpdateShadow [0x6000cca].
- `0x7cb573` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- `0x7cb4d5`: `call rax`; Ziel offen.
- `0x7cb537`: `call rax`; Ziel offen.

## Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]

requested

RVA `0x7cb020`; Bereichsende `0x7cb3b0`; Beleg [replanted-0x6000c89.asm](replanted-0x6000c89.asm).

Aufrufer:

- `0x7aa3de` `call`: Source.Controllers.CoinController.UpdatePosition [0x6000ac8] nach `0x7cb020` (Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]).
- `0x7c6fb8` `call`: Source.Controllers.ReanimationController.UpdatePosition [0x6000c11] nach `0x7cb020` (Source.Controllers.ReloadedController.UpdatePosition [0x6000c89]).

Ziele:

- `0x7cb040` `call` nach `0x4feb70`: unresolved native address.
- `0x7cb073` `call` nach `0x4feeb0`: unresolved native address.
- `0x7cb098` `call` nach `0x3832900`: unresolved native address.
- `0x7cb190` `call` nach `0x3849110`: unresolved native address.
- `0x7cb1dd` `call` nach `0x33c49a0`: unresolved native address.
- `0x7cb204` `call` nach `0x38492d0`: unresolved native address.
- `0x7cb2bd` `call` nach `0x3849110`: unresolved native address.
- `0x7cb2d0` `call` nach `0x7c9c60`: Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a].
- `0x7cb2f7` `call` nach `0x3849110`: unresolved native address.
- `0x7cb32a` `call` nach `0x33c49a0`: unresolved native address.
- `0x7cb37f` `call` nach `0x33c49a0`: unresolved native address.
- `0x7cb3a7` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- `0x7cb0c7`: `call rax`; Ziel offen.
- `0x7cb0fb`: `call rax`; Ziel offen.
- `0x7cb1ad`: `call rax`; Ziel offen.
- `0x7cb251`: `call rax`; Ziel offen.
- `0x7cb27c`: `call rax`; Ziel offen.
- `0x7cb34a`: `call rax`; Ziel offen.

## Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]

requested

RVA `0x7c9c60`; Bereichsende `0x7c9d10`; Beleg [replanted-0x6000c8a.asm](replanted-0x6000c8a.asm).

Aufrufer:

- `0x7c7c44` `call`: Source.Controllers.ReloadedCharacterController.GetTrackPosition [0x6000c42] nach `0x7c9c60` (Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]).
- `0x7cb2d0` `call`: Source.Controllers.ReloadedController.UpdatePosition [0x6000c89] nach `0x7c9c60` (Source.Controllers.ReloadedController.GetRenderOffset [0x6000c8a]).

Ziele:

- `0x7c9d09` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.Update [0x6001a91]

requested

RVA `0x6ca280`; Bereichsende `0x6ca4d0`; Beleg [replanted-0x6001a91.asm](replanted-0x6001a91.asm).

Aufrufer:

- `0x673721` `call`: Reloaded.Gameplay.Board.UpdateGameObjects [0x60016f3] nach `0x6ca280` (Reloaded.Gameplay.Projectile.Update [0x6001a91]).

Ziele:

- `0x6ca2cd` `call` nach `0x6a5b20`: Reloaded.Gameplay.CutScene.ShouldRunUpsellBoard [0x6001924].
- `0x6ca351` `call` nach `0x665070`: Reloaded.Gameplay.Board.MakeRenderOrder [0x6001737].
- `0x6ca3c5` `call` nach `0x65eb20`: Reloaded.Gameplay.Board.GetPosYBasedOnRow [0x6001747].
- `0x6ca3db` `call` nach `0x6c9c90`: Reloaded.Gameplay.Projectile.UpdateNormalMotion [0x6001a9f].
- `0x6ca3e2` `call` nach `0x6c95f0`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99].
- `0x6ca3ff` `call` nach `0x65eb20`: Reloaded.Gameplay.Board.GetPosYBasedOnRow [0x6001747].
- `0x6ca4ac` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x6ca4c1` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97]

requested, lifecycle/target candidate

RVA `0x6c6ac0`; Bereichsende `0x6c6e30`; Beleg [replanted-0x6001a97.asm](replanted-0x6001a97.asm).

Aufrufer:

- `0x6ca152` `call`: Reloaded.Gameplay.Projectile.UpdateNormalMotion [0x6001a9f] nach `0x6c6ac0` (Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97]).

Ziele:

- `0x6c6ad9` `call` nach `0x4feb70`: unresolved native address.
- `0x6c6ae5` `call` nach `0x4feb70`: unresolved native address.
- `0x6c6bd5` `call` nach `0x6c8240`: Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0].
- `0x6c6bfc` `call` nach `0x7dd970`: Reloaded.TreeStateActivities.GameplayActivity.GetProjectileDefinition [0x6000ec4].
- `0x6c6c5e` `call` nach `0x2040`: unresolved native address.
- `0x6c6ca5` `call` nach `0x7d9b50`: Reloaded.TreeStateActivities.GameplayActivity.AddTodParticle [0x6000f16].
- `0x6c6caf` `call` nach `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c6cc6` `call` nach `0x6c8400`: Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98].
- `0x6c6ce5` `call` nach `0x6c6a60`: Reloaded.Gameplay.Projectile.CantHitHighGround [0x6001a9b].
- `0x6c6cfb` `call` nach `0x6c7710`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95].
- `0x6c6d21` `call` nach `0x677050`: Reloaded.Gameplay.Board.ZombieTryToGet [0x6001715].
- `0x6c6d3e` `call` nach `0x6f12f0`: Reloaded.Gameplay.Zombie.EffectedByDamage [0x6001cd7].
- `0x6c6d56` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c6d6e` `call` nach `0x6f2d70`: Reloaded.Gameplay.Zombie.GetZombieRect [0x6001cf0].
- `0x6c6db0` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c6dc2` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c6dfa` `call` nach `0x6c7710`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95].
- `0x6c6e0f` `call` nach `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c6e1f` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]

requested

RVA `0x6c95f0`; Bereichsende `0x6c9b50`; Beleg [replanted-0x6001a99.asm](replanted-0x6001a99.asm).

Aufrufer:

- `0x6c9bc7` `call`: Reloaded.Gameplay.Projectile.UpdateMotion [0x6001a96] nach `0x6c95f0` (Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]).
- `0x6ca3e2` `call`: Reloaded.Gameplay.Projectile.Update [0x6001a91] nach `0x6c95f0` (Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99]).

Ziele:

- `0x6c9609` `call` nach `0x4feb70`: unresolved native address.
- `0x6c9678` `call` nach `0x66bd10`: Reloaded.Gameplay.Board.PixelToGridXKeepOnBoard [0x60016f0].
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
- `0x6c9a37` `call` nach `0x2040`: unresolved native address.
- `0x6c9a50` `jmp` nach `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- `0x6c9a97` `call` nach `0x2040`: unresolved native address.
- `0x6c9ab0` `jmp` nach `0x6ad780`: Reloaded.Gameplay.Plant.DoSpecial [0x6001a15].
- `0x6c9ad9` `call` nach `0x2040`: unresolved native address.
- `0x6c9b1b` `call` nach `0x7d9b50`: Reloaded.TreeStateActivities.GameplayActivity.AddTodParticle [0x6000f16].
- `0x6c9b34` `jmp` nach `0x6c7650`: Reloaded.Gameplay.Projectile.Die [0x6001a94].
- Weitere 2 Einträge vollständig in native-analysis.json.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Source.Controllers.ReloadedController.Die [0x6000c90]

lifecycle/target candidate

RVA `0x7c9970`; Bereichsende `0x7c9af0`; Beleg [replanted-0x6000c90.asm](replanted-0x6000c90.asm).

Aufrufer:

- `0x67e1a5` `call`: Reloaded.Gameplay.Challenge.DrawArtChallenge [0x6001812] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6971eb` `call`: Reloaded.Gameplay.Coin.Deserialize [0x60018ca] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x697415` `call`: Reloaded.Gameplay.Coin.Die [0x60018ae] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69aca1` `call`: Reloaded.Gameplay.CursorObject.Die [0x60018e0] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69ce5c` `call`: Reloaded.Gameplay.CursorObject.set_CursorType [0x60018d2] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d092` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d0ec` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d133` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x69d173` `call`: Reloaded.Gameplay.CursorPreview.UpdateCursorPreview [0x60018ed] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ad091` `call`: Reloaded.Gameplay.Plant.Die [0x6001a18] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c064e` `call`: Reloaded.Gameplay.GamepadCursor.Die [0x6001af5] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c23fd` `call`: Reloaded.Gameplay.GridItem.GridItemDie [0x60019c3] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c3781` `jmp`: Reloaded.Gameplay.LawnMower.Die [0x60019e0] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c7077` `call`: Reloaded.Gameplay.Projectile.ConvertToFireball [0x6001aa1] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c7283` `call`: Reloaded.Gameplay.Projectile.ConvertToPea [0x6001aa2] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6c76da` `call`: Reloaded.Gameplay.Projectile.Die [0x6001a94] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ca70c` `call`: Reloaded.Gameplay.Reanimation.Deserialize [0x6001ad8] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ca984` `call`: Reloaded.Gameplay.Reanimation.ReanimationDie [0x6001ab5] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ebf5b` `call`: Reloaded.Gameplay.Zombie.DieDeserialize [0x6001ccb] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- `0x6ec269` `call`: Reloaded.Gameplay.Zombie.DieNoLoot [0x6001cca] nach `0x7c9970` (Source.Controllers.ReloadedController.Die [0x6000c90]).
- Weitere 7 Einträge vollständig in native-analysis.json.

Ziele:

- `0x7c998d` `call` nach `0x4feb70`: unresolved native address.
- `0x7c9999` `call` nach `0x4feb70`: unresolved native address.
- `0x7c99bc` `call` nach `0x4feeb0`: unresolved native address.
- `0x7c99ce` `call` nach `0x3832900`: unresolved native address.
- `0x7c99eb` `call` nach `0x7c9970`: Source.Controllers.ReloadedController.Die [0x6000c90].
- `0x7c9a00` `call` nach `0x4fdea0`: unresolved native address.
- `0x7c9a32` `call` nach `0x38158a0`: unresolved native address.
- `0x7c9a4a` `call` nach `0x4feeb0`: unresolved native address.
- `0x7c9a63` `jmp` nach `0x382f800`: unresolved native address.
- `0x7c9aac` `call` nach `0x4fbc00`: unresolved native address.
- `0x7c9aea` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- `0x7c9a2b`: `call rax`; Ziel offen.
- `0x7c9acd`: `jmp r9`; Ziel offen.

## Source.Controllers.ReloadedController.Reset [0x6000cae]

lifecycle/target candidate

RVA `0x7ca5b0`; Bereichsende `0x7ca6f0`; Beleg [replanted-0x6000cae.asm](replanted-0x6000cae.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x7ca5c9` `call` nach `0x4fdea0`: unresolved native address.
- `0x7ca612` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca63f` `call` nach `0x336c2a0`: unresolved native address.
- `0x7ca67f` `call` nach `0x4feb70`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- `0x7ca6e7`: `jmp rax`; Ziel offen.

## Source.Controllers.ReloadedController.Serialize [0x6000cb0]

lifecycle/target candidate

RVA `0x7ca6f0`; Bereichsende `0x7cab40`; Beleg [replanted-0x6000cb0.asm](replanted-0x6000cb0.asm).

Aufrufer:

- `0x7a9c1d` `call`: Source.Controllers.CoinController.Serialize [0x6000ad0] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7aae1c` `call`: Source.Controllers.CursorController.Serialize [0x6000b08] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7ac2d3` `call`: Source.Controllers.EffectController.Serialize [0x6000b26] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7b81d3` `call`: Source.Controllers.PreviewController.Serialize [0x6000be5] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7c6455` `call`: Source.Controllers.ProjectileController.Serialize [0x6000c01] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).
- `0x7c85b1` `call`: Source.Controllers.ReloadedCharacterController.Serialize [0x6000c60] nach `0x7ca6f0` (Source.Controllers.ReloadedController.Serialize [0x6000cb0]).

Ziele:

- `0x7ca738` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca744` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca75b` `call` nach `0x60dae0`: unresolved native address.
- `0x7ca788` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca794` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca7b2` `call` nach `0x2c05bf0`: unresolved native address.
- `0x7ca7d6` `call` nach `0x4fc300`: unresolved native address.
- `0x7ca7f6` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca802` `call` nach `0x4feb70`: unresolved native address.
- `0x7ca81a` `call` nach `0x2c05bc0`: unresolved native address.
- `0x7ca836` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x7ca86e` `call` nach `0x6e4b60`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0x1c0.
- `0x7ca87f` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7ca8a1` `call` nach `0x60dbf0`: unresolved native address.
- `0x7ca8c3` `call` nach `0x60dbf0`: unresolved native address.
- `0x7ca8e6` `call` nach `0x6e4b60`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0x1c0.
- `0x7ca8f9` `call` nach `0x60dae0`: unresolved native address.
- `0x7ca90a` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x7ca926` `call` nach `0x4feeb0`: unresolved native address.
- `0x7ca933` `call` nach `0x3832900`: unresolved native address.
- Weitere 20 Einträge vollständig in native-analysis.json.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Source.Controllers.ReloadedController.Deserialize [0x6000cb1]

lifecycle/target candidate

RVA `0x7c9600`; Bereichsende `0x7c9970`; Beleg [replanted-0x6000cb1.asm](replanted-0x6000cb1.asm).

Aufrufer:

- `0x7a96bc` `call`: Source.Controllers.CoinController.Deserialize [0x6000ad1] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7aa75e` `call`: Source.Controllers.CursorController.Deserialize [0x6000b09] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7ab9a0` `call`: Source.Controllers.EffectController.Deserialize [0x6000b27] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7b7cb3` `call`: Source.Controllers.PreviewController.Deserialize [0x6000be6] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7c607b` `call`: Source.Controllers.ProjectileController.Deserialize [0x6000c02] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).
- `0x7c75a0` `call`: Source.Controllers.ReloadedCharacterController.Deserialize [0x6000c61] nach `0x7c9600` (Source.Controllers.ReloadedController.Deserialize [0x6000cb1]).

Ziele:

- `0x7c9638` `call` nach `0x4feb70`: unresolved native address.
- `0x7c964e` `call` nach `0x60d8c0`: unresolved native address.
- `0x7c9663` `call` nach `0x4feb70`: unresolved native address.
- `0x7c966f` `call` nach `0x4feb70`: unresolved native address.
- `0x7c968e` `call` nach `0x2c05bf0`: unresolved native address.
- `0x7c96b1` `call` nach `0x4fc300`: unresolved native address.
- `0x7c96d0` `call` nach `0x4feb70`: unresolved native address.
- `0x7c96dc` `call` nach `0x4feb70`: unresolved native address.
- `0x7c96f4` `call` nach `0x2c05bc0`: unresolved native address.
- `0x7c970d` `call` nach `0x721da0`: Source.Controllers.CursorRenderAsset.get_Sprite [0x6000af2] / Reloaded.Characters.CharacterTrackConfig.get_AnimationName [0x600202f] / Reloaded.Characters.CharacterAnimationConfig.get_Name [0x6002032] / 3 weitere Aliase (JSON aliases[7478688]).
- `0x7c9748` `call` nach `0x6e4a40`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0xa0.
- `0x7c975a` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x7c9769` `call` nach `0x60d9d0`: unresolved native address.
- `0x7c9778` `call` nach `0x60d9d0`: unresolved native address.
- `0x7c978a` `call` nach `0x6e4a40`: range candidate: Reloaded.Gameplay.ZenGarden.get_HasQueuedPlantToSell [0x6001c53] + 0xa0.
- `0x7c979c` `call` nach `0x60d8c0`: unresolved native address.
- `0x7c97b2` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x7c97ce` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x7c97fd` `call` nach `0x4feb70`: unresolved native address.
- `0x7c9813` `call` nach `0x60d9d0`: unresolved native address.
- Weitere 15 Einträge vollständig in native-analysis.json.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Source.Controllers.ReloadedController.PostDeserialize [0x6000cb2]

lifecycle/target candidate

RVA `0x60f880`; Bereichsende `0x60f890`; Beleg [replanted-0x6000cb2.asm](replanted-0x6000cb2.asm).

Aufrufer:

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
- Weitere 723 Einträge vollständig in native-analysis.json.

Ziele:

- Keine direkten externen Ziele gefunden.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Source.Controllers.ReloadedController..ctor [0x6000cb3]

lifecycle/target candidate

RVA `0x7cb580`; Bereichsende `0x7cb620`; Beleg [replanted-0x6000cb3.asm](replanted-0x6000cb3.asm).

Aufrufer:

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

Ziele:

- `0x7cb59d` `call` nach `0x4feb70`: unresolved native address.
- `0x7cb5a9` `call` nach `0x4feb70`: unresolved native address.
- `0x7cb5da` `call` nach `0x4fedd0`: unresolved native address.
- `0x7cb5ec` `call` nach `0x1812a50`: unresolved native address.
- `0x7cb602` `call` nach `0x4fdea0`: unresolved native address.
- `0x7cb616` `jmp` nach `0x38148f0`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]

lifecycle/target candidate

RVA `0x6c8e60`; Bereichsende `0x6c9280`; Beleg [replanted-0x6001a90.asm](replanted-0x6001a90.asm).

Aufrufer:

- `0x655621` `call`: Reloaded.Gameplay.Board.AddProjectile [0x60016b7] nach `0x6c8e60` (Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]).
- `0x655709` `call`: Reloaded.Gameplay.Board.AddProjectile [0x60016b6] nach `0x6c8e60` (Reloaded.Gameplay.Projectile.ProjectileInitialize [0x6001a90]).

Ziele:

- `0x6c8e88` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8eb9` `call` nach `0x7dc700`: Reloaded.TreeStateActivities.GameplayActivity.CreateProjectileController [0x6000f3c].
- `0x6c8ecf` `call` nach `0x4fdea0`: unresolved native address.
- `0x6c8ee9` `call` nach `0x66bd10`: Reloaded.Gameplay.Board.PixelToGridXKeepOnBoard [0x60016f0].
- `0x6c8f45` `call` nach `0x65f630`: Reloaded.Gameplay.Board.GridToPixelY [0x60016ee].
- `0x6c9003` `call` nach `0x6719c0`: Reloaded.Gameplay.Board.StageHasRoof [0x6001767].
- `0x6c9123` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c913b` `call` nach `0x6cbd40`: Reloaded.Gameplay.Common.RandRangeFloat [0x6001bde].
- `0x6c914f` `call` nach `0x6cbe80`: Reloaded.Gameplay.Common.Rand [0x6001bdf].
- `0x6c9180` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c918f` `call` nach `0x6cbf00`: Reloaded.Gameplay.Common.Rand [0x6001be0].
- `0x6c91d8` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c9215` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c922d` `call` nach `0x6cbd40`: Reloaded.Gameplay.Common.RandRangeFloat [0x6001bde].
- `0x6c9265` `call` nach `0x4fee20`: unresolved native address.
- `0x6c926b` `call` nach `0x4fee10`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.Die [0x6001a94]

lifecycle/target candidate

RVA `0x6c7650`; Bereichsende `0x6c7710`; Beleg [replanted-0x6001a94.asm](replanted-0x6001a94.asm).

Aufrufer:

- `0x66dbce` `call`: Reloaded.Gameplay.Board.RemoveAllProjectiles [0x60016c3] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6a04fe` `call`: Reloaded.Gameplay.CutScene.ClearUpsellBoard [0x600191d] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6aa7c5` `jmp`: Reloaded.Gameplay.Board/<>c.<Deserialize>b__459_10 [0x60017ec] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c6caf` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c6e0f` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c7cdf` `jmp`: Reloaded.Gameplay.Projectile.DoImpact [0x6001a95] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c9a50` `jmp`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).
- `0x6c9b34` `jmp`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c7650` (Reloaded.Gameplay.Projectile.Die [0x6001a94]).

Ziele:

- `0x6c766d` `call` nach `0x4feb70`: unresolved native address.
- `0x6c769a` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).
- `0x6c76b6` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c76c3` `call` nach `0x3832900`: unresolved native address.
- `0x6c76da` `call` nach `0x7c9970`: Source.Controllers.ReloadedController.Die [0x6000c90].
- `0x6c76f3` `call` nach `0x4fdea0`: unresolved native address.
- `0x6c7703` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]

lifecycle/target candidate

RVA `0x6c8400`; Bereichsende `0x6c8640`; Beleg [replanted-0x6001a98.asm](replanted-0x6001a98.asm).

Aufrufer:

- `0x6c6cc6` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c8400` (Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]).
- `0x6c9857` `call`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c8400` (Reloaded.Gameplay.Projectile.FindCollisionTarget [0x6001a98]).

Ziele:

- `0x6c841c` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8428` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8434` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8455` `call` nach `0x6c8a60`: Reloaded.Gameplay.Projectile.PeaAboutToHitTorchwood [0x6001aa6].
- `0x6c8495` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c8509` `call` nach `0x2449330`: unresolved native address.
- `0x6c853d` `call` nach `0x6f12f0`: Reloaded.Gameplay.Zombie.EffectedByDamage [0x6001cd7].
- `0x6c858e` `call` nach `0x6f2d70`: Reloaded.Gameplay.Zombie.GetZombieRect [0x6001cf0].
- `0x6c85ab` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c85bd` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c862e` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]

lifecycle/target candidate

RVA `0x6c8240`; Bereichsende `0x6c8400`; Beleg [replanted-0x6001aa0.asm](replanted-0x6001aa0.asm).

Aufrufer:

- `0x6c6bd5` `call`: Reloaded.Gameplay.Projectile.CheckForCollision [0x6001a97] nach `0x6c8240` (Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]).
- `0x6c9866` `call`: Reloaded.Gameplay.Projectile.UpdateLobMotion [0x6001a99] nach `0x6c8240` (Reloaded.Gameplay.Projectile.FindCollisionTargetPlant [0x6001aa0]).

Ziele:

- `0x6c825d` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8269` `call` nach `0x4feb70`: unresolved native address.
- `0x6c8275` `call` nach `0x4feb70`: unresolved native address.
- `0x6c82a1` `call` nach `0x6c86f0`: Reloaded.Gameplay.Projectile.GetProjectileRect [0x6001a9e].
- `0x6c82f9` `call` nach `0x2449330`: unresolved native address.
- `0x6c834a` `call` nach `0x6b1a00`: Reloaded.Gameplay.Plant.GetPlantRect [0x6001a2a].
- `0x6c8367` `call` nach `0x4feeb0`: unresolved native address.
- `0x6c8379` `call` nach `0x6cbaa0`: Reloaded.Gameplay.Common.GetRectOverlap [0x6001bd8].
- `0x6c83bd` `call` nach `0x65f2a0`: Reloaded.Gameplay.Board.GetTopPlantAt [0x60016fb].
- `0x6c83f7` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.Reset [0x6001aa7]

lifecycle/target candidate

RVA `0x6c9280`; Bereichsende `0x6c9320`; Beleg [replanted-0x6001aa7.asm](replanted-0x6001aa7.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x6c928b` `call` nach `0x6ce570`: Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32].
- `0x6c930c` `jmp` nach `0x4fdea0`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.Projectile.Serialize [0x6001aa8]

lifecycle/target candidate

RVA `0x6c9320`; Bereichsende `0x6c95f0`; Beleg [replanted-0x6001aa8.asm](replanted-0x6001aa8.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x6c934d` `call` nach `0x4feb70`: unresolved native address.
- `0x6c9359` `call` nach `0x4feb70`: unresolved native address.
- `0x6c9365` `call` nach `0x4feb70`: unresolved native address.
- `0x6c9371` `call` nach `0x4feb70`: unresolved native address.
- `0x6c9389` `call` nach `0x6ce5a0`: Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35].
- `0x6c9397` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93a5` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93b3` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c93c3` `call` nach `0x60dae0`: unresolved native address.
- `0x6c93d6` `call` nach `0x60dae0`: unresolved native address.
- `0x6c93e9` `call` nach `0x60dae0`: unresolved native address.
- `0x6c93fc` `call` nach `0x60dae0`: unresolved native address.
- `0x6c940f` `call` nach `0x60dae0`: unresolved native address.
- `0x6c9422` `call` nach `0x60dae0`: unresolved native address.
- `0x6c9435` `call` nach `0x60dae0`: unresolved native address.
- `0x6c9448` `call` nach `0x60dae0`: unresolved native address.
- `0x6c945a` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6c946b` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c947c` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6c948d` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- Weitere 16 Einträge vollständig in native-analysis.json.

Indirekte Aufrufe und Sprünge:

- `0x6c95c6`: `call rax`; Ziel offen.

## Reloaded.Gameplay.Projectile.Deserialize [0x6001aa9]

lifecycle/target candidate

RVA `0x6c7330`; Bereichsende `0x6c7650`; Beleg [replanted-0x6001aa9.asm](replanted-0x6001aa9.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x6c735d` `call` nach `0x4feb70`: unresolved native address.
- `0x6c7369` `call` nach `0x4feb70`: unresolved native address.
- `0x6c7375` `call` nach `0x4feb70`: unresolved native address.
- `0x6c738d` `call` nach `0x6ce400`: Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36].
- `0x6c739c` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73ab` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73ba` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c73c9` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c73db` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c73ed` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c73ff` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c7411` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c7423` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c7435` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c7447` `call` nach `0x60d8c0`: unresolved native address.
- `0x6c7459` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6c746b` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c7481` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c749f` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6c74bb` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- Weitere 16 Einträge vollständig in native-analysis.json.

Indirekte Aufrufe und Sprünge:

- `0x6c7630`: `call rax`; Ziel offen.

## Reloaded.Gameplay.Projectile..ctor [0x6001aaa]

lifecycle/target candidate

RVA `0x6c50a0`; Bereichsende `0x6c50b0`; Beleg [replanted-0x6001aaa.asm](replanted-0x6001aaa.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x6c50a2` `jmp` nach `0x6ce700`: Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e].

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.ReloadedObject..ctor [0x6001b2e]

lifecycle/target candidate

RVA `0x6ce700`; Bereichsende `0x6ce740`; Beleg [replanted-0x6001b2e.asm](replanted-0x6001b2e.asm).

Aufrufer:

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

Ziele:

- `0x6ce719` `call` nach `0x60f880`: SentryCliConfiguration.Configure [0x6000005] / AudioSourceWrapper.SetPitch [0x600001c] / RandomAnimation_Controller/<DelayedLoopStart>d__11.System.IDisposable.Dispose [0x60000a2] / 345 weitere Aliase (JSON aliases[6355072]).

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]

lifecycle/target candidate

RVA `0x6ce570`; Bereichsende `0x6ce5a0`; Beleg [replanted-0x6001b32.asm](replanted-0x6001b32.asm).

Aufrufer:

- `0x699023` `call`: Reloaded.Gameplay.Coin.Reset [0x60018c8] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6b4f5f` `call`: Reloaded.Gameplay.Plant.Reset [0x6001a78] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c2749` `call`: Reloaded.Gameplay.GridItem.Reset [0x60019d6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c43ef` `call`: Reloaded.Gameplay.LawnMower.Reset [0x60019e6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6c928b` `call`: Reloaded.Gameplay.Projectile.Reset [0x6001aa7] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6ca9cf` `call`: Reloaded.Gameplay.Reanimation.Reset [0x6001ad6] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).
- `0x6f5d9f` `call`: Reloaded.Gameplay.Zombie.Reset [0x6001da0] nach `0x6ce570` (Reloaded.Gameplay.ReloadedObject.Reset [0x6001b32]).

Ziele:

- Keine direkten externen Ziele gefunden.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.ReloadedObject.Serialize [0x6001b35]

lifecycle/target candidate

RVA `0x6ce5a0`; Bereichsende `0x6ce700`; Beleg [replanted-0x6001b35.asm](replanted-0x6001b35.asm).

Aufrufer:

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

Ziele:

- `0x6ce5c0` `call` nach `0x4feb70`: unresolved native address.
- `0x6ce5d7` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce5e7` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce5f5` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce603` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce612` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6ce620` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce62e` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce63d` `call` nach `0x63bab0`: range candidate: Source.Serialization.ReloadedBinaryWriter.BoolArray [0x6000988] + 0x180.
- `0x6ce64d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce65d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce66d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce67d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce68d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce69d` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce6ab` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6b9` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6c7` `call` nach `0x63bd40`: range candidate: Source.Serialization.ReloadedBinaryWriter.Int32Array [0x6000981] + 0x180.
- `0x6ce6d7` `call` nach `0x60dae0`: unresolved native address.
- `0x6ce6f1` `jmp` nach `0x60dae0`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.ReloadedObject.Deserialize [0x6001b36]

lifecycle/target candidate

RVA `0x6ce400`; Bereichsende `0x6ce570`; Beleg [replanted-0x6001b36.asm](replanted-0x6001b36.asm).

Aufrufer:

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

Ziele:

- `0x6ce420` `call` nach `0x4feb70`: unresolved native address.
- `0x6ce436` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce445` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce454` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce463` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce472` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6ce481` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce490` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce49f` `call` nach `0x63b2a0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x220.
- `0x6ce4ae` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce4bd` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce4cc` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce4db` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce4ea` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce4f9` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce508` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce520` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce536` `call` nach `0x63b5f0`: range candidate: Source.Serialization.ReloadedBinaryReader.BoolArray [0x60009af] + 0x570.
- `0x6ce545` `call` nach `0x60d8c0`: unresolved native address.
- `0x6ce55e` `jmp` nach `0x60d8c0`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Reloaded.Gameplay.ReloadedObject.PostDeserialize [0x6001b37]

lifecycle/target candidate

RVA `0x60f880`; Bereichsende `0x60f890`; Beleg [replanted-0x6001b37.asm](replanted-0x6001b37.asm).

Aufrufer:

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
- Weitere 723 Einträge vollständig in native-analysis.json.

Ziele:

- Keine direkten externen Ziele gefunden.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Fachliche Übergabe

1. Verfolge die relevanten Aufrufer und Ziele bis zum tatsächlichen Zustandsschreiber. Wähle weitere Methoden mit `--method`.
2. Prüfe Zielregeln: Reihen, Entfernung, Flugzustand, Freund/Feind, Tod und Terrain an den konkreten Zweigen.
3. Belege je Feld Objekttyp, Initialisierung, Schreiber, Serialize/Deserialize, Reset und Pool-Wiederverwendung.
4. Prüfe Boardwechsel, DataID, Pause, Abbruch, Tod und Aufräumen. Dokumentiere nicht gespeicherte Zustände.
5. Ergänze fachliche Ergebnisse in einer separaten port-notes.md; dieser Bericht wird beim erneuten Aufruf ersetzt.
