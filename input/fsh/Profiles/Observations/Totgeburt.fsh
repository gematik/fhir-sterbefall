Profile: StfObservationTotgeburt
Parent: StfBasisObservation
Id: StfObservationTotgeburt
Title: "STF Observation Totgeburt"
Description: ""
* code = $sct#237364002
* value[x] only CodeableConcept
* valueCodeableConcept from StfAngabenTotgeburt (extensible)
* hasMember.extension contains StfTotgeburtWeitereInformation named TodgeburtWeitereInformationen 1..1 MS
* hasMember ^slicing.discriminator.type = #pattern
* hasMember ^slicing.discriminator.path = "extension:TodgeburtWeitereInformationen.valueCoding"
* hasMember ^slicing.rules = #open
* hasMember contains 
  Gewicht ..1 MS and
  Länge ..1 MS and
  Lebensdauer ..1 MS and
  Mehrlingsgeburt ..1 MS and
  Schwangerschaftswoche ..1 MS
* hasMember[Gewicht].extension[TodgeburtWeitereInformationen].valueCoding = StfObservationCodesErweiterungCS#totgeburtGewicht
* hasMember[Gewicht] only Reference(Observation)
* hasMember[Länge].extension[TodgeburtWeitereInformationen].valueCoding = StfObservationCodesErweiterungCS#totgeburtLaenge
* hasMember[Länge] only Reference(Observation)
* hasMember[Lebensdauer].extension[TodgeburtWeitereInformationen].valueCoding = StfObservationCodesErweiterungCS#totgeburtLebensdauer
* hasMember[Lebensdauer] only Reference(Observation)
* hasMember[Mehrlingsgeburt].extension[TodgeburtWeitereInformationen].valueCoding = StfObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* hasMember[Mehrlingsgeburt] only Reference(Observation)
* hasMember[Schwangerschaftswoche].extension[TodgeburtWeitereInformationen].valueCoding = StfObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* hasMember[Schwangerschaftswoche] only Reference(Observation)

Profile: StfObservationTotgeburtGewicht
Parent: $de.basis-koerpergewicht
Id: StfObservationTotgeburtGewicht
Title: "STF Observation Totgeburt - Gewicht"
Description: ""
* status MS
* category MS
* code MS //TODO Sollen wir LOINC und SCT vorgeben?
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
  STF-Kontext ..1 MS
* code.coding[STF-Kontext] = StfObservationCodesErweiterungCS#totgeburtGewicht
* value[x] MS
* valueQuantity MS
* valueQuantity
  * value MS
  * code MS
  * code = #g
  * system MS
  * unit MS
  * unit = "gram"

Profile: StfObservationTotgeburtMehrlingsgeburt
Parent: StfBasisObservation
Id: StfObservationTotgeburtMehrlingsgeburt
Title: "STF Observation Totgeburt - Mehrlingsgeburt"
Description: ""
* code = StfObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* value[x] only CodeableConcept
* valueCodeableConcept from StfJaNeinUnbekanntVS (required)

Profile: StfObservationTotgeburtSchwangerschaftswoche
Parent: StfBasisObservation
Id: StfObservationTotgeburtSchwangerschaftswoche
Title: "STF Observation Totgeburt - Schwangerschaftswoche"
Description: ""
* code = StfObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* value[x] only Quantity
* valueQuantity
  * code = #wk
  * unit = "Woche"
  * system = "http://unitsofmeasure.org"

Profile: StfObservationTotgeburtLaenge
Parent: StfBasisObservation
Id: StfObservationTotgeburtLaenge
Title: "STF Observation Totgeburt - Länge"
Description: ""
* code = StfObservationCodesErweiterungCS#totgeburtLaenge
* value[x] only Quantity
* valueQuantity
  * code = #cm
  * unit = "Zentimeter"
  * system = "http://unitsofmeasure.org"

Extension: StfTotgeburtWeitereInformation
Id: StfTotgeburtWeitereInformation
Title: "STF Weitere Information zur Totgeburt"
Description: ""
Context: Observation.hasMember
* value[x] only Coding
* valueCoding from StfTotgeburtWeitereInformationVS

ValueSet: StfTotgeburtWeitereInformationVS
Id: StfTotgeburtWeitereInformationVS
Title: "STF ValueSet mit Codes zu weiteren Information zur Totgeburt"
Description: ""
* StfObservationCodesErweiterungCS#totgeburtLebensdauer
* StfObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* StfObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* StfObservationCodesErweiterungCS#totgeburtLaenge
* StfObservationCodesErweiterungCS#totgeburtGewicht