Instance: StfExportBundle-Test-VB1
InstanceOf: StfExportBundle
Usage: #example
* timestamp = "2025-11-06T12:49:00Z"
* type = #collection
* entry[+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-Test-VB1)
  * resource = StfVerstorbenePerson-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-Test-VB1)
  * resource = StfLeichenschau-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-1-Test-VB1)
  * resource = Todesursache-1-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-2-Test-VB1)
  * resource = Todesursache-2-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-3-Test-VB1)
  * resource = Todesursache-3-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-4-Test-VB1)
  * resource = Todesursache-4-Test-VB1
* entry[+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-VB1)
  * resource = StfOrganisation-GA-VB1
* entry[+]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-VB1)
  * resource = StfExportProvenanceExample-VB1

Instance: StfExportProvenanceExample-VB1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-Test-VB1)
* target[+] = Reference(StfLeichenschau-Test-VB1)
* target[+] = Reference(Todesursache-1-Test-VB1)
* target[+] = Reference(Todesursache-2-Test-VB1)
* target[+] = Reference(Todesursache-3-Test-VB1)
* target[+] = Reference(Todesursache-4-Test-VB1)
* target[+] = Reference(StfOrganisation-GA-VB1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-VB1)