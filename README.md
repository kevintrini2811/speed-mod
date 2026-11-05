# Speed Mod 1.0.3

Eigenständige MelonLoader-Mod für PvZ Replanted. Benötigt BloomEngine, aber keine Fusion-Mod.

Der native Schnellvorlauf erhält zusätzlich 5×, 10× und 20×. Rechtsklick auf den Schnellvorlauf wählt die vorherige Stufe. Der links daneben stehende Slowdown-Knopf schaltet 0,2× ein und aus. Die zuvor gewählte Schnellvorlaufstufe bleibt erhalten, auch bei Stufenwechseln während der Zeitlupe. Native Pause, Audiotempo und Menüs behalten ihre Zuständigkeit.

Ab 10× laufen sichtbare Animationen mit dem relativen Tempo von 2×. Native Animationstracks, Ereignisse, Treffer, Bewegung und Simulation laufen weiterhin mit dem ausgewählten Spieltempo. Projektilposen und visuelle Drehungen bleiben ab 10× stehen; Flug und Kollisionen laufen weiter. Aufprallpartikel und reine Aufprall-Reanimationen werden ab 10× ebenfalls unterdrückt. Treffer, Schaden, Statuswirkungen und Aufprallgeräusche bleiben erhalten. Unter 10× wird die native Darstellung wieder verwendet. Die zusätzlichen visuellen Zustände sind flüchtig und verändern keine Spielstände.

Die Fusion-Mod benötigt SpeedMod. Ihre Geschwindigkeitssteuerung wurde entfernt. Fusion verwendet den öffentlichen Positionsanker für die goldene Kaffeebohne und einen ans jeweilige Grafikobjekt gebundenen `VisualClock` für importierte Pflanzen und Zombies. Importierte Projektile lassen Posenberechnung und Drehungen ab 10× aus. Fusion besitzt weiterhin ihre Grafikmodelle; SpeedMod besitzt die Geschwindigkeitsregeln.

Das Modmenü verwendet wie Plant Library ein eingebettetes, undurchsichtiges 512×512-Icon. Der native 1,5×-Indikator wird wie beim Slowdown-Knopf gespiegelt, auf seine native Buttonplatte gelegt und mit `Area5_Roof` kombiniert. BloomEngine setzt Rahmen und Position. Herkunft und Prüfsummen stehen in `assets/sources.json`.

## Bauen und installieren

Aus `/home/kevin/modding`:

```sh
rtk proxy pvzreplanted/.tools/dotnet/dotnet build pvzreplanted/fusion-mod/FusionMod.csproj -c Release
rtk proxy pvzreplanted/.tools/fusion-workflow/bin/python pvzreplanted/speed-mod/tools/install.py
```

Für ein Update ausschließlich dieser Mod genügt ein Release-Build von `speed-mod/SpeedMod.csproj` und anschließend `python3 pvzreplanted/debug-mod/tools/install.py --only SpeedMod`. Auch dieser Installer sichert DLL und Prüfsummen vor dem atomaren Austausch.

Der Fusion-Build baut SpeedMod mit. Der Installer sichert beide vorhandenen DLLs, prüft zwischenzeitliche Dateiänderungen und ersetzt `Mods/SpeedMod.dll` sowie `Mods/FusionMod.dll`. Bei einem Installationsfehler stellt er den vorherigen Zustand wieder her. `backups/<Zeitstempel>/installation.json` enthält die ursprünglichen und installierten Prüfsummen.

Für einen Rückbau beide DLLs gemeinsam aus derselben Sicherung wiederherstellen. Falls vorher keine SpeedMod installiert war, `Mods/SpeedMod.dll` entfernen und die gesicherte FusionMod.dll wiederherstellen. Spiel während Installation und Rückbau geschlossen halten.

## Prüfung und Abnahme

Die Prüfung umfasst Release-Kompilierung, Regressionstests für den visuellen Takt, native Aufrufpfade und einen Laufzeittest über die Debug-API. Ergebnisse und Grenzen stehen in `references/performance-validation.md`.

`references/native-animation` belegt den Animationstakt und die native Projektilrotation. `references/native-spine` belegt `SkeletonAnimation.Update(float)` und die getrennte `OnlyEventTimelines`-Phase. Diese Phase bleibt unverändert; nur die anschließende sichtbare Pose verwendet einen separaten AnimationState ohne Spielereignis-Abonnenten. `references/native-impact` belegt die getrennten Aufprall-, Schadens- und Effektaufrufe. Nur Aufprallpartikel innerhalb von Projektilaufrufen werden unterdrückt. Butter- und Eiszustände sowie Todespartikel bleiben erhalten. Die native Feuer-Aufprallanimation muss zunächst ein gültiges Objekt liefern, weil der Aufrufer es unmittelbar konfiguriert; das Objekt wird nach dem Aufruf vor dem nächsten Zeichnen freigegeben.

`references/native-ground` belegt die native, auf logischen Trackzeiten beruhende Bodenbewegung. Wiederverwendete Controller verwerfen den alten visuellen Zustand.

Manuell prüfen:

- Schnellvorlauf 1×, 1,5×, 2×, 2,5×, 5×, 10× und 20×; Rechtsklick rückwärts.
- Zeitlupe 0,2×, Stufenwahl während Zeitlupe, Rückkehr zur gewählten Stufe.
- Pause, Fortsetzen, Levelende, neues Level, Speichern und Laden bei hohem Tempo.
- Ab 10×: native und importierte Pflanzen/Zombies mit 2×-Animation; unveränderte Angriffs-, Schadens- und Bewegungstakte.
- Aufpralleffekte bei 5× sichtbar, bei 10×/20× unterdrückt; Schaden, Flächenschaden, Butter, Kälte und Geräusche bleiben korrekt.
- Native sowie Fusion-Projektile: keine Posenanimation oder Drehung ab 10×, aber korrekter Flug, Schatten und Treffer. Unter 10× wieder normale Animation.
- SpeedMod ohne Fusion sowie zusammen mit Fusion; Modmenü-Icon, Slowdown-Knopf und Kaffeebohnenposition.

## Projektiloptimierung in 1.0.3

Die native Nachholschleife leert sonst sämtliche angesammelte Spielzeit vor dem nächsten Renderframe. Hohe Geschwindigkeit und viele Projektile verlängern den Frame, der nächste Frame sammelt noch mehr Arbeit an. In der getesteten Modkonfiguration blockierte ein Frame bei 20× etwa 1,75 Sekunden.

Bei Schnellvorlauf darf die Simulation deshalb rund 12 ms pro Renderframe arbeiten. Erst nach einem vollständigen nativen Tick einschließlich der Prüfung auf Levelende wird überschüssige Nachholzeit verworfen. Der Rest eines angebrochenen Zeitintervalls bleibt erhalten. Kein einzelner Kampf-, Ereignis- oder Objekttick wird übersprungen. 1×, Zeitlupe, Pause und andere Boards behalten ihre native Steuerung. Unter CPU-Überlast ist die tatsächlich erreichte Spielgeschwindigkeit niedriger als die gewählte Stufe. Die Stufe bleibt erhalten und wird bei ausreichend Leistung wieder erreicht; es gibt keine später nachzuholende Zeitlawine.

Die häufigen Animations- und Trefferaufrufe verwenden einen gemeinsamen Snapshot von Geschwindigkeitsstufe und visuellem Takt. Der Snapshot wird pro Renderframe sowie unmittelbar bei nativen Geschwindigkeits- und Boardwechseln aktualisiert. Wiederholte native Zugriffe auf Spielmodus, Szene und Zeitsteuerung entfallen in diesen Hotpaths.

Ab 10× ruft der Projektilcontroller direkt sein natives `ReloadedController.Update` auf. Dessen native Positions-, Sortier- und Schattenaktualisierung bleibt erhalten. Der anschließend ausgeführte Drehungsblock entfällt vollständig; vorher berechnete die Mod die Drehung und setzte sie über weitere Unity-Aufrufe zurück. Die Methode wird über IL2CPP-Metadaten aufgelöst, ohne fest codierte Binäradressen. Ist sie nicht verfügbar, bleibt das vollständige native Update aktiv. Simulation, Ereignisse und Kollisionen bleiben unverändert.

Regressionstest:

```sh
rtk proxy pvzreplanted/.tools/dotnet/dotnet run --project pvzreplanted/speed-mod/tests/VisualClockTests.csproj -c Release
```
