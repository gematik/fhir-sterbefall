---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfBundeslandExtension
expand: 2
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfBundeslandExtension'
select
	CanonicalURL: url, Kontext: context.expression, Status: status, Version: version
```

### Inhalt

| ID        | Type      | Min  | Max  | Pattern   | Fixed    | must-support| VS-Url      | Strength    | VS Concepts |
|-----------|-----------|------|------|-----------|----------|-------------|-------------|-------------|-------------|
| Extension |  | 0 | * | N/A | N/A | false | N/A | N/A | N/A |
| Extension.extension | N/A | 0 | 0 | N/A | N/A | false | N/A | N/A | N/A |
| Extension.url | string | 1 | 1 | N/A | http://gematik.de/fhir/oegd/stf/StructureDefinition/StfBundeslandExtension | false | N/A | N/A | N/A |
| Extension.value[x] | Coding | 0 | 1 | N/A | N/A | false | http://fhir.de/ValueSet/iso/bundeslaender | required | Thüringen, Mecklenburg-Vorpommern, Nordrhein-Westfalen, Hessen, Rheinland-Pfalz, Brandenburg, Hamburg, Sachsen-Anhalt, Berlin, Baden-Württemberg, ... |

<tabs>
  <tab title="Darstellung">{{tree, snapshot}}</tab>
  <tab title="Beschreibung"> 
    @```
    from
    	StructureDefinition
    where
	    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfBundeslandExtension'
    select
	    Beschreibung: description
    ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab> 
</tabs>


