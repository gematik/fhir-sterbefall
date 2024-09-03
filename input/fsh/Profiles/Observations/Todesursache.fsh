Profile: StfTodesursache
Parent: StfBasisObservation
Id: StfTodesursache
Title: "STF Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* code MS
* code.coding = $sct#184305005
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] 0.. MS
* value[x] only CodeableConcept
* value[x] from $icd-10-gm (required)
* value[x].coding.system 1.. MS
* value[x].coding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* value[x].coding.version 1.. MS
* value[x].coding.code 1.. MS
* value[x].coding.display 1.. MS
* dataAbsentReason MS
* hasMember MS
* hasMember.reference MS
* hasMember.extension contains StfTodesursacheTypExtension named TodesursacheTyp 1..1 MS
* performer MS
* performer.extension contains StfFestlegungTodesursacheExtension named FestlegungTodesursache ..1 MS
* note MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  NichtNatuerlicherTod ..1 MS
* component[NichtNatuerlicherTod]
  * code from StfObservationCodes (extensible)
  * code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
  * valueCodeableConcept from StfJaNeinUnbekannt (required)

Extension: StfTodesursacheTypExtension
Id: StfTodesursacheTypExtension
Title: "Todesursache Typ"
Context: Observation.hasMember
* value[x] only CodeableConcept
* valueCodeableConcept from StfTodesursacheCode (extensible)

Extension: StfFestlegungTodesursacheExtension
Id: StfFestlegungTodesursacheExtension
Title: "STF Festlegung Todesursache Extension"
Description: "TBD"
Context: Observation.performer
* value[x] only Coding
* valueCoding from StfFestlegungTodesursache