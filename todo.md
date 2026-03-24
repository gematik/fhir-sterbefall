# TODO: Manuelle Aufgaben nach IG-Publisher-Migration

Diese Datei enthält offene Punkte, die nach der automatischen Migration noch manuell erledigt werden müssen.

---

## Pflichtaufgaben (vor erstem Build)

### 1. SUSHI ausführen
`FSHOnly: true` wurde entfernt. SUSHI muss jetzt einmal ausgeführt werden, damit die Datei `fsh-generated/resources/ImplementationGuide-sterbefall.json` generiert wird, auf die `ig.ini` verweist.

```bash
cd Resources
sushi .
```

### 2. IG Publisher herunterladen und ausführen
Den IG Publisher (validator_cli.jar ist ein anderes Tool) unter folgendem Link herunterladen:
https://github.com/HL7/fhir-ig-publisher/releases/latest

Ausführen aus dem `Resources/`-Verzeichnis:
```bash
java -jar publisher.jar -ig ig.ini
```

Alternativ: `_genonce.bat` / `_genonce.sh` aus dem `Resources/`-Verzeichnis herunterladen via:
```bash
# Windows
curl -L https://github.com/HL7/ig-publisher-scripts/raw/main/_genonce.bat -o _genonce.bat
# Linux/Mac
curl -L https://github.com/HL7/ig-publisher-scripts/raw/main/_genonce.sh -o _genonce.sh
```

### 3. Template-Paket prüfen
Das Template `fhir2.hl7.template` ist in `ig.ini` eingetragen. Bitte prüfen, ob dieses Template-Paket tatsächlich verfügbar ist. Die gängigen Template-Namen sind:
- `fhir.base.template` (Standard HL7 Basistemplate)
- `hl7.fhir.template` (HL7 Template)
- `fhir2.hl7.template` (wie angegeben)

Falls der Build fehlschlägt, als Fallback mit `fhir.base.template` versuchen.

---

## Inhaltliche Korrekturen

### 4. Gematik-Logo in index.md aktualisieren
Die Datei `Resources/input/pagecontent/index.md` enthält noch eine externe Logo-URL aus dem ISiK-Basismodul-Repository. Empfehlung:
- Logo-Datei `Gematik_Logo_Flag.png` nach `Resources/input/images/` kopieren
- URL in `index.md` auf `Gematik_Logo_Flag.png` ändern:
  ```html
  <img src="Gematik_Logo_Flag.png" alt="gematik logo" width="400">
  ```

### 5. Simplifier-Link in index.md anpassen
In `Resources/input/pagecontent/index.md` wurde der Simplifier-Button bereits in einen GitHub-Link umgewandelt. Prüfen und ggf. die genaue GitHub-URL ergänzen (aktuell: `https://github.com/gematik/fhir-sterbefall`).

### 6. Placeholder-Text "Schuleingangsuntersuchung" entfernen
Folgende Seiten enthalten noch veralteten Placeholder-Text aus einem anderen Projekt (Schuleingangsuntersuchung), der angepasst werden muss:

- **`Resources/input/pagecontent/Akteure-und-Interaktionen.md`**: Der Einleitungssatz war ursprünglich auf Schuleingangsuntersuchungen ausgerichtet — wurde bei der Migration bereits bereinigt, bitte inhaltlich nochmal prüfen.
- **`Resources/input/pagecontent/Geltungsbereich-Scope.md`**: Abschnitt "Für weitere Releases" enthielt Referenzen auf Schuleingangsuntersuchungen — bereits bereinigt, inhaltlich prüfen.

### 7. Fehlender Text in Geltungsbereich-Scope
Im Original stand: "Die FHIR-Spezifikation für die  umfasst" (fehlendes Wort). Der Satz wurde bei der Migration umformuliert, bitte inhaltlich prüfen.

---

## Optionale Verbesserungen

### 8. Narrative für einzelne Profile/Extensions hinzufügen
Der IG Publisher generiert die Seiten für Profile, Extensions und Operationen automatisch. Falls für einzelne Ressourcen zusätzliche Beschreibungen (über die FSH-Beschreibungen hinaus) benötigt werden, können folgende Dateien angelegt werden:

```
Resources/input/pagecontent/StructureDefinition-<Id>-intro.md    # Wird vor dem generierten Inhalt angezeigt
Resources/input/pagecontent/StructureDefinition-<Id>-notes.md    # Wird nach dem generierten Inhalt angezeigt
Resources/input/pagecontent/OperationDefinition-<Id>-intro.md
```

Beispiel für StfExportProvenance (hat eine Suchparameter-Besonderheit):
```
Resources/input/pagecontent/StructureDefinition-StfExportProvenance-notes.md
```

### 9. CI/CD-Pipeline ergänzen
Ein GitHub Actions Workflow für den automatischen IG-Publisher-Build kann als Vorlage aus dem Referenzprojekt übernommen werden:
`C:\Users\schoe\Documents\Workspace\spec-ISiK-Basismodul\scripts\ig-publisher\`

### 10. package-list.json anlegen
Für eine vollständige Versionshistorie kann eine `package-list.json` im `Resources/`-Verzeichnis angelegt werden. Vorlage: https://registry.fhir.org/

### 11. Bestehende guides/-Struktur
Der alte `guides/`-Ordner mit den Simplifier `.page.md`-Dateien wurde nicht gelöscht. Er kann nach erfolgreichem IG-Publisher-Build entfernt werden, wenn er nicht mehr benötigt wird.

---

## Neue Dateien (Übersicht der Migration)

| Neue Datei | Quelle |
|---|---|
| `Resources/ig.ini` | Neu erstellt |
| `Resources/input/images/Workflow.png` | Kopiert aus `Images/` |
| `Resources/input/images/Architektur.png` | Kopiert aus `Images/` |
| `Resources/input/images/Infomodell.png` | Kopiert aus `Images/` |
| `Resources/input/pagecontent/index.md` | Aus `guides/.../Startseite/Index.page.md` |
| `Resources/input/pagecontent/ReleaseNotes.md` | Aus `guides/.../Startseite/ReleaseNotes.page.md` |
| `Resources/input/pagecontent/Geltungsbereich-Scope.md` | Aus `guides/.../Über-diese-Spezifikation/Geltungsbereich-Scope.page.md` |
| `Resources/input/pagecontent/Anleitung-zum-Review.md` | Aus `guides/.../Über-diese-Spezifikation/Anleitung-zum-Review.page.md` |
| `Resources/input/pagecontent/Akteure-und-Interaktionen.md` | Aus `guides/.../Über-diese-Spezifikation/Akteure-und-Interaktionen.page.md` |
| `Resources/input/pagecontent/Begriffsdefinitionen.md` | Aus `guides/.../Über-diese-Spezifikation/Begriffsdefinitionen.page.md` |
| `Resources/input/pagecontent/Informationsmodell.md` | Aus `guides/.../Über-diese-Spezifikation/Informationsmodell.page.md` |
| `Resources/input/pagecontent/Beispielarchitektur.md` | Aus `guides/.../Über-diese-Spezifikation/Beispielarchitekur.page.md` |
| `Resources/input/pagecontent/Beispiele.md` | Neu erstellt (ersetzt `guides/.../Krebsregistermeldung/Examples.page.md`) |
| `Resources/input/pagecontent/artifacts.md` | Neu erstellt (IG Publisher Standard) |

## Weggefallene Simplifier-Seiten (auto-generiert durch IG Publisher)

Folgende Seiten aus `guides/` wurden **bewusst nicht** in `pagecontent/` übernommen, da der IG Publisher diese automatisch generiert:

- Alle `Index.page.md` mit `{{index:current}}` → Navigation übernimmt IG Publisher
- `Inhaltsverzeichnis.page.md` mit `{{index:root}}` → wird durch IG Publisher auto-generiert
- Alle Ressourcen-Profil-Seiten (`Arzt.page.md`, `Leichenschau.page.md` etc.) → auto-generiert
- Alle Extension-Seiten (`Bundesland.page.md` etc.) → auto-generiert
- Alle Operations-Seiten (`ReceiveBundle.page.md` etc.) → auto-generiert
- Alle Terminologie-Seiten (CodeSystems, ValueSets) → auto-generiert
