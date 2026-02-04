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

@```
from
    StructureDefinition
where
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfGemeindekennzahlExtension'

for snapshot.element
where
    mustSupport.exists()
select {
    ID: id,
    Kurzbeschreibung: short,
    Type: type[0].code,
    Min: min,
    Max: max,
    VS_Url: binding.valueSet,
    Strength: binding.strength
}
```

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


