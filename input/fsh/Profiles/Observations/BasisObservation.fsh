Profile: EtbBasisObservation
Parent: Observation
Id: EtbBasisObservation
Title: "eTB Basis Observation"
Description: "Dieses Profil stellt die Basis Observation im Kontext der eTB dar. Alle weiteren Observation sind auf dieser Basis aufbauend."
* status MS
* code MS
* code from EtbObservationCodes
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept or string or Quantity or dateTime
* valueDateTime MS
* valueQuantity MS
* valueCodeableConcept MS
* valueString MS
* note MS
* hasMember MS
* hasMember only Reference(Observation)

ValueSet: EtbObservationCodes
Id: EtbObservationCodes
Title: "eTB Observation Codes"
Description: ""
* $sct#184305005 "Cause of Death"
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
* $sct#398299004 "Time of death"
* $sct#55566008 "Accident"
* $sct#418161006 "Vehicle accident"
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
* #totgeburt "Totgeburt"
* #totgeburt #totgeburtLebensdauer "Lebensdauer einer Totgeburt"
* #totgeburt #totgeburtMehrlingsgeburt "Totgeburt Mehrlingsgeburt"
* #totgeburt #totgeburtSchwangerschaftswoche "Totgeburt Schwangerschaftswoche"
* #totgeburt #totgeburtLaenge "Totgeburt Länge"
* #totgeburt #totgeburtGewicht "Totgeburt Gewicht"
* #leichenfund "Leichenfund"
* #bemerkungStaLa "Bemerkungen des Statistischen Landesamtes" "Bemerkungen des Statistischen Landesamtes zur Verarbeitung der Bescheinigung"