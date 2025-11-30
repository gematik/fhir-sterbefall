Instance: StfArzt-BY3-Max-Boese
InstanceOf: StfArzt
Id: StfArzt-BY3-Max-Boese
* identifier[ID] = "123"
* identifier[ANR] = "456"
* identifier[Zulassungsnummer] = "789"
* name[name]
  * text = "Dr. Kamilla Böse"
  * family = "Böse"
  * given[+] = "Kamilla"
  * prefix = "Dr."
  * prefix.extension[prefix-qualifier].valueCode = #AC
* address[Strassenanschrift]
  * line = "Kilianstr. 5"
  * line.extension[Strasse] = "Kilianstr."
  * line.extension[Hausnummer] = "5"
  * city = "Nürnberg"
  * postalCode = "90425"
  * country = "DE"
* telecom[Telefon]
  * value = "0911/488356"
* qualification.code = http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS#Niedergelassen //TODO ?

Instance: StfArzt-BY3-Max-Gutmann
InstanceOf: StfArzt
Id: StfArzt-BY3-Max-Gutmann
* identifier[ID] = "231"
* identifier[ANR] = "564"
* identifier[Zulassungsnummer] = "897"
* name[name]
  * text = "Dr. Emil Gutmann"
  * family = "Gutmann"
  * given[+] = "Emil"
  * prefix = "Dr."
  * prefix.extension[prefix-qualifier].valueCode = #AC
* address[Strassenanschrift]
  * line = "Bucher Str. 36"
  * line.extension[Strasse] = "Bucher Str."
  * line.extension[Hausnummer] = "36"
  * city = "Nürnberg"
  * postalCode = "90408"
  * country = "DE"
* telecom[Telefon]
  * value = "0911/638355"
* qualification.code = http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS#Niedergelassen //TODO ?

Instance: StfArzt-BY3-Max-Flurer
InstanceOf: StfArzt
Id: StfArzt-BY3-Max-Gutmann
* identifier[ID] = "312"
* identifier[ANR] = "645"
* identifier[Zulassungsnummer] = "978"
* name[name]
  * text = "Sieglinde Flurer"
  * family = "Flurer"
  * given[+] = "Sieglinde"
* address[Strassenanschrift]
  * line = "Kellerstr. 5"
  * line.extension[Strasse] = "Kellerstr."
  * line.extension[Hausnummer] = "5"
  * city = "Nürnberg"
  * postalCode = "90408"
  * country = "DE"
* qualification.code = http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS#Niedergelassen