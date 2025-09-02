---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfGemeindekennzahlExtension
expand: 2
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfGemeindekennzahlExtension'
select
	CanonicalURL: url, Kontext: context.expression, Status: status, Version: version
```

### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Extension |  | 0 | * | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension | Extension | 4 | * | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Bundesland | Extension | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Extension.extension:Bundesland.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Bundesland.url | string | 1 | 1 | N/A | Bundesland | false | N/A | N/A | N/A |
| Extension.extension:Bundesland.value[x] | integer | 0 | 1 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Regierungsbezirk | Extension | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Extension.extension:Regierungsbezirk.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Regierungsbezirk.url | string | 1 | 1 | N/A | Regierungsbezirk | false | N/A | N/A | N/A |
| Extension.extension:Regierungsbezirk.value[x] | integer | 0 | 1 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Landkreis | Extension | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Extension.extension:Landkreis.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Landkreis.url | string | 1 | 1 | N/A | Landkreis | false | N/A | N/A | N/A |
| Extension.extension:Landkreis.value[x] | integer | 0 | 1 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Gemeinde | Extension | 1 | 1 | N/A | N/A | true | N/A | N/A | N/A |
| Extension.extension:Gemeinde.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension:Gemeinde.url | string | 1 | 1 | N/A | Gemeinde | false | N/A | N/A | N/A |
| Extension.extension:Gemeinde.value[x] | integer | 0 | 1 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.url | string | 1 | 1 | N/A | http://gematik.de/fhir/oegd/stf/StructureDefinition/StfGemeindekennzahlExtension | false | N/A | N/A | N/A |
| Extension.value[x] | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |

<tabs>
  <tab title="Darstellung">{{tree, snapshot}}</tab>
  <tab title="Beschreibung"> 
    @```
    from
    	StructureDefinition
    where
	    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfGemeindekennzahlExtension'
    select
	    Beschreibung: description
    ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab> 
</tabs>


