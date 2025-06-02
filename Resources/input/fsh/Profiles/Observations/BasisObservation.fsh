Profile: StfBasisObservation
Parent: Observation
Id: StfBasisObservation
Title: "STF Basis Observation"
Description: "Dieses Profil stellt die Basis Observation im Kontext der STF dar. Alle weiteren Observation sind auf dieser Basis aufbauend."
* status MS
* code MS
* code from StfObservationCodes
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effectiveDateTime MS
* value[x] MS
* note MS
* hasMember MS
* hasMember only Reference(Observation)
* component
* component.code
* component.value[x]

ValueSet: StfObservationCodes
Id: StfObservationCodes
Title: "STF Observation Codes"
Description: "Im Kontext des Sterbefall relevante Observation Codes"
* $sct#108369006 "Tumor"
* $sct#184305005 "Cause of Death"
* include codes from system StfObservationCodesErweiterungCS

CodeSystem: StfObservationCodesErweiterungCS
Id: StfObservationCodesErweiterungCS
Title: "StfObservationCodesErweiterung"
* #nichtNatuerlicherTod "Nicht natürlicher Tod"
* #todesursacheKlassifikation "Klassifikation der Todesursache"