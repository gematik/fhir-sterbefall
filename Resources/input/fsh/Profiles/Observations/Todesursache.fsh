Profile: StfTodesursache
Parent: StfBasisObservation
Id: StfTodesursache
Title: "STF Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* insert Meta
* code MS
* code.coding = $sct#184305005
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime ^comment = "Beginn der Krankheit"
* performer MS
  * ^comment = "Referenz auf den oder die ausstellende Arztin"
* value[x] 0.. MS
* value[x] only CodeableConcept
//* valueCodeableConcept from $icd-10-who (required)
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.display MS
  * ^comment = "Im Display sind nur die offiziell in ICD-10 gelisteten Bezeichnungen zu verwenden. Freitexte sind im Text-Element zu hinterlegen."
* valueCodeableConcept.text MS
* dataAbsentReason MS
* dataAbsentReason ^comment = "Todesart ungeklärt
Wenn Todesart = ungeklärt ODER
= schwebende Ermittlung
dann j
sonst n"
* hasMember MS
* hasMember ^comment = "Verknüpfung von nachgelagerten Todesursachen. Alle weiteren Todesursachen, die zur Haupttodesursache geführt haben, werden über hasMember referenziert. Jede dieser Todesursachen enthält eine Extension, die den Typ der Todesursache (z.B. Todesursache 2, Todesursache 3 etc.) angibt. Die weiteren Todesursachen selber dürfen keine hasMember Referenzen enthalten."
* hasMember.reference MS
* hasMember.extension contains StfTodesursacheTypExtension named TodesursacheTyp 1..1 MS
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
  Details ..1 MS and
  ZeitdauerBeginnBisTod ..1 MS and
  Quelle ..1 MS
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
  * value[x] only CodeableConcept
  * valueCodeableConcept.coding from StfJaNeinUnbekannt (required)
* component[ZeitdauerBeginnBisTod]
  * ^comment = "Angabe der Zeitdauer von Beginn der Krankheit bis zum Tod in beliebiger Angabe"
  * code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
  * value[x] only string
  * valueString MS
* component[Details]
  * ^comment = "Weitere Angaben zur Klassifikation der Todesursache, z.B. bei Unfall, Vergiftung,  Gewalteinwirkung, Selbsttötung sowie bei Komplikationen medizinischer Behandlung Äußere Ursache der Schädigung (Angaben über den Hergang); bei Vergiftungen zusätzlich Angabe des Mittels"
  * code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
  * value[x] only CodeableConcept
  //* valueCodeableConcept from $icd-10-who (required)
  * valueCodeableConcept.coding.system 1.. MS
  * valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
  * valueCodeableConcept.coding.version 1.. MS
  * valueCodeableConcept.coding.code 1.. MS
  * valueCodeableConcept.coding.display MS
  * valueCodeableConcept.text MS
* component[Quelle]
  * ^comment = "Quellangabe der Information. Z.B. ob die Todesursache aus dem Leichenschauschein oder dem Obduktionsschein stammt."
  * code = StfObservationCodesErweiterungCS#quelle
  * value[x] only CodeableConcept
  * valueCodeableConcept from StfDateiTyp (required)


Extension: StfTodesursacheTypExtension
Id: StfTodesursacheTypExtension
Title: "Todesursache Typ"
Context: Observation.hasMember
* insert Meta
* value[x] only CodeableConcept
* valueCodeableConcept from StfTodesursacheCode (extensible)