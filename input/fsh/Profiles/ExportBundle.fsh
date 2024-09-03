Profile: ExportBundle
Parent: Bundle
Id: ExportBundle
Title: "Export Bundle"
Description: "TBD"
* meta.tag from StfMetaTags (extensible)
* timestamp MS
* timestamp.extension contains StfGesundheitsamtAenderungsdatum named Gesundheitsamt_Änderungsdatum ..1 MS
//TODO Alle Ressourcen als Entry abbilden


Extension: StfGesundheitsamtAenderungsdatum
Id: StfGesundheitsamtAenderungsdatum
Title: "STF Gesundheitsamt Änderungsdatum"
Description: "TBD"
Context: Bundle.timestamp
* value[x] only dateTime
