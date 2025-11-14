Instance: Todesursache-1-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2026"
* valueCodeableConcept.coding.code = #J18.0
* valueCodeableConcept.text = "Exitus letalis bei Bronchopneumonie (beidseitig)"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Weitere relevante Erkrankungen: COPD, Vorhofflimmern, Diabetes mellitus Typ 2"
* hasMember = Reference(Todesursache-2-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"
* hasMember = Reference(Todesursache-3-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"
* hasMember = Reference(Todesursache-4-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU4 "Todesursache 4"

Instance: Todesursache-2-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2026"
* valueCodeableConcept.coding.code = #I50.1
* valueCodeableConcept.text = "Dekompensierte Herzinsuffizienz"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-3-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2026"
* valueCodeableConcept.coding.code = #N17.9
* valueCodeableConcept.text = "Akutes Nierenversagen"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-4-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2026"
* valueCodeableConcept.coding.code = #I10
* valueCodeableConcept.text = "Arterielle Hypertonie"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
