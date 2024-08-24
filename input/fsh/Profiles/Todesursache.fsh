Profile: Todesursache
Parent: Observation
Id: Todesursache
Title: "Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* extension contains
  NichtNatuerlicherTod named NichtNatürlicherTod ..1 MS and
  TodesartUnklar named TodesartUnklar ..1 MS
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
* hasMember MS
* hasMember.reference MS
* hasMember.extension TodesursacheTypExtension named TodesursacheTyp 1..1 MS

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

//TODO: auf hasMember mit Extension auf TU CS
//TODO: derivedFrom verweis auf DocRef des Obduktionsscheins

Extension: TodesursacheTypExtension
Id: TodesursacheTypExtension
Title: "Todesursache Typ"
Context: Observation.hasMember
* value[x] only CodeableConcept
* valueCodeableConcept from TodesursacheComponent (required)