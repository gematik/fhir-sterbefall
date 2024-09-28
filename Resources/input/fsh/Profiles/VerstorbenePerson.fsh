Profile: StfVerstorbenePerson
Parent: Patient
Id: StfVerstorbenePerson
Title: "STF Verstorbene Person"
Description: "Informationen zur verstorbenen Person"
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    ID-Gesundheitsamt ..1 MS
* identifier[ID-Gesundheitsamt] MS
* identifier[ID-Gesundheitsamt] ^comment = "ID der Person im Gesundheitsamt"
* name MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    name 0..1 MS and
    geburtsname ..1 MS
* name[name] only $de.basis-humanName
* name[name]
  * use = #official
  * family MS
  * family ^comment = "Nachname"
  * given MS
  * given ^comment = "Vorname"
  * prefix MS
  * prefix ^comment = "Titel"
* name[geburtsname] only $de.basis-humanName
* name[geburtsname]
  * use = #maiden
  * family MS
  * family ^comment = "Geburtsname"
  * given 0..0
  * prefix 0..0
* gender MS
* birthDate MS
* deceased[x] MS
* deceasedDateTime MS
* deceasedDateTime ^comment = "Sterbedatum"
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS
* address[Strassenanschrift] only $de.basis-address
* address[Strassenanschrift]
  * extension contains StfGemeindekennzahlExtension named GKZ ..1 MS
  * type = #both
  * line MS
  * line.extension[Postfach] 0..0
  * line.extension[Strasse] MS
  * line.extension[Hausnummer] MS
  * line.extension[Adresszusatz] MS
  * city MS
  * postalCode MS
  * country MS

Extension: StfGemeindekennzahlExtension
Id: StfGemeindekennzahlExtension
Title: "STF Gemeindekennzahl Extension"
Description: "Abbildung der GKZ (Gemeindekennzahl) bestehend aus Bundesland (zweistellig), Regierungsbezirk (einstellig), Landkreis (Landkreis) und Gemeinde (zweistellig)"
Context: Address
* extension contains
  Bundesland 1..1 MS and
  Regierungsbezirk 1..1 MS and
  Landkreis 1..1 MS and
  Gemeinde 1..1 MS
* extension[Bundesland].value[x] only integer
* extension[Regierungsbezirk].value[x] only integer
* extension[Landkreis].value[x] only integer
* extension[Gemeinde].value[x] only integer