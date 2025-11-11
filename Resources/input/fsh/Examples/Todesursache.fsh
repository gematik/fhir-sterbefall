Instance: StfTodesursacheExample
InstanceOf: StfTodesursache
Title: "Beispiel STF Todesursache"
Description: "Beispielinstanz einer Todesursache nach dem StfTodesursache-Profil"
Usage: #example

* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePersonExample) "Max Mustermann"
* effectiveDateTime = "2023-07-10"  // Beginn der Krankheit
* performer = Reference(StfArztExample)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2023"
* valueCodeableConcept.coding.code = #I21.0
* valueCodeableConcept.coding.display = "Akuter transmuraler Myokardinfarkt der Vorderwand"
* note.text = "Patient erlitt einen massiven Herzinfarkt nach längerer kardialer Vorgeschichte mit koronarer Herzkrankheit und Bluthochdruck."

// Components
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

* component[Details].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[Details].valueCodeableConcept.coding = $icd-10-who#I25.1 "Atherosklerose des Herzens"
* component[Details].valueCodeableConcept.coding.version = "2023"

* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS#Obduktionsschein

// Nachgelagerte Todesursache (Grundleiden)
* hasMember = Reference(TodesursacheGrundleiden)
* hasMember.extension[TodesursacheTyp].valueCodeableConcept = StfTodesursacheCodeCS#TU3 "Todesursache 3"

// Referenzierte Instanz für Grundleiden
Instance: TodesursacheGrundleiden
InstanceOf: StfTodesursache
Title: "Grundleiden der Todesursache"
Usage: #example
* status = #final
* code = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePersonExample)
* effectiveDateTime = "2020-01-15"  // Beginn des Grundleidens
* performer = Reference(StfArztExample)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2023"
* valueCodeableConcept.coding.code = #I25.9
* valueCodeableConcept.coding.display = "Chronische ischämische Herzkrankheit, nicht näher bezeichnet"

// Component für natürlichen Tod auch hier setzen
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[Quelle].valueCodeableConcept = StfDateiTypCS#Leichenschauschein