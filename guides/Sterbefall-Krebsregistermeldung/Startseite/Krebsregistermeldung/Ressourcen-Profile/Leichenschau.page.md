---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfLeichenschau
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfLeichenschau'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Procedure.status | code | 1 | 1 | N/A | N/A | true | http://hl7.org/fhir/ValueSet/event-status | required | Preparation, Entered in Error, Completed, In Progress, Not Done, Stopped, Unknown, On Hold |
| Procedure.code | CodeableConcept | 0 | 1 | {"coding":[{"system":"http://snomed.info/sct","code":"29240004"}]} | N/A | true | http://hl7.org/fhir/ValueSet/procedure-code | example |  |
| Procedure.performed[x] | dateTime | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Procedure.performer.actor | Reference | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfLeichenschau'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfLeichenschau' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfLeichenschau' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfLeichenschau' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
