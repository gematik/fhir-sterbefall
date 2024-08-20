Profile: AusstellenderArzt
Parent: Practitioner
Id: AusstellenderArzt
Title: "Ausstellender Arzt*in"
Description: "Ausstellender Arzt*in für Obduktionsschein und Sterbeurkunde"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "In diesem Element wird der Identifier (Identifikator) für diese behandelnde Person definiert. Der Identifikator kann aus diversen Quellen stammen."
* identifier contains
    ANR 0..1 MS
* identifier[ANR] only $de.basis-identifier-lanr
* identifier[ANR] ^definition = "In diesem Element wird die Arztnummer (umgangssprachlich auch Lebenslange Arztnummer „LANR“ genannt) nach § 108 SGB V abgebildet."
* identifier[ANR].type 1.. MS
* identifier[ANR].type.coding 1..1 MS
* identifier[ANR].type.coding.system 1.. MS
* identifier[ANR].type.coding.code 1.. MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    name 0..1 MS
* name[name] only $de.basis-humanName
* name[name]
  * use = #official
  * family MS
  * given MS
  * prefix MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only $de.basis-address
* address[Strassenanschrift]
  * type = #both
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
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
  Telefon ..1 MS and
  Telefax ..1 MS
* telecom[Telefon]
  * system = #phone
  * value MS
* telecom[Telefax]
  * system = #fax
  * value MS
* qualification.code MS
* qualification.code from Berufsgruppe