Profile: VerstorbenePerson
Parent: Patient
Id: VerstorbenePerson
Title: "Verstorbene Person"
Description: "Informationen zur verstorbenen Person"
* extension contains 
  $core-patient-birthPlace named Geburtsort ..1 MS and
  $core-patient-nationality named Nationalität ..1 MS and
  WohnungsSituation named WohnungsSituation ..1 MS
* extension[Geburtsort].valueAddress MS
* extension[Geburtsort].valueAddress only $de.basis-address
* extension[Geburtsort].valueAddress
  * city MS
  * country MS
  * state MS
* extension[Nationalität].extension[code].valueCodeableConcept from Nationalitaet
* extension[WohnungsSituation].extension[status] MS
* extension[WohnungsSituation].extension[auszugsdatum] MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "In diesem Element wird der Identifier (Identifikator) für diese behandelnde Person definiert. Der Identifikator kann aus diversen Quellen stammen."
* identifier contains
    GUID ..1 MS and
    KVNR ..1 MS
* identifier[KVNR] only $de.basis-identifier-kvid-10
* identifier[KVNR].assigner MS
* identifier[KVNR].assigner.identifier only $de.basis-identifier-iknr
* identifier[KVNR].assigner.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#XX
* identifier[KVNR].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* identifier[KVNR].assigner.identifier.system MS
* identifier[KVNR].assigner.identifier.value MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    name 0..1 MS and
    geburtsname ..1 MS and
    weitere_namen ..* MS
* name[name] only $de.basis-humanName
* name[name]
  * use = #official
  * family MS //TODO: Sollen die Extensions genutzt werden?
  * given MS
  * prefix MS
* name[geburtsname] only $de.basis-humanName
* name[geburtsname]
  * use = #maiden
  * family MS
* name[weitere_namen] only $de.basis-humanName
* name[weitere_namen]
  * use = #old
  * family MS
  * given MS
  * prefix MS
* gender MS
* birthDate MS
* maritalStatus from $de.basis-marital-status (extensible)
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only $de.basis-address
* address[Strassenanschrift]
  * type = #both
  * extension[Stadtteil] MS
  * line MS //TODO: Extensions mit MS versehen?
  * city MS
  * postalCode MS
  * country MS
* address[Postfach] only $de.basis-address
* address[Postfach]
  * type = #postal
  * line MS //TODO: Extensions mit MS versehen?
  * city MS
  * postalCode MS
  * country MS