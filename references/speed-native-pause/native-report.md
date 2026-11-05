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

## PauseToggler.TogglePause [0x6000058]

requested

RVA `0x621df0`; End of range `0x621f60`; Document [replanted-0x6000058.asm](replanted-0x6000058.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x621e09` `call` to `0x4feb70`: unresolved native address.
- `0x621e15` `call` to `0x4feb70`: unresolved native address.
- `0x621e46` `call` to `0x4feeb0`: unresolved native address.
- `0x621e4d` `call` to `0x625fa0`: TimeUtil.UnpauseTime [0x6000091].
- `0x621e66` `call` to `0x4feeb0`: unresolved native address.
- `0x621e70` `call` to `0x3832870`: unresolved native address.
- `0x621e8d` `call` to `0x3981e90`: unresolved native address.
- `0x621eb0` `call` to `0x4feeb0`: unresolved native address.
- `0x621ecc` `call` to `0x4feb70`: unresolved native address.
- `0x621eeb` `call` to `0x4feeb0`: unresolved native address.
- `0x621f09` `call` to `0x38404b0`: unresolved native address.
- `0x621f22` `call` to `0x4feeb0`: unresolved native address.
- `0x621f2c` `call` to `0x3832870`: unresolved native address.
- `0x621f53` `jmp` to `0x3981e90`: unresolved native address.
- `0x621f58` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## PauseToggler.OnDisable [0x6000059]

requested

RVA `0x621c70`; End of range `0x621df0`; Document [replanted-0x6000059.asm](replanted-0x6000059.asm).

Caller:

- No direct callers found in the analyzed area.

Goals:

- `0x621c93` `call` to `0x4feb70`: unresolved native address.
- `0x621c9f` `call` to `0x4feb70`: unresolved native address.
- `0x621cd0` `call` to `0x4feeb0`: unresolved native address.
- `0x621cd7` `call` to `0x625fa0`: TimeUtil.UnpauseTime [0x6000091].
- `0x621cf0` `call` to `0x4feeb0`: unresolved native address.
- `0x621cfa` `call` to `0x3832870`: unresolved native address.
- `0x621d17` `call` to `0x3981e90`: unresolved native address.
- `0x621d3a` `call` to `0x4feeb0`: unresolved native address.
- `0x621d56` `call` to `0x4feb70`: unresolved native address.
- `0x621d75` `call` to `0x4feeb0`: unresolved native address.
- `0x621d93` `call` to `0x38404b0`: unresolved native address.
- `0x621dac` `call` to `0x4feeb0`: unresolved native address.
- `0x621db6` `call` to `0x3832870`: unresolved native address.
- `0x621ddd` `jmp` to `0x3981e90`: unresolved native address.
- `0x621de2` `call` to `0x4fee20`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## PauseToggler..ctor [0x600005a]

lifecycle/target candidate

RVA `0x6102b0`; End of range `0x6102c0`; Document [replanted-0x600005a.asm](replanted-0x600005a.asm).

Caller:

- `0x621c62` `jmp`: ZombieNoteBinder..ctor [0x600002b] / PauseGameActivity..ctor [0x600004f] / PlaySoundActivity..ctor [0x6000051] / 78 weitere Aliase (JSON aliases[6429792]) nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x622b99` `jmp`: Rewired.RefreshDLCActivity..ctor [0x60001c7] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x752ca1` `jmp`: Reloaded.Binders.AlmanacDescriptionBinder..ctor [0x60020a4] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x753149` `jmp`: Reloaded.Binders.AnimationProgressBinder..ctor [0x60020aa] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x754fb2` `jmp`: Reloaded.Binders.ConditionalStringBinder..ctor [0x60020c2] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7561a2` `jmp`: Reloaded.Binders.InjectableBinderContainer..ctor [0x60020cd] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7569b1` `jmp`: Reloaded.Binders.NumberLabelBinder..ctor [0x60020df] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x757f30` `jmp`: Reloaded.Binders.RectXOffsetBinder..ctor [0x60020ff] / Reloaded.Binders.RectYOffsetBinder..ctor [0x6002106] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x758e36` `jmp`: Reloaded.Binders.SlotMachineHandleBinder..ctor [0x6002116] / Reloaded.Binders.ToggleSkeletonBinder..ctor [0x6002140] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7590e9` `jmp`: Reloaded.Binders.SlotMachineYOffsetBinder..ctor [0x600211b] / Reloaded.Binders.XposBinder..ctor [0x600215d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x75a256` `jmp`: Reloaded.Binders.TMProUGUISpriteAssetBinder..ctor [0x600213c] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x7a21c8` `jmp`: Source.TreeStateActivities.TransitionWhenMainDeviceDisconnectedActivity..ctor [0x6000971] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7b8ff6` `jmp`: Source.Controllers.TweenimatorBoolBinder..ctor [0x6000a60] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x7bb4c2` `jmp`: Source.Binders.AlmanacPlantBinder..ctor [0x6000d2d] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x7bc2e2` `jmp`: Source.Binders.AlmanacZombieBinder..ctor [0x6000d3a] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x7be2b2` `jmp`: Source.Binders.GameObjectCopyBinder..ctor [0x6000d4d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7cf516` `jmp`: Source.Binders.VersusChooserSwapBinder..ctor [0x6000d6b] to `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 more aliases (JSON aliases[6357680])).
- `0x7d8db9` `jmp`: Reloaded.TreeStateActivities.FrontendActivity..ctor [0x6000e6d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7e2d73` `jmp`: Reloaded.TreeStateActivities.GameplayActivity..ctor [0x6000f80] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7e5092` `jmp`: Reloaded.TreeStateActivities.LevelSelectPanelActivity..ctor [0x6000f99] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- Another 3 entries completely in native-analysis.json.

Goals:

- `0x6102b2` `jmp` to `0x38148f0`: unresolved native address.

Indirect calls and jumps:

- None found in decoded area.

## Technical handover

1. Trace the relevant callers and targets to the actual state writer. Choose more methods with `--method`.
2. Check targeting rules: ranks, distance, flight status, friend/enemy, death and terrain on the specific branches.
3. Documents per field object type, initialization, writer, serialize/deserialize, reset and pool reuse.
4. Check board change, dataID, pause, abort, death and cleanup. Document unsaved states.
5. Add technical results in a separate port-notes.md; this report will be replaced when it is called up again.
