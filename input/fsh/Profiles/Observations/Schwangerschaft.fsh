Profile: StfObservationSchwanger
Parent: StfBasisObservation
Id: StfObservationSchwanger
Title: "STF Observation Schwanger"
Description: "TBD"
* code = $sct#77386006
* value[x] only Quantity
* valueQuantity
  * code = #mo
  * unit = "Monat"
  * system = "http://unitsofmeasure.org"
* component MS
* component.code MS
* component.value[x] MS
* component.valueCodeableConcept MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  BeitragZumTod ..1 MS
* component[BeitragZumTod]
  * code from StfObservationCodes (extensible)
  * code = StfObservationCodesErweiterungCS#beitragZumTod
  * value[x] only CodeableConcept
  * valueCodeableConcept from StfJaNeinUnbekannt (required)
