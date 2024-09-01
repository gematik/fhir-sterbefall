Profile: StfObservationSchwanger
Parent: StfBasisObservation
Id: StfObservationSchwanger
Title: "STF Observation Schwanger"
Description: ""
* code = $sct#77386006
* value[x] only Quantity
* valueQuantity
  * code = #mo
  * unit = "Monat"
  * system = "http://unitsofmeasure.org"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  BeitragZumTod ..1 MS
* component[BeitragZumTod]
  * code from StfObservationCodes (extensible)
  * code = StfObservationCodesErweiterungCS#beitragZumTod
  * value[x] only Coding
  * valueCoding from StfJaNeinUnbekannt (required)