Instance: ExportBundleExample
InstanceOf: StfExportBundle
Title: "Beispiel Export Bundle"
Description: "Beispiel Export Bundle"
Usage: #example
* timestamp = "2023-10-15T14:28:00Z"
* type = #collection
* entry[+]
  * insert ExampleFullUrl(PractitionerRole, StfArztZuordnungExample)
  * resource = StfArztZuordnungExample
* entry[+]
  * insert ExampleFullUrl(Practitioner, StfArztExample)
  * resource = StfArztExample
* entry[+]
  * insert ExampleFullUrl(DocumentReference, StfDateiExample)
  * resource = StfDateiExample
* entry[+]
  * insert ExampleFullUrl(Procedure, StfLeichenschauExample)
  * resource = StfLeichenschauExample
* entry[+]
  * insert ExampleFullUrl(Organization, StfOrganisationExample)
  * resource = StfOrganisationExample
* entry[+]
  * insert ExampleFullUrl(Provenance, StfSterbeurkundeAusstellungExample)
  * resource = StfSterbeurkundeAusstellungExample
* entry[+]
  * insert ExampleFullUrl(Observation, StfTodesursacheExample)
  * resource = StfTodesursacheExample
* entry[+]
  * insert ExampleFullUrl(Observation, TodesursacheGrundleiden)
  * resource = TodesursacheGrundleiden
* entry[+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePersonExample)
  * resource = StfVerstorbenePersonExample
* entry[+]
  * insert ExampleFullUrl(Organization, StfOrganisationGesundheitsamtRegensburg)
  * resource = StfOrganisationGesundheitsamtRegensburg
* entry[+]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample)
  * resource = StfExportProvenanceExample
* entry[+]
  * insert ExampleFullUrl(ServiceRequest, StfObduktionAnfrageExample)
  * resource = StfObduktionAnfrageExample

Instance: StfExportProvenanceExample
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfArztZuordnungExample)
* target[+] = Reference(StfArztExample)
* target[+] = Reference(StfDateiExample)
* target[+] = Reference(StfLeichenschauExample)
* target[+] = Reference(StfOrganisationExample)
* target[+] = Reference(StfSterbeurkundeAusstellungExample)
* target[+] = Reference(StfTodesursacheExample)
* target[+] = Reference(TodesursacheGrundleiden)
* target[+] = Reference(StfVerstorbenePersonExample)
* target[+] = Reference(StfOrganisationGesundheitsamtRegensburg)
* target[+] = Reference(StfObduktionAnfrageExample)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisationGesundheitsamtRegensburg)