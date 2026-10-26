# Schattenwerkstatt – Hinweise für Claude

Sprachsensible Übungsseite (nach Leisen) zum Physikthema „Licht und Schatten“, Klasse 7, zur Vorbereitung auf einen Langtest. Grundlage sind die Checkliste mit 13 Erfolgskriterien (K1–K13) und die Stationen 1–7 (Day-Betschelt, *Physik an Stationen Spezial: Optik*).

## Dateien

| Pfad | Inhalt |
| --- | --- |
| `src/schattenwerkstatt.html` | Quelle: Seiteninhalt ohne `<html>`/`<head>`, so wie ihn das Claude-Artifact erwartet |
| `index.html` | Gebaute eigenständige Seite (Datei-Weitergabe, GitHub Pages). Nie von Hand ändern |
| `build.sh` | Baut `index.html` aus der Quelle |

Nach jeder Änderung an der Quelle: `./build.sh`, dann das Artifact neu veröffentlichen.

## Veröffentlichung

- Claude-Artifact: https://claude.ai/artifact/6566VRtxdWFWS3tNFRWMDu (Freigabe „Jeder mit dem Link“). Beim Veröffentlichen aus einer neuen Sitzung `url` angeben, sonst entsteht ein neuer Link.
- GitHub Pages: https://dnic-zz.github.io/schattenwerkstatt/ (Repository `github.com/dnic-zz/schattenwerkstatt`, öffentlich, Pages aus `main` /). Zeigt `index.html`, also immer `./build.sh` vor dem Commit. Ohne Claude, darum dort immer Selbstcheck statt KI.
- `index.html` kann auch als Datei weitergegeben oder an das Kursnotizbuch angehängt werden.
- OneNote bettet nur freigegebene Anbieter ein; Claude-Links und GitHub Pages erscheinen dort nur als Link.

## Rahmenbedingungen

- Schüler sind minderjährig und haben kein Claude-Konto. Ohne Claude schaltet die Schreibwerkstatt automatisch auf den Selbstcheck um (Fachbegriffe, Begründungen, Artikel automatisch, Rest per Checkliste). Die KI-Rückmeldung (`sample`) gibt es nur für angemeldete Lehrkräfte.
- Ergebnisse kommen über „Ergebnisse kopieren“ (Mein Stand) ins OneNote-Kursnotizbuch. Kopieren läuft synchron im Klick über eine Markierung und `execCommand("copy")`, sonst `writeText`, sonst markierte Tabelle zum Selbstkopieren.
- Keine Schülerdaten an fremde Dienste. Eine Anmeldung mit dem Microsoft-Schulkonto (Entra ID, SharePoint-Liste) wäre möglich, braucht aber die Schul-IT.
- Speicher nur im Browser (`localStorage`, Schlüssel `schattenwerkstatt-vN`). Ändert sich der Aufbau gespeicherter Daten, `N` erhöhen und den Nutzer darauf hinweisen, dass Fortschritte zurückgesetzt werden.

## Didaktische Prinzipien

- Jede Übung ist einem Erfolgskriterium und einem Anforderungsbereich zugeordnet (AFB I gelb, II rot, III blau wie in der Checkliste).
- Gestufte Hilfe: Anleitung → „Prüfen“ (sagt, was sitzt, ohne die Lösung zu verraten) → „Tipp“.
- Schülertexte in Du-Form, kurze Sätze, Fachbegriffe immer mit Artikel.
- Artikel-Schwerpunkt: Das letzte Wort (Grundwort) bestimmt den Artikel. Hinweise fragen nach dem Grundwort, nennen nie den Artikel. Farben: der blau, die rot, das grün.
- Selbsteinschätzung mit 4 Stufen, ohne Mitte.
- Leichter Einstieg (Artikel-Detektiv), der Sprach-Check (C-Test) kommt erst am Ende.
- Sprach-Check: 2 Texte, erster Satz ganz, danach jedes dritte Wort beschädigt. Text 1 Alltagssprache, Ende getilgt (Stufe 1); Text 2 Fachsprache, Anfang getilgt (Stufe 2). Lücken ohne Abstand zum Wortrest, ein Strich pro Buchstabe, springen automatisch weiter. „Wortliste zeigen“ als Hilfe, die Nutzung wird im Ergebnis vermerkt.

## Stand

- Block 2 (K4–K7, Schatten und ihre Eigenschaften) fertig: Artikel-Detektiv, Übungen 1–4, Schreibwerkstatt, Sprach-Check, Mein Stand.
- Übung 3 (K6): punktförmige Lichtquelle, nur Größe. Schritte: Messtabelle (nah/Mitte/weit) → zwei Je-desto-Sätze aus Bausteinen → Anwenden.
- Block 3 begonnen: Übung 5 „Wie ist es in Wirklichkeit?“ (K8) nach dem Strahlengang. Knöpfe punktförmige / zwei / ausgedehnte Lichtquelle, Abstandsregler. Schritte: Beobachtungstabelle → Leinwand A–D beschriften → Erklärkette aus Satzkarten (mit zwei Fehlvorstellungs-Karten) → Je-desto „breiter Halbschatten, unschärfer“ → Transfer Sonne. Kernidee: Eine ausgedehnte Lichtquelle (auch die Sonne) wirkt wie viele Punktlichtquellen.
- Rückmeldungen nach Schritten gegliedert (✓/○ je Schritt), Tipp passt zum ersten offenen Schritt.
- Offen: Block 1 (K1–K3), K9 aus Block 3, Block 4 (K10–K13, Tag/Nacht, Mondphasen, Finsternisse).

## Versionen

- Jeder Schritt = ein Commit + Tag `stand-N` (fortlaufend). Commit-Nachrichten auf Deutsch, kurz, mit Stichpunkten.
- Rückgängig machen mit `git revert`, nie mit `reset --hard`.
- Nach jedem Schritt: `git push && git push --tags` (GitHub Pages aktualisiert sich dann nach etwa einer Minute).
- Dokumentation nur als HTML-Seiten im Projekt, keine Word- oder Google-Dokumente.
