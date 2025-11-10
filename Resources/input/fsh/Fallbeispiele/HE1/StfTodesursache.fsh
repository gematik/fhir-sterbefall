Instance: Todesursache-1-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I61.3
* valueCodeableConcept.coding.display = "Ponsblutung"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Magenkarzinom"
* hasMember = Reference(Todesursache-2-HE1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"
* hasMember = Reference(Todesursache-3-HE1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"

Instance: Todesursache-2-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I64
* valueCodeableConcept.coding.display = "Apoplex"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-3-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I21.4
* valueCodeableConcept.coding.display = "NSTEMI"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein