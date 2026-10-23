# XWordGiver-DE

Dies ist ein inoffizieller Fork von [XWordGiver](https://github.com/katahiromz/XWordGiver) mit zusätzlichen Funktionen und Dateien für deutschsprachige Kreuzworträtsel.

## Erweiterungen

### Querformatdruck

Der Ausdruck von Kreuzworträtseln ist zusätzlich im Querformat möglich.

Dabei wird:

- das Kreuzworträtsel links auf der Seite platziert,
- die Liste der Fragen rechts daneben ausgegeben,
- die Fragenliste vertikal ausgerichtet,
- die Schriftgröße bei Bedarf automatisch angepasst.

Der bisherige Hochformatdruck bleibt unverändert erhalten.

### Verbesserte PAT-Auswahl

Beim automatischen Erstellen eines Rätsels aus `PAT.txt` wird nicht mehr nur ein zufällig ausgewähltes passendes Muster ausprobiert.

Kann ein Muster nicht erfolgreich gefüllt werden, versucht XWordGiver weitere passende Muster, bevor die Erstellung mit einer Fehlermeldung abgebrochen wird.

### Deutsches Wörterbuch

Enthalten ist ein für XWordGiver aufbereitetes deutsches Kreuzworträtsel-Wörterbuch:

`DICT/BasicDict-DEU-2-15-QualityHints-Tags.tsv`

Es enthält Wörter mit einer Länge von 2 bis 15 Buchstaben sowie deutsche Hinweise und teilweise Themen-Tags.

Umlaute und ß werden in den Lösungswörtern entsprechend der üblichen Kreuzworträtsel-Schreibweise umgesetzt:

- Ä → AE
- Ö → OE
- Ü → UE
- ß → SS

### Deutsche Kreuzworträtsel-Muster

`PAT-DEU.txt` enthält speziell für das deutsche Wörterbuch erstellte Muster für Rätselgrößen von 5 × 5 bis 15 × 15.

Die Muster verwenden klassische Schwarzfelder und wurden auf ihre grundsätzliche Füllbarkeit mit dem deutschen Wörterbuch geprüft.

### PAT-Umschalter

Mit `PAT-Switcher.bat` kann zwischen den deutschen und englischen PAT-Mustern gewechselt werden.

Dazu werden verwendet:

- `PAT-DEU.txt` – deutsche Muster
- `PAT-ENG.txt` – originale englische Muster
- `PAT.txt` – aktuell von XWordGiver verwendete Musterdatei

## Originalprojekt

XWordGiver wird von katahiromz entwickelt:

https://github.com/katahiromz/XWordGiver

Dieser Fork basiert auf dem Originalprojekt und ist keine offizielle Version des ursprünglichen Entwicklers.

## Lizenz

XWordGiver steht unter der MIT-Lizenz. Die ursprünglichen Copyright- und Lizenzhinweise bleiben erhalten.
