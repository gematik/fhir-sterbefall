---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObservationKrebserkrankung
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObservationKrebserkrankung'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Observation.status | code | 1 | 1 | N/A | N/A | true | http://hl7.org/fhir/ValueSet/observation-status | required | Final, Registered, Cancelled, Amended, Entered in Error, Preliminary, Corrected, Unknown |
| Observation.code | CodeableConcept | 1 | 1 | N/A | N/A | true | http://gematik.de/fhir/oegd/stf/ValueSet/StfObservationCodes | required | Tumor, Nicht natürlicher Tod, Klassifikation der Todesursache |
| Observation.subject | Reference | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Observation.effective[x] | dateTime, Period, Timing, instant | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Observation.effective[x]:effectiveDateTime | dateTime | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Observation.value[x] | CodeableConcept | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Observation.note | Annotation | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Observation.hasMember | Reference | 0 | * | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObservationKrebserkrankung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObservationKrebserkrankung' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfObservationKrebserkrankung' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfObservationKrebserkrankung' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
