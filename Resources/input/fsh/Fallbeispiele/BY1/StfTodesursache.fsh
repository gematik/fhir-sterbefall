Instance: Todesursache-1-Test-BY1
InstanceOf: StfTodesursache
Title: "Haupttodesursache Multiorganversagen"
Description: "Basierend auf der Todesbescheinigung von Vogel, Günther"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #R68.8
* valueCodeableConcept.coding.display = "Multiorganversagen"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* note.text = "Multiorganversagen, Nierenversagen, Herzinsuffizienz, COPD, Vorhofflimmern"
* hasMember = Reference(Todesursache-2-Test-BY1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU2 "Todesursache 2"

Instance: Todesursache-2-Test-BY1
InstanceOf: StfTodesursache
Title: "Folgeursache Nierenversagen"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #N19
* valueCodeableConcept.coding.display = "Nierenversagen"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* hasMember = Reference(Todesursache-3-Test-BY1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"

Instance: Todesursache-3-Test-BY1
InstanceOf: StfTodesursache
Title: "Folgeursache Herzinsuffizienz"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I50.0
* valueCodeableConcept.coding.display = "Herzinsuffizienz"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* hasMember = Reference(Todesursache-4-Test-BY1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU4 "Todesursache 4"

Instance: Todesursache-4-Test-BY1
InstanceOf: StfTodesursache
Title: "Grundleiden COPD"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I44.9
* valueCodeableConcept.coding.display = "COPD"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein
* hasMember = Reference(Todesursache-5-Test-BY1)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU5 "Todesursache 5"

Instance: Todesursache-5-Test-BY1
InstanceOf: StfTodesursache
Title: "Grundleiden Vorhofflimmern"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-Test-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2022"
* valueCodeableConcept.coding.code = #I48.9
* valueCodeableConcept.coding.display = "Vorhofflimmern"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N "Nein"
* component[Quelle].code = StfObservationCodesErweiterungCS#quelle
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Leichenschauschein