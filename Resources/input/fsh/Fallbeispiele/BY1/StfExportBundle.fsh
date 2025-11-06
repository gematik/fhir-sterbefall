Instance: StfExportBundleExample-Test-BY1
InstanceOf: StfExportBundle
Title: "Export Bundle für Sterbefall Vogel, Günther"
Description: "Enthält alle relevanten Ressourcen zum dokumentierten Sterbefall"
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
