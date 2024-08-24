Profile: 
Parent: 
Id: 
Title: ""
Description: ""
* status MS
* code MS
* code from EtbObservationCodes
* subject 1.. MS
* effective[x] MS
* value[x] MS
* value[x] only CodeableConcept or string or integer
* valueCodeableConcept MS
* valueString MS
* note MS

ValueSet: EtbObservationCodes
Id: EtbObservationCodes
Title: "eTB Observation Codes"
Description: ""
* $sct#40733004 "Infektionskrankheit" "Krankheit durch Infektion"
* $sct#218209002 "Overexposure to radioactive isotopes" "Overexposure to radioactive isotopes (event)"
* $sct#115966001 "Occupational disorder" "Occupational disorder (disorder)"
* $scr#395099008 "Cancer confirmed" "Cancer confirmed (situation)"
* $sct#281050002 "Lebendgeburt" "Lebendgeburt"
* $sct#237364002 "Stillbirth" "Stillbirth (finding)" //TODO Eigenes Profil mit HasMember vom Typ Gewicht
* $sct#77386006 "Schwanger" "Schwangerschaft" //TODO Eigenes Profil mit Metadaten (Monat extension)
* $sct#3390006 "Verification routine" "Verification routine (procedure)" //TODO eigenes Profil mit valueCodableConecpt Binding
* $sct#307078008 "Thought commentary"
* $sct#87309006 "Death of unknown cause"
* $sct#184971005 "Statement made to police"
* $sct#439569004 "Resuscitation" //TODO Reanimation und Wiederbelebung in dem Fall das gleiche?
* $sct#419393000 "Dead - suspicious death"
* $sct#75478009 "Vergiftung"
* $sct#108369006 "Tumor" //TODO Klären, ob das nicht zu allgemein ist
* include codes from system EtbObservationCodesErweiterungCS

CodeSystem: EtbObservationCodesErweiterungCS
Id: EtbObservationCodesErweiterungCS
Title: "EtbObservationCodesErweiterung"
Description: ""
* #sicherGelebt "Sicher Gelebt"
* #sicherTod "Sicher Tod"
* #todesanzeichen "Anzeichen für den Tod" //TODO Eigenes Profil mit Binding
* #aussereUrsache "Äußeren Ursache" //TODO Eigenes Profil
* #unikausaleTodesursache "Unikausale Todesursache" //TODO Eigenes Profil ICD10