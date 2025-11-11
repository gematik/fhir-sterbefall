Instance: StfExportBundleExample-Test-BY1
InstanceOf: StfExportBundle
Usage: #example
* timestamp = "2025-11-06T12:49:00Z"
* type = #collection
* entry[+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-Test-BY1)
  * resource = StfVerstorbenePerson-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-Test-BY1)
  * resource = StfLeichenschau-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-1-Test-BY1)
  * resource = Todesursache-1-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-2-Test-BY1)
  * resource = Todesursache-2-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-3-Test-BY1)
  * resource = Todesursache-3-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-4-Test-BY1)
  * resource = Todesursache-4-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-5-Test-BY1)
  * resource = Todesursache-5-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-Test-BY1)
  * resource = StfOrganisation-GA-Test-BY1
* entry[+]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-Test-BY1)
  * resource = StfExportProvenanceExample-Test-BY1

Instance: StfExportProvenanceExample-Test-BY1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-Test-BY1)
* target[+] = Reference(StfLeichenschau-Test-BY1)
* target[+] = Reference(Todesursache-1-Test-BY1)
* target[+] = Reference(Todesursache-2-Test-BY1)
* target[+] = Reference(Todesursache-3-Test-BY1)
* target[+] = Reference(Todesursache-4-Test-BY1)
* target[+] = Reference(Todesursache-5-Test-BY1)
* target[+] = Reference(StfOrganisation-GA-Test-BY1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-Test-BY1)