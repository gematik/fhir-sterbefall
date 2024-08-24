Profile: EtbBasisObservation
Parent: Observation
Id: EtbBasisObservation
Title: "eTB Basis Observation"
Description: ""
* status MS
* code MS
* code from EtbObservationCodes
* subject 1.. MS
* effective[x] MS
* value[x] MS
* value[x] only CodeableConcept or string or integer or dateTime
* valueCodeableConcept MS
* valueString MS
* note MS

ValueSet: EtbObservationCodes
Id: EtbObservationCodes
Title: "eTB Observation Codes"
Description: ""
* $sct#40733004 "Infektionskrankheit"
* $sct#218209002 "Overexposure to radioactive isotopes"
* $sct#115966001 "Occupational disorder"
* $sct#395099008 "Cancer confirmed"
* $sct#281050002 "Lebendgeburt"
* $sct#237364002 "Stillbirth" //TODO Eigenes Profil mit HasMember vom Typ Gewicht, ANgaben zur Totgeburt (CS/VS), Lebensdauer
* $sct#77386006 "Schwanger" //TODO Eigenes Profil mit Metadaten (Monat extension)
* $sct#3390006 "Verification routine" //TODO eigenes Profil mit valueCodableConecpt Binding
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
* #totgeburtLebensdauer "Lebensdauer einer Totgeburt"   
* #totgeburtMehrlingsgeburt "Totgeburt Mehrlingsgeburt"
* #totgeburtSchwangerschaftswoche "Totgeburt Schwangerschaftswoche"
* #totgeburtLaenge "Totgeburt Länge"
* #totgeburtGewicht "Totgeburt Gewicht"
* #leichenfund "Leichenfund"