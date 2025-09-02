---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObduktion
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObduktion'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Procedure.basedOn | Reference | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.status | code | 1 | 1 | N/A | N/A | true | http://hl7.org/fhir/ValueSet/event-status | required | Preparation, Entered in Error, Completed, In Progress, Not Done, Stopped, Unknown, On Hold |
| Procedure.code | CodeableConcept | 0 | 1 | {"coding":[{"system":"http://snomed.info/sct","code":"29240004"}]} | N/A | true | http://hl7.org/fhir/ValueSet/procedure-code | example |  |
| Procedure.performed[x] | dateTime | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.asserter | Reference | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.asserter.display | string | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer | BackboneElement | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer.function | CodeableConcept | 0 | 1 | N/A | N/A | true | http://gematik.de/fhir/oegd/stf/ValueSet/StfOrganisationsTypObduktionVS | extensible | Gerichtsmedizinisches Institut, Pathologisches Institut |
| Procedure.performer.actor | Reference | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer.actor.display | string | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer:GerichtsmedizinischesInstitut | BackboneElement | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer:GerichtsmedizinischesInstitut.function | CodeableConcept | 1 | 1 | {"coding":[{"code":"GerichtsmedInst"}]} | N/A | false | http://gematik.de/fhir/oegd/stf/ValueSet/StfOrganisationsTypObduktionVS | extensible | Gerichtsmedizinisches Institut, Pathologisches Institut |
| Procedure.performer:PathologischesInstitut | BackboneElement | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer:PathologischesInstitut.function | CodeableConcept | 1 | 1 | {"coding":[{"code":"PathINst"}]} | N/A | false | http://gematik.de/fhir/oegd/stf/ValueSet/StfOrganisationsTypObduktionVS | extensible | Gerichtsmedizinisches Institut, Pathologisches Institut |
| Procedure.location | Reference | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.location.display | string | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.report | Reference | 0 | * | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObduktion'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObduktion' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Terminology-Bindings
<!-- TODO: FQL funktioniert noch nicht wie vorgesehen-->
@```
from 
    StructureDefinition
where 
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObduktion' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfObduktion' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
