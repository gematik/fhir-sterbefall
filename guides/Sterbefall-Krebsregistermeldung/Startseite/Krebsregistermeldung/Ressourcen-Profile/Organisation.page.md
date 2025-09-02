---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfOrganisation
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfOrganisation'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Organization.identifier | Identifier | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Organization.type | CodeableConcept | 0 | * | N/A | N/A | true | http://gematik.de/fhir/oegd/stf/ValueSet/StfOrganisationsTypVS | extensible | Praxis, Klinik, Institution, Gesundheitsamt, Meldende Stelle, Gerichtsmedizinisches Institut, Pathologisches Institut, Standesamt, Abteilung, Übermittelnde Stelle |
| Organization.name | string | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Organization.address | Address | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Organization.address.extension:Bundesland | Extension | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Organization.partOf | Reference | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Organization.contact | BackboneElement | 0 | * | N/A | N/A | true | N/A | N/A | N/A |
| Organization.contact.name | HumanName | 0 | 1 | N/A | N/A | true | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfOrganisation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfOrganisation' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfOrganisation' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfOrganisation' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
