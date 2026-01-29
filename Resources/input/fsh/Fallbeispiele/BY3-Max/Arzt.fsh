Instance: StfArzt-BY3-Max-Boese
InstanceOf: StfArzt
Usage: #example
* identifier[ID]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "123"
* identifier[ANR].value = "456"
* identifier[Zulassungsnummer]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "789"
* name[name]
  * text = "Dr. Kamilla Böse"
  * family = "Böse"
  * given[+] = "Kamilla"
  * prefix = "Dr."
  * prefix.extension[prefix-qualifier].valueCode = #AC
* address[Strassenanschrift]
  * line = "Kilianstr. 5"
  * line.extension[Strasse].valueString = "Kilianstr."
  * line.extension[Hausnummer].valueString = "5"
  * city = "Nürnberg"
  * postalCode = "90425"
  * country = "DE"
* telecom[Telefon]
  * value = "0911/488356"

Instance: StfArzt-BY3-Max-Gutmann
InstanceOf: StfArzt
Usage: #example
* identifier[ID]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "231"
* identifier[ANR].value = "564"
* identifier[Zulassungsnummer]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "897"
* name[name]
  * text = "Dr. Emil Gutmann"
  * family = "Gutmann"
  * given[+] = "Emil"
  * prefix = "Dr."
  * prefix.extension[prefix-qualifier].valueCode = #AC
* address[Strassenanschrift]
  * line = "Bucher Str. 36"
  * line.extension[Strasse].valueString = "Bucher Str."
  * line.extension[Hausnummer].valueString = "36"
  * city = "Nürnberg"
  * postalCode = "90408"
  * country = "DE"
* telecom[Telefon]
  * value = "0911/638355"

Instance: StfArzt-BY3-Max-Flurer
InstanceOf: StfArzt
Usage: #example
* identifier[ID]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "312"
* identifier[ANR].value = "645"
* identifier[Zulassungsnummer]
  * system = "https://github.com/gematik/fhir-sterbefall/issues/62"
  * value = "978"
* name[name]
  * text = "Sieglinde Flurer"
  * family = "Flurer"
  * given[+] = "Sieglinde"
* address[Strassenanschrift]
  * line = "Kellerstr. 5"
  * line.extension[Strasse].valueString = "Kellerstr."
  * line.extension[Hausnummer].valueString = "5"
  * city = "Nürnberg"
  * postalCode = "90408"
  * country = "DE"