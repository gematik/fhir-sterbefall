Instance: Todesursache-1-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* code.coding[TodesursacheTyp] = StfTodesursacheCodeCS#TU1 "Todesursache 1"
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #S06.5
* valueCodeableConcept.text = "akutes subdurales Hämatom"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#Y
* component[Details].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[Details].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* component[Details].valueCodeableConcept.coding.version = "2019"
* component[Details].valueCodeableConcept.coding.code = #W19
* component[Details].valueCodeableConcept.text = "Sturz von unbestimmter Höhe"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Sturz im Krankenhaus auf dem Weg zur Toilette"
* hasMember[+] = Reference(Todesursache-2-BY2)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"
* hasMember[+] = Reference(Todesursache-4-BY2)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU4 "Todesursache 4"
* hasMember[+] = Reference(Todesursache-5-BY2)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU5 "Todesursache 5"

Instance: Todesursache-2-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #S72.0
* valueCodeableConcept.text = "Schenkelhalsfraktur"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#Y
* component[Details].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[Details].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* component[Details].valueCodeableConcept.coding.version = "2019"
* component[Details].valueCodeableConcept.coding.code = #W19
* component[Details].valueCodeableConcept.text = "Sturz von unbestimmter Höhe"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-4-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #F03
* valueCodeableConcept.text = "Demenz"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-5-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #C50.9
* valueCodeableConcept.text = "Mamma-CA"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Maligne Neubildung der Brust (Krebs)"
