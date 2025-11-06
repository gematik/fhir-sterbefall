Instance: StfVerstorbenePersonPseudonymisiert-Test-BY1
InstanceOf: StfVerstorbenePersonPseudonymisiert
Title: "Pseudonymisierte verstorbene Person"
Description: "Nur mit minimalen Identifikatoren"
Usage: #example

* identifier[IdImGesundheitsamt].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
* identifier[IdImGesundheitsamt].system = "urn:gesundheitsamt:id"
* identifier[IdImGesundheitsamt].value = "13041938"
* identifier[IdImGesundheitsamt].assigner.display = "Gesundheitsamt Regensburg"

* identifier[Sterbebuchnummer].type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
* identifier[Sterbebuchnummer].system = "urn:gesundheitsamt:sterbebuch"
* identifier[Sterbebuchnummer].value = "220920251815"