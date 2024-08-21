Profile: Todesursache
Parent: Observation
Id: Todesursache
Title: "Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* extension contains
  NichtNatuerlicherTod named NichtNatürlicherTod ..1 MS
* code MS
* code.coding = $sct#184305005
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $icd-10-gm (required)
* value[x].coding.system 1.. MS
* value[x].coding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* value[x].coding.version 1.. MS
* value[x].coding.code 1.. MS
* value[x].coding.display 1.. MS
* component MS
* component.code MS
* component.code from TodesursacheComponent (required)
* component.value[x] MS
* component.value[x] only CodeableConcept
* component.value[x] from $icd-10-gm (required)
* component.value[x].coding.system 1.. MS
* component.value[x].coding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* component.value[x].coding.version 1.. MS
* component.value[x].coding.code 1.. MS
* component.value[x].coding.display 1.. MS
* component.extension contains $core-observation-timeOffset named Zeitdifferenz ..1 MS
* component.extension[Zeitdifferenz].valueInteger MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  Todesursache_2 ..1 MS and
  Todesursache_3 ..1 MS and
  Todesursache_4 ..1 MS and
  Todesursache_5 ..1 MS and
  Todesursache_Gesundheitsamt ..1 MS
* component[Todesursache_2].code = TodesursacheComponentCS#TU2
* component[Todesursache_3].code = TodesursacheComponentCS#TU3
* component[Todesursache_4].code = TodesursacheComponentCS#TU4
* component[Todesursache_5].code = TodesursacheComponentCS#TU5
* component[Todesursache_Gesundheitsamt].code = TodesursacheComponentCS#GA

Extension: NichtNatuerlicherTod
Id: NichtNatuerlicherTod
Title: "Nicht-Natürlicher Tod"
Context: Observation
* value[x] only Coding
* valueCoding from YesNoUnknown (required)

Extension: TodesartUnklar
Id: TodesartUnklar
Title: "unklare Todesart"
Context: Observation
* value[x] only Coding
* valueCoding from YesNoUnknown (required)