## {{page-title}}

#### [de.gematik.sterbefall](https://simplifier.net/packages/de.gematik.sterbefall)

### Version 1.0.0-beta.3

* Profil `StfExportBundle`: Unterstützt nun zusätzliche Ressourcentypen (`StfBasisObservation`, `StfExportProvenance`, `StfObduktionAnfrage`) und verlangt per Slicing genau einen Provenance-Eintrag, der zwingend das neue Profil `StfExportProvenance` nutzt.
* Neues Profil `StfExportProvenance`: Dokumentiert die Erzeugung des ExportBundles inkl. verpflichtender `recorded`-, `reason`- und `activity`-Angaben sowie einer Referenz auf das zuständige Gesundheitsamt (`agent.onBehalfOf`).
* CodeSystem `StfObservationCodesErweiterungCS`: Um den Code `zeitdauerBeginnBisTod` erweitert, um Verlaufseinschätzungen strukturiert übermitteln zu können.
* Profil `StfTodesursache`: ICD-10-Displays dürfen nur offizielle Bezeichnungen zeigen (Freitexte wandern in `text`), zusätzliche Freitextpflicht für Details, neue Komponente `ZeitdauerBeginnBisTod` auf Basis des neuen Codes sowie präzisierte Beschreibung der `hasMember`-Verknüpfungen.
* Profil `StfSterbeurkundeAusstellung`: `reason` und `activity` sind jetzt als Kardinalität 1..1 ausgeprägt und sichern damit die verpflichtende Kodierung der Ausstellungsgründe und des Abschlussstatus.


### Version 1.0.0-beta.2

* Profil `StfVerstorbenePerson`: Identifier-Slicing in das RuleSet `Patient-identifier` ueberfuehrt und `active` sowie `address` als Must-Support hervorgehoben, damit Pflichtangaben klar dokumentiert sind.
* Neues Profil `StfVerstorbenePersonPseudonymisiert`: stellt einen minimierten Patientendatensatz ohne demografische Attribute fuer pseudonymisierte Meldungen bereit.
* Profil `StfObduktion`: `performer.function` referenziert nun Codes aus `StfOrganisationsTypCS` fuer eine konsistente Kennzeichnung der beteiligten Organisationen.
* Operationen `StfReceiveBundle` wurde neu hinzugefügt.

---

### Version 1.0.0-beta.1

* erste Entwurfsfassung

