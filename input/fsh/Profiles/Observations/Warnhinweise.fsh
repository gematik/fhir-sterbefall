Profile: EtbWarnhinweis
Parent: EtbBasisObservation
Id: EtbWarnhinweis
Title: "eTB Warnhinweis"
Description: ""
* code from EtbWarnhinweisCode (required)
* value[x] only CodeableConcept
* valueCodeableConcept.text MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  JNX ..1 MS
* valueCodeableConcept.coding[JNX] from EtbJaNeinUnbekannt (required)