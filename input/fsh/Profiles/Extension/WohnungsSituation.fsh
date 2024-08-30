Extension: StfWohnungsSituationExtension
Id: StfWohnungsSituationExtension
Title: "STF Situation der Wohnung"
Description: "Angaben zur Situation der Wohnung"
Context: Patient
* extension contains
  status ..1 and
  auszugsdatum ..1
* extension[status].value[x] only Coding //TODO ValueSet?
* extension[auszugsdatum].value[x] only date