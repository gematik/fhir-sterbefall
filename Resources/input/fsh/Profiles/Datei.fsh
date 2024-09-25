Profile: StfDatei
Parent: DocumentReference
Id: StfDateien
Title: "STF Dateien"
Description: "Metadaten zu Dateien, die im Kontext der STF Übermittlung relevant sind"
* identifier MS
* identifier ^comment = "Beispielsweise Sterbebuch Nummer oder StAmt_Aktenzeichen"
* identifier.extension contains StfEingangVorgemerktExtension named EingangVorgemerkt ..1 MS
* identifier.extension[EingangVorgemerkt] ^comment = "StAmt_Eingang_vorgemerkt"
* status MS
* type MS
* type from StfDateiTyp (extensible)
* subject MS
* subject only Reference(Patient)
* author MS
* author only Reference(Practitioner or Organization)
* date MS
* content MS
* content.attachment MS
* content.attachment.title MS
* content.attachment.title ^comment = "Dateiname des Bildes ohne Dateiendung"
* context MS
* context.related MS

Extension: StfEingangVorgemerktExtension
Id: StfEingangVorgemerktExtension
Title: "StfEingangVorgemerktExtension"
Description: "TBD"
Context: DocumentReference.identifier
* value[x] only Coding
* valueCoding from StfJaNeinUnbekannt (required)
