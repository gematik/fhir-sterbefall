RuleSet: CodConObsExt(system, code, vs)
* code = {system}#{code}
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from {vs} (extensible)

RuleSet: CodConObsReq(system, code, vs)
* code = {system}#{code}
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from {vs} (required)

RuleSet: Meta
* ^version = "1.0.0-beta.3"
* ^status = #active
* ^experimental = false
* ^publisher = "ELFA Maßnahme Interoperabilität"
* ^date = "2025-09-05"

RuleSet: ExampleFullUrl(resource, id)
* fullUrl = "https://mein.fhir-server.local/fhir/{resource}/{id}"