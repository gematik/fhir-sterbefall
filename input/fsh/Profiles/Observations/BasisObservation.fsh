Profile: EtbBasisObservation
Parent: Observation
Id: EtbBasisObservation
Title: "eTB Basis Observation"
Description: "Dieses Profil stellt die Basis Observation im Kontext der eTB dar. Alle weiteren Observation sind auf dieser Basis aufbauend."
* status MS
* code MS
* code from EtbObservationCodes
* subject 1.. MS
* effective[x] MS
* value[x] MS
* value[x] only CodeableConcept or string or Quantity or dateTime
* valueCodeableConcept MS
* valueString MS
* note MS
* hasMember MS

ValueSet: EtbObservationCodes
Id: EtbObservationCodes
Title: "eTB Observation Codes"
Description: ""
* $sct#40733004 "Infektionskrankheit"
* $sct#218209002 "Overexposure to radioactive isotopes"
* $sct#115966001 "Occupational disorder"
* $sct#395099008 "Cancer confirmed"
* $sct#281050002 "Lebendgeburt"
* $sct#237364002 "Stillbirth"
* $sct#77386006 "Schwanger"
* $sct#3390006 "Verification routine"
* $sct#307078008 "Thought commentary"
* $sct#87309006 "Death of unknown cause"
* $sct#184971005 "Statement made to police"
* $sct#439569004 "Resuscitation" //TODO Reanimation und Wiederbelebung in dem Fall das gleiche?
* $sct#419393000 "Dead - suspicious death"
* $sct#75478009 "Vergiftung"
* $sct#108369006 "Tumor" //TODO Klären, ob das nicht zu allgemein ist
* include codes from system EtbObservationCodesErweiterungCS
* include codes from system EtbWarnhinweisCodeCS

CodeSystem: EtbObservationCodesErweiterungCS
Id: EtbObservationCodesErweiterungCS
Title: "EtbObservationCodesErweiterung"
Description: ""
* #sicherGelebt "Sicher Gelebt"
* #sicherTod "Sicher Tod"
* #todesanzeichen "Anzeichen für den Tod"
* #aussereUrsache "Äußeren Ursache"
* #unikausaleTodesursache "Unikausale Todesursache" //TODO Eigenes Profil ICD10
* #totgeburtLebensdauer "Lebensdauer einer Totgeburt"
* #totgeburtMehrlingsgeburt "Totgeburt Mehrlingsgeburt"
* #totgeburtSchwangerschaftswoche "Totgeburt Schwangerschaftswoche"
* #totgeburtLaenge "Totgeburt Länge"
* #totgeburtGewicht "Totgeburt Gewicht"
* #leichenfund "Leichenfund"