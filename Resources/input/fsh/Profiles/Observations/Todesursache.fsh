Profile: StfTodesursache
Parent: StfBasisObservation
Id: StfTodesursache
Title: "STF Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* code MS
* code.coding = $sct#184305005
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime ^comment = "Beginn der Krankheit"
* value[x] 0.. MS
* value[x] only CodeableConcept
* value[x] from $icd-10-who (required)
* value[x].coding.system 1.. MS
* value[x].coding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* value[x].coding.version 1.. MS
* value[x].coding.code 1.. MS
* value[x].coding.display 1.. MS
* dataAbsentReason MS
* dataAbsentReason ^comment = "Todesart ungeklärt
Wenn Todesart = ungeklärt ODER
= schwebende Ermittlung
dann j
sonst n"
* hasMember MS
* hasMember ^comment = "Verknüpfung von nachgelagerten Todesursachen"
* hasMember.reference MS
* hasMember.extension contains StfTodesursacheTypExtension named TodesursacheTyp 1..1 MS
* performer MS
* performer.extension contains StfFestlegungTodesursacheExtension named FestlegungTodesursache ..1 MS
* performer.extension[FestlegungTodesursache] ^comment = "Durch wen wurde die Todesursache festegestellt"
* note MS
* note ^comment = "Nähere Angaben zur Todesursache und zu Begleiterkrankung (Epikrise)"
* component MS
* component.code from StfObservationCodes (extensible)
* component.code MS
* component.value[x] MS
* component.valueCodeableConcept MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  NichtNatuerlicherTod ..1 MS and
  Details ..1 MS
* component[NichtNatuerlicherTod]
  * ^comment = "Anhaltspunkte für einen nicht-natürlichen Tod

Wenn Todesart = natürlich, 
dann n

Wenn Todesart =  nicht natürlich ODER 
= Tötung ODER 
= Selbsttötung ODER 
= Unfall ODER
= Komplikationen medizinischer Behandlungen ODER
= Ereignis, dessen nähere Umstände unbestimmt dann j 

Wenn Todesart = leer, 
dann ka;"
  * code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
  * valueCodeableConcept from StfJaNeinUnbekannt (required)
* component[Details]
  * ^comment = "Weitere Angaben zur Klassifikation der Todesursache, z.B. bei Unfall, Vergiftung,  Gewalteinwirkung, Selbsttötung sowie bei Komplikationen medizinischer Behandlung Äußere Ursache der Schädigung (Angaben über den Hergang); bei Vergiftungen zusätzlich Angabe des Mittels"
  * code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
  * valueCodeableConcept from $icd-10-who (required)

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