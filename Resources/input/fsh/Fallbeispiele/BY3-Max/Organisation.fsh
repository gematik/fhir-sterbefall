Instance: StfOrganisation-BY3-Max
InstanceOf: StfOrganisation
Usage: #example
* identifier.system = "http://myGesundheitsamt.de/fhir/organisationen"
* identifier.value = "123456"
* name = "Standesamt Nürnberg"
* type = StfOrganisationsTypCS#StAmt
* address
  * line = "Hirschelgasse 32"
  * line.extension[Strasse].valueString = "Hirschelgasse"
  * line.extension[Hausnummer].valueString = "32"
  * postalCode = "90403"
  * city = "Nürnberg"
  * country = "DE"
  * extension[StfBundeslandExtension].valueCoding = urn:iso:std:iso:3166-2:de#DE-BY

Instance: StfOrganisation-GA-BY3-Max
InstanceOf: StfOrganisation
Usage: #example
* identifier.system = "http://myGesundheitsamt.de/fhir/organisationen"
* identifier.value = "123457"
* name = "Gesundheitsamt Nürnberg"
* type = StfOrganisationsTypCS#GA
* address
  * line = "Hirschelgasse 32"
  * line.extension[Strasse].valueString = "Hirschelgasse"
  * line.extension[Hausnummer].valueString = "32"
  * postalCode = "90403"
  * city = "Nürnberg"
  * country = "DE"
  * extension[StfBundeslandExtension].valueCoding = urn:iso:std:iso:3166-2:de#DE-BY

Instance: StfOrganisation-GM-BY3-Max
InstanceOf: StfOrganisation
Usage: #example
* identifier.system = "http://myGesundheitsamt.de/fhir/organisationen"
* identifier.value = "123458"
* name = "Gerichtsmedizin Nürnberg"
* type = StfOrganisationsTypCS#GerichtsmedInst
* address
  * line = "Hirschelgasse 32"
  * line.extension[Strasse].valueString = "Hirschelgasse"
  * line.extension[Hausnummer].valueString = "32"
  * postalCode = "90403"
  * city = "Nürnberg"
  * country = "DE"
  * extension[StfBundeslandExtension].valueCoding = urn:iso:std:iso:3166-2:de#DE-BY