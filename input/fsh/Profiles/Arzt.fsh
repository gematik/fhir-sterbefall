Profile: StfArzt
Parent: Practitioner
Id: StfArzt
Title: "STF Arzt"
Description: "Informationen über Ärzte und Ärztinnen, die im Kontext der STF relevant sind"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "In diesem Element wird der Identifier (Identifikator) für diese behandelnde Person definiert. Der Identifikator kann aus diversen Quellen stammen."
* identifier contains
    ID ..1 MS and
    ANR ..1 MS and
    Zulassungsnummer ..1 MS
* identifier[ID].system 1.. MS
* identifier[ID].value 1.. MS
* identifier[ANR] only $de.basis-identifier-lanr
* identifier[ANR] ^definition = "In diesem Element wird die Arztnummer (umgangssprachlich auch Lebenslange Arztnummer „LANR“ genannt) nach § 108 SGB V abgebildet."
* identifier[ANR].type 1.. MS
* identifier[ANR].type.coding 1..1 MS
* identifier[ANR].type.coding.system 1.. MS
* identifier[ANR].type.coding.code 1.. MS
* identifier[Zulassungsnummer].system 1.. MS
* identifier[Zulassungsnummer].value 1.. MS
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
  * line MS
  * line.extension[Postfach] 0..0
  * line.extension[Strasse] MS
  * line.extension[Hausnummer] MS
  * line.extension[Adresszusatz] MS
  * city MS
  * postalCode MS
  * country MS
* address[Postfach] only $de.basis-address
* address[Postfach]
  * type = #postal
  * line MS
  * line.extension[Postfach] MS
  * line.extension[Strasse] 0..0
  * line.extension[Hausnummer] 0..0
  * line.extension[Adresszusatz] 0..0
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
* qualification.code from StfBerufsgruppe