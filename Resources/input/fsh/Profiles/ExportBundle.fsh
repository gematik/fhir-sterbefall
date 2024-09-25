Profile: ExportBundle
Parent: Bundle
Id: ExportBundle
Title: "Export Bundle"
Description: "TBD"
* meta.tag from StfMetaTags (extensible)
* meta.tag ^comment = "Vormerkliste, Fall wird noch ergänzt"
* timestamp MS
* timestamp ^comment = "Exportzeitpunkt"
* timestamp.extension contains StfGesundheitsamtAenderungsdatum named Gesundheitsamt_Änderungsdatum ..1 MS
* timestamp.extension[Gesundheitsamt_Änderungsdatum] ^comment = "Letztes Änderungsdatum des Gesundheitsamtes"
//TODO Alle Ressourcen als Entry abbilden


Extension: StfGesundheitsamtAenderungsdatum
Id: StfGesundheitsamtAenderungsdatum
Title: "STF Gesundheitsamt Änderungsdatum"
Description: "TBD"
Context: Bundle.timestamp
* value[x] only dateTime
