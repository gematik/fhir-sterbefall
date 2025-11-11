// Beispiel für eine Krebserkrankung Observation
Instance: StfObservationKrebserkrankungExample
InstanceOf: StfObservationKrebserkrankung
Title: "Beispiel STF Observation Krebserkrankung"
Description: "Beispielhafte Instanz einer Observation zur Krebserkrankung"
Usage: #example
* meta.profile = Canonical(StfObservationKrebserkrankung)

* status = #final
* code = $sct#108369006 "Tumor"
* subject = Reference(StfVerstorbenePersonExample)
* effectiveDateTime = "2025-03-02T14:30:00+01:00"
* performer = Reference(Practitioner/rechtsmediziner-beispiel)
* valueCodeableConcept = $v2-0532#Y
* note.text = "Bronchialkarzinom im Oberlappen der rechten Lunge festgestellt bei der Obduktion"


// Beispiel für eine Krebserkrankung - Verneinung
Instance: StfObservationKeineKrebserkrankungExample
InstanceOf: StfObservationKrebserkrankung
Title: "Beispiel STF Observation keine Krebserkrankung"
Description: "Beispielhafte Instanz einer Observation ohne Krebserkrankung"
Usage: #example
* meta.profile = Canonical(StfObservationKrebserkrankung)

* status = #final
* code = $sct#108369006 "Tumor"
* subject = Reference(StfVerstorbenePersonExample)
* effectiveDateTime = "2025-03-02T14:30:00+01:00"
* performer = Reference(Practitioner/rechtsmediziner-beispiel)
* valueCodeableConcept = $v2-0532#N
* note.text = "Keine Hinweise auf maligne Tumorerkrankung bei der Obduktion"