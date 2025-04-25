Instance: StfVerstorbenePersonExample
InstanceOf: StfVerstorbenePerson
Title: "Beispiel STF Verstorbene Person"
Description: "Beispielhafte Instanz einer verstorbenen Person"
Usage: #example
* meta.profile = Canonical(StfVerstorbenePerson)

// Identifier
* identifier[ID-Gesundheitsamt].system = "http://example.org/fhir/sid/gesundheitsamt-id"
* identifier[ID-Gesundheitsamt].value = "GA78901"
* identifier[ID-Gesundheitsamt].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[ID-Gesundheitsamt].type.coding.code = #PI
* identifier[ID-Gesundheitsamt].type.coding.display = "Patient internal identifier"

// Name (offizieller Name)
* name[name].use = #official
* name[name].family = "Müller"
* name[name].given = "Erika"
* name[name].prefix = "Dr."
* name[name].prefix.extension[prefix-qualifier].url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[name].prefix.extension[prefix-qualifier].valueCode = #AC

// Geburtsname
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Schmidt"

// Grundlegende Daten
* gender = #female
* birthDate = "1945-03-15"
* deceasedDateTime = "2025-03-01T08:30:00+01:00"

// Adresse (Straßenanschrift)
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Musterweg 123"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Musterweg"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "123"
* address[Strassenanschrift].line.extension[Adresszusatz].valueString = "2. Stock"
* address[Strassenanschrift].city = "Musterstadt"
* address[Strassenanschrift].postalCode = "12345"
* address[Strassenanschrift].country = "DE"

// Gemeindekennzahl Extension
* address[Strassenanschrift].extension[StfGemeindekennzahlExtension].extension[Bundesland].valueInteger = 5
* address[Strassenanschrift].extension[StfGemeindekennzahlExtension].extension[Regierungsbezirk].valueInteger = 1
* address[Strassenanschrift].extension[StfGemeindekennzahlExtension].extension[Landkreis].valueInteger = 62
* address[Strassenanschrift].extension[StfGemeindekennzahlExtension].extension[Gemeinde].valueInteger = 14