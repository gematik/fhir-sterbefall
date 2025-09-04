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
  * insert ExampleFullUrl(Patient, StfVerstorbenePersonExample)
  * resource = StfVerstorbenePersonExample

RuleSet: ExampleFullUrl(resource, id)
* fullUrl = "https://mein.fhir-server.local/fhir/{resource}/{id}"