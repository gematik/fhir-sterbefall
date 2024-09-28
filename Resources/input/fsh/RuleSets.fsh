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