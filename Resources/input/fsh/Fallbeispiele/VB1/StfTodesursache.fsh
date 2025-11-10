Instance: Todesursache-1-Test-VB1
InstanceOf: StfTodesursache
Title: "Haupttodesursache Bronchopneumonie"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #J18.0
* valueCodeableConcept.coding.display = "Exitus letalis bei Bronchopneumonie (beidseitig)"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Weitere relevante Erkrankungen: COPD, Vorhofflimmern, Diabetes mellitus Typ 2"
* hasMember = Reference(Todesursache-2-Test-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"
* hasMember = Reference(Todesursache-3-Test-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"
* hasMember = Reference(Todesursache-4-Test-VB1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU4 "Todesursache 4"

Instance: Todesursache-2-Test-VB1
InstanceOf: StfTodesursache
Title: "Folgeursache Dekompensierte Herzinsuffizienz"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I50.1
* valueCodeableConcept.coding.display = "Dekompensierte Herzinsuffizienz"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-3-Test-VB1
InstanceOf: StfTodesursache
Title: "Grundleiden Nierenversagen"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #N19
* valueCodeableConcept.coding.display = "Akute Nierenversagen"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-4-Test-VB1
InstanceOf: StfTodesursache
Title: "Grundleiden Arterielle Hypertonie"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I10
* valueCodeableConcept.coding.display = "Arterielle Hypertonie"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
