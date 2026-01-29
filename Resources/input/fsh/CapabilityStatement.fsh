Instance: StfKrebsregistermeldungCpS
InstanceOf: CapabilityStatement
Usage: #definition
* version = "1.0.0"
* status = #active
* experimental = false
* publisher = "ELFA Maßnahme Interoperabilität"
* date = "2026-01-26"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* url = "https://gematik.de/fhir/isik/CapabilityStatement/ISiKCapabilityStatementFormularDatenQuelleAkteur"
* name = "Stf Krebsregistermeldung CapabilityStatement"
* title = "Stf Krebsregistermeldung CapabilityStatement"
* rest
  * mode = #server
  * resource[+]
    * type = #Provenance
    * insert Expectation(#SHALL)
    * supportedProfile[+] = Canonical(StfExportProvenance)
      * insert Expectation(#SHALL)
    * interaction[+]
      * insert Expectation(#SHALL)
      * code = #read
    * interaction[+]
      * insert Expectation(#SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(#SHALL)
      * name = "_lastUpdated"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-lastupdated"
      * type = #datetime
      * documentation = 
        "**Beispiel:**    
        `GET [base]/Provenance?_lastUpdated=2025-01-25T13:45:00+02:00`"