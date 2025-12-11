Instance: StfObduktion-BY3-Max
InstanceOf: StfObduktion
Usage: #example
* basedOn = Reference(StfObduktionAnfrage-BY3-Max)
* status = #completed
* performedDateTime = "2025-05-01"
* location.display = "Nürnberg"
* performer[GerichtsmedizinischesInstitut].function = StfOrganisationsTypCS#PathInst
* performer[GerichtsmedizinischesInstitut].actor = Reference(StfOrganisation-GM-BY3-Max)
* performed[GerichtsmedizinischesInstitut].onBehalfOf = Reference(StfArzt-BY3-Max-Gutmann)
* report = Reference(StfDatei-Obduktion-BY3-Max)


Instance: StfObduktionAnfrage-BY3-Max
InstanceOf: StfObduktionAnfrage
Usage: #example
* status = #completed
* intent = #order
* subject = Reference(StfVerstorbenePerson-BY3-Max)