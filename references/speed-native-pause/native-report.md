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

## PauseToggler.TogglePause [0x6000058]

requested

RVA `0x621df0`; Bereichsende `0x621f60`; Beleg [replanted-0x6000058.asm](replanted-0x6000058.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x621e09` `call` nach `0x4feb70`: unresolved native address.
- `0x621e15` `call` nach `0x4feb70`: unresolved native address.
- `0x621e46` `call` nach `0x4feeb0`: unresolved native address.
- `0x621e4d` `call` nach `0x625fa0`: TimeUtil.UnpauseTime [0x6000091].
- `0x621e66` `call` nach `0x4feeb0`: unresolved native address.
- `0x621e70` `call` nach `0x3832870`: unresolved native address.
- `0x621e8d` `call` nach `0x3981e90`: unresolved native address.
- `0x621eb0` `call` nach `0x4feeb0`: unresolved native address.
- `0x621ecc` `call` nach `0x4feb70`: unresolved native address.
- `0x621eeb` `call` nach `0x4feeb0`: unresolved native address.
- `0x621f09` `call` nach `0x38404b0`: unresolved native address.
- `0x621f22` `call` nach `0x4feeb0`: unresolved native address.
- `0x621f2c` `call` nach `0x3832870`: unresolved native address.
- `0x621f53` `jmp` nach `0x3981e90`: unresolved native address.
- `0x621f58` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## PauseToggler.OnDisable [0x6000059]

requested

RVA `0x621c70`; Bereichsende `0x621df0`; Beleg [replanted-0x6000059.asm](replanted-0x6000059.asm).

Aufrufer:

- Keine direkten Aufrufer im analysierten Bereich gefunden.

Ziele:

- `0x621c93` `call` nach `0x4feb70`: unresolved native address.
- `0x621c9f` `call` nach `0x4feb70`: unresolved native address.
- `0x621cd0` `call` nach `0x4feeb0`: unresolved native address.
- `0x621cd7` `call` nach `0x625fa0`: TimeUtil.UnpauseTime [0x6000091].
- `0x621cf0` `call` nach `0x4feeb0`: unresolved native address.
- `0x621cfa` `call` nach `0x3832870`: unresolved native address.
- `0x621d17` `call` nach `0x3981e90`: unresolved native address.
- `0x621d3a` `call` nach `0x4feeb0`: unresolved native address.
- `0x621d56` `call` nach `0x4feb70`: unresolved native address.
- `0x621d75` `call` nach `0x4feeb0`: unresolved native address.
- `0x621d93` `call` nach `0x38404b0`: unresolved native address.
- `0x621dac` `call` nach `0x4feeb0`: unresolved native address.
- `0x621db6` `call` nach `0x3832870`: unresolved native address.
- `0x621ddd` `jmp` nach `0x3981e90`: unresolved native address.
- `0x621de2` `call` nach `0x4fee20`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## PauseToggler..ctor [0x600005a]

lifecycle/target candidate

RVA `0x6102b0`; Bereichsende `0x6102c0`; Beleg [replanted-0x600005a.asm](replanted-0x600005a.asm).

Aufrufer:

- `0x621c62` `jmp`: ZombieNoteBinder..ctor [0x600002b] / PauseGameActivity..ctor [0x600004f] / PlaySoundActivity..ctor [0x6000051] / 78 weitere Aliase (JSON aliases[6429792]) nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x622b99` `jmp`: Rewired.RefreshDLCActivity..ctor [0x60001c7] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x752ca1` `jmp`: Reloaded.Binders.AlmanacDescriptionBinder..ctor [0x60020a4] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x753149` `jmp`: Reloaded.Binders.AnimationProgressBinder..ctor [0x60020aa] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x754fb2` `jmp`: Reloaded.Binders.ConditionalStringBinder..ctor [0x60020c2] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7561a2` `jmp`: Reloaded.Binders.InjectableBinderContainer..ctor [0x60020cd] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7569b1` `jmp`: Reloaded.Binders.NumberLabelBinder..ctor [0x60020df] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x757f30` `jmp`: Reloaded.Binders.RectXOffsetBinder..ctor [0x60020ff] / Reloaded.Binders.RectYOffsetBinder..ctor [0x6002106] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x758e36` `jmp`: Reloaded.Binders.SlotMachineHandleBinder..ctor [0x6002116] / Reloaded.Binders.ToggleSkeletonBinder..ctor [0x6002140] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7590e9` `jmp`: Reloaded.Binders.SlotMachineYOffsetBinder..ctor [0x600211b] / Reloaded.Binders.XposBinder..ctor [0x600215d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x75a256` `jmp`: Reloaded.Binders.TMProUGUISpriteAssetBinder..ctor [0x600213c] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7a21c8` `jmp`: Source.TreeStateActivities.TransitionWhenMainDeviceDisconnectedActivity..ctor [0x6000971] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7b8ff6` `jmp`: Source.Controllers.TweenimatorBoolBinder..ctor [0x6000a60] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7bb4c2` `jmp`: Source.Binders.AlmanacPlantBinder..ctor [0x6000d2d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7bc2e2` `jmp`: Source.Binders.AlmanacZombieBinder..ctor [0x6000d3a] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7be2b2` `jmp`: Source.Binders.GameObjectCopyBinder..ctor [0x6000d4d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7cf516` `jmp`: Source.Binders.VersusChooserSwapBinder..ctor [0x6000d6b] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7d8db9` `jmp`: Reloaded.TreeStateActivities.FrontendActivity..ctor [0x6000e6d] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7e2d73` `jmp`: Reloaded.TreeStateActivities.GameplayActivity..ctor [0x6000f80] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- `0x7e5092` `jmp`: Reloaded.TreeStateActivities.LevelSelectPanelActivity..ctor [0x6000f99] nach `0x6102b0` (AudioSequence..ctor [0x600000c] / FoleyPlayer..ctor [0x6000026] / DoubleSunController..ctor [0x6000032] / 72 weitere Aliase (JSON aliases[6357680])).
- Weitere 3 Einträge vollständig in native-analysis.json.

Ziele:

- `0x6102b2` `jmp` nach `0x38148f0`: unresolved native address.

Indirekte Aufrufe und Sprünge:

- Keine im dekodierten Bereich gefunden.

## Fachliche Übergabe

1. Verfolge die relevanten Aufrufer und Ziele bis zum tatsächlichen Zustandsschreiber. Wähle weitere Methoden mit `--method`.
2. Prüfe Zielregeln: Reihen, Entfernung, Flugzustand, Freund/Feind, Tod und Terrain an den konkreten Zweigen.
3. Belege je Feld Objekttyp, Initialisierung, Schreiber, Serialize/Deserialize, Reset und Pool-Wiederverwendung.
4. Prüfe Boardwechsel, DataID, Pause, Abbruch, Tod und Aufräumen. Dokumentiere nicht gespeicherte Zustände.
5. Ergänze fachliche Ergebnisse in einer separaten port-notes.md; dieser Bericht wird beim erneuten Aufruf ersetzt.
