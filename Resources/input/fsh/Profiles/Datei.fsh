Profile: StfDatei
Parent: DocumentReference
Id: StfDateien
Title: "STF Dateien"
Description: "Metadaten zu Dateien, die im Kontext der STF Übermittlung relevant sind"
* identifier MS
* identifier ^comment = "Beispielsweise Sterbebuch Nummer oder StAmt_Aktenzeichen"
* status MS
* type MS
* type from StfDateiTyp (extensible)
* subject MS
* subject only Reference(Patient)
* author MS
* author only Reference(Practitioner or Organization)
* author ^comment = "Beispielsweise Verweis auf eine Organization, die Informationen zum Standesamt beinhaltet (Nr. und Name). Im Kontext eines Obduktionsscheins der ausstellende Arzt oder Ärztin"
* date MS
* date ^comment = "Beispielsweise das Datum der Sterbeurkunde"
* context MS
* context.related MS
* context.related ^comment = "Im Kontext eines Obduktionsscheins verweis auf eine Observation, welche die Todesursache abbildet"