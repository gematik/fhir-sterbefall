Instance: Todesursache-1-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #K57.2
* valueCodeableConcept.text = "Septischer Schock"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* hasMember = Reference(Todesursache-2-TH1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"
* hasMember = Reference(Todesursache-3-TH1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"
* hasMember = Reference(Todesursache-4-TH1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU4 "Todesursache 4"
* hasMember = Reference(Todesursache-5-TH1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU5 "Todesursache 5"

Instance: Todesursache-2-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #A46
* valueCodeableConcept.text = "Erysipel"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-3-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #N17.9 //TODO-DB: Der N17.99 könnte eine ICD-10-GM Code sein. Nicht WHO...
* valueCodeableConcept.text = "Akutes Nierenversagen"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-4-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #T42.0 //Habe ich im CodeSystem beim Bfarm so nicht gefunden
* valueCodeableConcept.text = "Kardiomyopathie, septisch"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

Instance: Todesursache-5-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* insert ExampleKrankheitCode(#I50.0, "Linksherzinsuffizienz")
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein

RuleSet: ExampleKrankheitCode(icd, text)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = {icd}
* valueCodeableConcept.text = {text}
