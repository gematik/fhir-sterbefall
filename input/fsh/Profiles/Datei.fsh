Profile: StfDatei
Parent: DocumentReference
Id: StfDateien
Title: "STF Dateien"
Description: "Metadaten zu Dateien, die im Kontext der STF Übermittlung relevant sind"
* identifier MS
* identifier.extension contains StfEingangVorgemerktExtension named EingangVorgemerkt ..1 MS
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
* context MS
* context.related MS

Extension: StfEingangVorgemerktExtension
Id: StfEingangVorgemerktExtension
Title: "StfEingangVorgemerktExtension"
Description: ""
Context: DocumentReference.identifier
* value[x] only Coding
* valueCoding from StfJaNeinUnbekannt (required)