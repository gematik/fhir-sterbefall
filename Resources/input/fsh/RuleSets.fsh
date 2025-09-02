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
* ^version = "1.0.0" //TODO
* ^status = #active
* ^experimental = false
* ^publisher = "gematik GmbH" //TODO
* ^date = "2025-09-05"