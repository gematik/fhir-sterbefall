Profile: EtbObservationIdentifikation
Parent: EtbBasisObservation
Id: EtbObservationIdentifikation
Title: "eTB Observation Identifikation"
Description: ""
* code = $sct#43390006
* value[x] only CodeableConcept
* valueCodeableConcept from EtbIdentitaetFeststellungMethode (extensible)

Profile: EtbObservationTodesanzeichen
Parent: EtbBasisObservation
Id: EtbObservationTodesanzeichen
Title: "eTB Observation Todesanzeichen"
Description: ""
* code = EtbObservationCodesErweiterungCS#todesanzeichen
* value[x] only CodeableConcept
* valueCodeableConcept from EtbTodesanzeichen (extensible)

Profile: EtbObservationAussereUrsache
Parent: EtbBasisObservation
Id: EtbObservationAussereUrsache
Title: "eTB Observation äußere Ursache"
Description: ""
* code = EtbObservationCodesErweiterungCS#aussereUrsache
* value[x] only CodeableConcept
* valueCodeableConcept.text MS

Profile: EtbObservationUnikausaleTodesursache
Parent: EtbBasisObservation
Id: EtbObservationUnikausaleTodesursache
Title: "eTB Observation unikausale Todesursache"
Description: ""
* code = EtbObservationCodesErweiterungCS#unikausaleTodesursache
* value[x] only CodeableConcept
* valueCodeableConcept from $icd-10-gm (required)