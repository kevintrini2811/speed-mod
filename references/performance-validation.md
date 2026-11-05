# Laufzeitprüfung: Speed Mod 1.0.3

Geprüft am 3. November 2026 mit PvZ Replanted 1.5.1469_Steam unter Proton und der installierten Modkonfiguration einschließlich Fusion 20.1.0. Debug Mod 1.1.1 steuert den Test über die lokale Datei-API. Es werden ausschließlich temporäre Debug-Level verwendet; keine dauerhaften Profiländerungen werden angefordert.

## Ursache und Änderung

Die native `GameplayActivity.UpdateGame` addiert skalierte Framezeit zu `m_updateTimer` und führt alle fälligen Simulationsticks aus, bevor `Board.PostUpdate` und das nächste Bild folgen. Viele Projektile machen die Simulation teuer. Ein langer Frame erzeugt noch mehr Nachholarbeit. Bei 20× lagen die gemessenen Framezeiten schließlich bei rund 1,75 Sekunden. Native Belege stehen in `speed-scheduler/replanted-0x6000f76.asm` und `speed-scheduler/native-report.md`.

Das neue Framebudget beendet nur weitere Nachholarbeit nach einem vollständigen Tick einschließlich `CheckForGameEnd`. Die native Schleife subtrahiert danach wie bisher ihr aktuelles Zeitintervall. Die Mod erhält dessen Bruchteil und verwirft überschüssige noch nicht simulierte Wandzeit. Die Mod überspringt keine einzelnen Objektupdates, Kampfberechnungen oder Ereignisse innerhalb eines ausgeführten Ticks. Das Budget gilt ausschließlich für den aktiven Spielbesitzer im Schnellvorlauf. 1×, Zeitlupe und Pause behalten die native Steuerung.

Zusätzlich entfallen wiederholte native Abfragen des visuellen Takts. Der Projektilcontroller verwendet ab 10× direkt die native Basisaktualisierung ohne den anschließenden Drehungsblock. Position, Sortierung und Schatten verbleiben im nativen Code. Belege stehen in `native-animation/replanted-0x6000bfe.asm` und `speed-projectile-performance/`.

## Messung

30 native Repeater in sechs Spalten, fünf native Normal-Zombies als vereiste Ziele mit je 10000000 Körperleben. Etwa 40–56 Projektile gleichzeitig. Pro Geschwindigkeitsstufe zwei Messungen über mindestens sechs Sekunden, zuerst aufsteigend und danach absteigend. FPS werden aus der Differenz nativer Renderframezähler und gemessener Wandzeit berechnet. Beide Versionen behalten 30 Pflanzen und fünf Zombies während des Vergleichs.

| Gewählte Stufe | Speed Mod 1.0.2 | Speed Mod 1.0.3 |
| --- | ---: | ---: |
| 1× | 60,26 FPS | 59,91 FPS |
| 5× | 2,35 FPS | 46,31 FPS |
| 10× | 1,12 FPS | 43,52 FPS |
| 20× | 0,57 FPS | 42,62 FPS |

Das alleinige Einsparen der nativen Taktabfragen und der Projektilrotation erreichte bei 20× etwa 0,65 FPS. Erst das begrenzte Nachholen beseitigt die langen Renderblockaden.

Die Glättung hat einen ausdrücklichen Preis: Unter dieser CPU-Last erreicht die Simulation bei gewählten 20× etwa 279 Ticks/s statt zuvor 455 Ticks/s. Das native Intervall beträgt 1/120 Sekunde. Das entspricht etwa 2,32× statt 3,79× tatsächlich erreichtem Tempo. Die gewählte Stufe bleibt erhalten. Ohne Überlast darf die Simulation weiterhin sämtliche fälligen Ticks ausführen. Es entsteht keine spätere Nachhollawine.

Rohdaten: `performance/before.json`, `performance/cached.json`, `performance/budget.json`. Die historische Eigenschaft `simulation_rate` dieser drei Dateien verwendet nominell 100 Ticks/s; für tatsächliches Tempo mit 100/120 multiplizieren. `performance/summary.json` enthält die expliziten Ticks/s, Versionen und installierten Prüfsummen. Der wiederholbare Test `tools/benchmark_projectiles.py` verwendet bereits das vom Spiel gelieferte `fps.tickSeconds`.

## Reproduktion und Grenzen

```sh
rtk proxy python3 pvzreplanted/speed-mod/tools/benchmark_projectiles.py /tmp/speed-performance.json
rtk proxy pvzreplanted/.tools/dotnet/dotnet run --project pvzreplanted/speed-mod/tests/VisualClockTests.csproj -c Release
```

Der Benchmark benötigt das gestartete Spiel am Startbildschirm oder im Hauptmenü. Er betätigt den nativen Startknopf über `startup.continue`, erstellt seine Debug-Sitzung und verlässt sie nach dem Test. Vollständige Ergebnisse bleiben beim angegebenen Ausgabepfad erhalten.

Die Regressionstests prüfen Taktcache, Animation bei 10×/20×, Track-Neustart, Rückkehr unter die Reduktionsschwelle, Boardende, Menü, Deadline, vollständige Ticks, Bruchteilerhalt, 1×, Pause und fremde Boards. Release-Builds von SpeedMod und DebugMod sind erfolgreich.

Dies ist ein konkreter lokaler Lasttest, keine allgemeine 60-FPS-Garantie. Ein einzelner teurer nativer Tick kann das 12-ms-Budget überschreiten. Unterschiedliche Pflanzen, Mods und Hardware verändern erreichbare Bildrate und Simulationstempo. Der native Aufrufpfad wurde für die genannte Spielversion geprüft.

## Funktionale Laufzeitabnahme

`performance/runtime.json` enthält die Anfragen und Antworten der abschließenden Prüfung mit den final installierten DLLs. Alle folgenden Prüfungen bestehen:

- `startup.continue` erreicht das Hauptmenü selbstständig. Wiederholung im Hauptmenü ist idempotent; während eines Levels wird `INVALID_STATE` gemeldet.
- Ohne Kampflast erreichen die Stufen 1×, 1,5×, 2×, 2,5×, 5×, 10× und 20× ihr gewähltes Tempo innerhalb der Messtoleranz. Bei 20× wurden 20,14× erreicht.
- Native Pause stoppt den Simulationszähler. Wiederholtes Pausieren/Fortsetzen bleibt idempotent. Geschwindigkeitswahl während Pause hebt Pause nicht auf.
- Ungültige Vereisungsdauer verändert die vorher geprüften Körperleben nicht. Fehlende Werte und veraltete Boardkennungen werden abgelehnt.
- Aufeinanderfolgende Projektilsnapshots zeigen Positionsfortschritt derselben Projektil-ID. Bei 20× sinken die Leben des Testzombies weiterhin; die Vereisung bleibt bestehen.
- Rückkehr von 20× auf 1× stellt ohne Nachhollawine mehr als 45 FPS wieder her.
- Native Entfernung der Vereisung setzt deren Zähler zurück. Levelwechsel schützt alte IDs. Verlassen eines pausierten Debug-Boards gibt die API-eigene Pause frei.

Die vorher wirkungslose API-Pause ruft jetzt die native Zeitsteuerung auf und besitzt dabei genau einen eigenen Pauseeintrag. `DebugUi.Dispose` berücksichtigt bereits von Unity zerstörte UI-Objekte. Während der abschließenden Laufzeitprüfung enthält das Spielprotokoll keine Fehler oder Ausnahmen.

Installiert sind SpeedMod 1.0.3 und DebugMod 1.1.1. Builddateien und installierte DLLs haben jeweils identische SHA-256-Prüfsummen. Sicherungen und Installationsmanifeste liegen unter `debug-mod/backups/install-20261103-161638-169072` sowie für die finale API unter `debug-mod/backups/install-20261103-162319-208721`.
