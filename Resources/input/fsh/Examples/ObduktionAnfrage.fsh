// Beispiel für eine Obduktionsanfrage
Instance: StfObduktionAnfrageExample
InstanceOf: StfObduktionAnfrage
Title: "Beispiel STF Obduktion Anfrage"
Description: "Beispielhafte Instanz einer Obduktionsanfrage"
Usage: #example
* meta.profile = Canonical(StfObduktionAnfrage)

* status = #completed
* intent = #order
* code = $sct#29240004 "Autopsy examination"
* subject = Reference(StfVerstorbenePersonExample)
* authoredOn = "2025-03-01T10:00:00+01:00"
* requester.display = "Dr. Schmidt, Gesundheitsamt Musterstadt"
* reasonCode.text = "Unklare Todesursache, Verdacht auf nicht-natürlichen Tod"