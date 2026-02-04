---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfZuletztBehandelnderArztExtension
expand: 2
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfZuletztBehandelnderArztExtension'
select
	CanonicalURL: url, Kontext: context.expression, Status: status, Version: version
```

### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Extension |  | 0 | * | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.url | string | 1 | 1 | N/A | http://gematik.de/fhir/oegd/stf/StructureDefinition/StfZuletztBehandelnderArztExtension | false | N/A | N/A | N/A |
| Extension.value[x] | CodeableConcept | 0 | 1 | N/A | N/A | false | http://gematik.de/fhir/oegd/stf/ValueSet/StfTodesursacheCodeVS | extensible | Todesursache_4, Todesursache 3, Todesursache_5, Todesursache 2, Todesursache Gesundheitsamt |

<tabs>
  <tab title="Darstellung">{{tree, snapshot}}</tab>
  <tab title="Beschreibung"> 
    @```
    from
    	StructureDefinition
    where
	    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfZuletztBehandelnderArztExtension'
    select
	    Beschreibung: description
    ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab> 
</tabs>


