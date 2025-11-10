Instance: StfExportBundle-HE1
InstanceOf: StfExportBundle
Usage: #example
* type = #collection
* timestamp = "2025-01-01T01:17:00+01:00"
* entry[+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-HE1)
  * resource = StfVerstorbenePerson-HE1
* entry[+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-HE1)
  * resource = StfLeichenschau-HE1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-1-HE1)
  * resource = Todesursache-1-HE1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-2-HE1)
  * resource = Todesursache-2-HE1
* entry[+]
  * insert ExampleFullUrl(Observation, Todesursache-3-HE1)
  * resource = Todesursache-3-HE1
* entry[+]
  * insert ExampleFullUrl(Observation, StfObservationKrebserkrankung-HE1)
  * resource = StfObservationKrebserkrankung-HE1