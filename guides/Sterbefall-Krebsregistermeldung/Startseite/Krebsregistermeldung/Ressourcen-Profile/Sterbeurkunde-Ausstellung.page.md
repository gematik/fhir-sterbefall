---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfSterbeurkundeAusstellung
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfSterbeurkundeAusstellung'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Provenance.target | Reference | 1 | * | N/A | N/A | false | N/A | N/A | N/A |
| Provenance.recorded | instant | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Provenance.reason | CodeableConcept | 0 | * | {"coding":[{"system":"http://terminology.hl7.org/CodeSystem/v3-ActReason","code":"DECSD"}]} | N/A | true | http://terminology.hl7.org/ValueSet/v3-PurposeOfUse | extensible | pharmacy supply request renewal refusal reason, admission to hospital, healthcare research, coverage authorization, legal, philosophical objection, entered in error, contraindication, disaster, ActCoverageReason, ... |
| Provenance.activity | CodeableConcept | 0 | 1 | {"coding":[{"system":"http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion","code":"LA"}]} | N/A | true | http://hl7.org/fhir/ValueSet/provenance-activity-type | extensible | attender, analyte, primary performer, deidentify, admitter, callback contact, verifier, tracker, performer, distributor, ... |
| Provenance.agent | BackboneElement | 1 | * | N/A | N/A | true | N/A | N/A | N/A |
| Provenance.agent.who | Reference | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfSterbeurkundeAusstellung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfSterbeurkundeAusstellung' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfSterbeurkundeAusstellung' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfSterbeurkundeAusstellung' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
