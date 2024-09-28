Profile: StfSterbeurkundeAusstellung
Parent: Provenance
Id: StfSterbeurkundeAusstellung
Title: "STF Sterbeurkunde Ausstellung"
Description: "TBD"
* target only Reference(Patient)
* recorded MS
* recorded ^comment = "Sterbefall beurkundet Datum"
* reason MS
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#DECSD
* activity MS
* activity = http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion#LA
* agent MS
* agent.who MS
* agent.who only Reference(Organization)
* agent.who ^comment = "Verweis auf das beurkundende Standesamt"