Instance: StfOrganisationExample
InstanceOf: StfOrganisation
Title: "Example STF Organisation"
Description: "Beispielhafte Instanz einer STF Organisation"
Usage: #example
* meta.profile = Canonical(StfOrganisation)
* identifier.system = "https://fhir.gematik.de/sid/standesamt"
* identifier.value = "SA12345"
* type.coding.system = Canonical(StfOrganisationsTyp)
* type.coding.code = #standesamt
* type.coding.display = "Standesamt"
* name = "Standesamt Musterstadt"
* address.type = #both
* address.line = "Rathausplatz 1"
* address.city = "Musterstadt"
* address.postalCode = "12345"
* address.country = "DE"
//* address.extension[StfBundeslandExtension].valueCoding.system = $de.basis-bundeslaender
* address.extension[StfBundeslandExtension].valueCoding.code = #DE-NW
* address.extension[StfBundeslandExtension].valueCoding.display = "Nordrhein-Westfalen"
* contact.name.use = #official
* contact.name.text = "Max Mustermann"
* contact.name.family = "Mustermann"
* contact.name.given = "Max"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+49 123 456789"
* contact.telecom[0].use = #work
* contact.telecom[1].system = #email
* contact.telecom[1].value = "max.mustermann@standesamt-musterstadt.de"
* contact.telecom[1].use = #work
* partOf = Reference(Organization/StadtKoeln)
* partOf.display = "Stadt Köln"
* extension[StfPruefcodeExtension].valueString = "PCODE98765"

Instance: StadtKoeln
InstanceOf: Organization
Title: "Stadt Köln"
Description: "Stadt Köln als übergeordnete Organisation für die Standesämter"
* name = "Stadt Köln"
* address.type = #both
* address.line = "Historisches Rathaus"
* address.city = "Köln"
* address.postalCode = "50667"
* address.country = "DE"
* telecom[0].system = #phone
* telecom[0].value = "+49 221 221-0"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "stadt-koeln@stadt-koeln.de"
* telecom[1].use = #work
* active = true

Instance: StfOrganisationGesundheitsamtRegensburg
InstanceOf: StfOrganisation
Usage: #example
Title: "StfOrganisation-GA-Test-BY1"
* name = "Gesundheitsamt Regensburg"
* type = StfOrganisationsTypCS#GA