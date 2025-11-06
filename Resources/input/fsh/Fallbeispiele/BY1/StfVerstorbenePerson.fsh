Instance: StfVerstorbenePerson-Test-BY1
InstanceOf: StfVerstorbenePerson
Title: "Beispiel einer verstorbenen Person"
Description: "FSH-Instanz basierend auf der Todesbescheinigung Testdatensatz 1 Krebsregister BY"
Usage: #example

* identifier[IdImGesundheitsamt].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
* identifier[IdImGesundheitsamt].system = "urn:gesundheitsamt:id"
* identifier[IdImGesundheitsamt].value = "13041938"
* identifier[IdImGesundheitsamt].assigner.display = "Gesundheitsamt Regensburg"

* identifier[Sterbebuchnummer].type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
* identifier[Sterbebuchnummer].system = "urn:gesundheitsamt:sterbebuch"
* identifier[Sterbebuchnummer].value = "220920251815"

* name[name].use = #official
* name[name].family = "Vogel"
* name[name].given = "Günther"

* gender = #male
* birthDate = "1938-04-13"
* deceasedDateTime = "2025-09-22T18:15:00+01:00"

* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line.extension[Strasse].valueString = "Marienstr."
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "15"
* address[Strassenanschrift].city = "Regensburg"
* address[Strassenanschrift].postalCode = "93049"
* address[Strassenanschrift].country = "DE"