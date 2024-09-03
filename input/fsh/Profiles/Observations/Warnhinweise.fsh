Profile: StfWarnhinweis
Parent: StfBasisObservation
Id: StfWarnhinweis
Title: "STF Warnhinweis"
Description: "TBD"
* code from StfWarnhinweisCode (required)
* value[x] only CodeableConcept
* valueCodeableConcept.text MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  JNX ..1 MS
* valueCodeableConcept.coding[JNX] from StfJaNeinUnbekannt (required)
