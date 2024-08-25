Profile: EtbObservationTotgeburt
Parent: EtbBasisObservation
Id: EtbObservationTotgeburt
Title: "eTB Observation Totgeburt"
Description: ""
* code = $sct#237364002
* value[x] only CodeableConcept
* valueCodeableConcept from EtbAngabenTotgeburt (extensible)
* hasMember.extension contains EtbTotgeburtWeitereInformation named TodgeburtWeitereInformationen 1..1 MS
* hasMember ^slicing.discriminator.type = #pattern
* hasMember ^slicing.discriminator.path = "extension:TodgeburtWeitereInformationen.valueCoding"
* hasMember ^slicing.rules = #open
* hasMember contains 
  Gewicht ..1 MS and
  Länge ..1 MS and
  Lebensdauer ..1 MS and
  Mehrlingsgeburt ..1 MS and
  Schwangerschaftswoche ..1 MS
* hasMember[Gewicht].extension[TodgeburtWeitereInformationen].valueCoding = EtbObservationCodesErweiterungCS#totgeburtGewicht
* hasMember[Gewicht] only Reference(Observation)
* hasMember[Länge].extension[TodgeburtWeitereInformationen].valueCoding = EtbObservationCodesErweiterungCS#totgeburtLaenge
* hasMember[Länge] only Reference(Observation)
* hasMember[Lebensdauer].extension[TodgeburtWeitereInformationen].valueCoding = EtbObservationCodesErweiterungCS#totgeburtLebensdauer
* hasMember[Lebensdauer] only Reference(Observation)
* hasMember[Mehrlingsgeburt].extension[TodgeburtWeitereInformationen].valueCoding = EtbObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* hasMember[Mehrlingsgeburt] only Reference(Observation)
* hasMember[Schwangerschaftswoche].extension[TodgeburtWeitereInformationen].valueCoding = EtbObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* hasMember[Schwangerschaftswoche] only Reference(Observation)

Profile: EtbObservationTotgeburtGewicht
Parent: $de.basis-koerpergewicht
Id: EtbObservationTotgeburtGewicht
Title: "eTB Observation Totgeburt - Gewicht"
Description: ""
* status MS
* category MS
* code MS //TODO Sollen wir LOINC und SCT vorgeben?
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
  eTB-Kontext ..1 MS
* code.coding[eTB-Kontext] = EtbObservationCodesErweiterungCS#totgeburtGewicht
* value[x] MS
* valueQuantity MS
* valueQuantity
  * value MS
  * code MS
  * code = #g
  * system MS
  * unit MS
  * unit = "gram"

Profile: EtbObservationTotgeburtMehrlingsgeburt
Parent: EtbBasisObservation
Id: EtbObservationTotgeburtMehrlingsgeburt
Title: "eTB Observation Totgeburt - Mehrlingsgeburt"
Description: ""
* code = EtbObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoUnknownVS (required)

Profile: EtbObservationTotgeburtSchwangerschaftswoche
Parent: EtbBasisObservation
Id: EtbObservationTotgeburtSchwangerschaftswoche
Title: "eTB Observation Totgeburt - Schwangerschaftswoche"
Description: ""
* code = EtbObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* value[x] only Quantity
* valueQuantity
  * code = #wk
  * unit = "Woche"
  * system = "http://unitsofmeasure.org"

Profile: EtbObservationTotgeburtLaenge
Parent: EtbBasisObservation
Id: EtbObservationTotgeburtLaenge
Title: "eTB Observation Totgeburt - Länge"
Description: ""
* code = EtbObservationCodesErweiterungCS#totgeburtLaenge
* value[x] only Quantity
* valueQuantity
  * code = #cm
  * unit = "Zentimeter"
  * system = "http://unitsofmeasure.org"

Extension: EtbTotgeburtWeitereInformation
Id: EtbTotgeburtWeitereInformation
Title: "eTB Weitere Information zur Totgeburt"
Description: ""
Context: Observation.hasMember
* value[x] only Coding
* valueCoding from EtbTotgeburtWeitereInformationVS

ValueSet: EtbTotgeburtWeitereInformationVS
Id: EtbTotgeburtWeitereInformationVS
Title: "eTB ValueSet mit Codes zu weiteren Information zur Totgeburt"
Description: ""
* EtbObservationCodesErweiterungCS#totgeburtLebensdauer
* EtbObservationCodesErweiterungCS#totgeburtMehrlingsgeburt
* EtbObservationCodesErweiterungCS#totgeburtSchwangerschaftswoche
* EtbObservationCodesErweiterungCS#totgeburtLaenge
* EtbObservationCodesErweiterungCS#totgeburtGewicht