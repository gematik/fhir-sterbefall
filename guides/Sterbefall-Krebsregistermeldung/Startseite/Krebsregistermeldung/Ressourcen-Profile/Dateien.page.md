---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfDateien
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfDateien'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| DocumentReference.identifier | Identifier | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| DocumentReference.status | code | 1 | 1 | N/A | N/A | true | http://hl7.org/fhir/ValueSet/document-reference-status | required | Current, Superseded, Entered in Error |
| DocumentReference.type | CodeableConcept | 0 | 1 | N/A | N/A | true | http://gematik.de/fhir/oegd/stf/ValueSet/StfDateiTypVS | extensible | Sterbeurkunde, Obduktionsschein |
| DocumentReference.subject | Reference | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| DocumentReference.date | instant | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| DocumentReference.author | Reference | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| DocumentReference.context | BackboneElement | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| DocumentReference.context.related | Reference | 0 | * | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfDateien'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfDateien' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfDateien' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfDateien' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
