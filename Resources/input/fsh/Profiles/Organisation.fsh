Profile: StfOrganisation
Parent: Organization
Id: StfOrganisation
Title: "STF Organisation"
Description: "Informationen über Organisationen, die im Kontext der STF relevant sind"
* extension contains StfPruefcodeExtension named Prüfcode ..1 MS
* extension[Prüfcode] ^comment = "Beispielsweise Prüfcode der meldenden Stelle"
* identifier MS
* identifier ^comment = "Beispielsweise Melder ID der meldenden Stelle"
* name MS
* name ^comment = "Name"
* type MS
* type from StfOrganisationsTyp (extensible)
* address MS
* address only $de.basis-address
* address.extension contains StfBundeslandExtension named Bundesland ..1 MS
* contact MS
* contact.name MS
* contact.name ^comment = "Beispielsweise Ansprechpartner bei der meldenden Stelle"
* partOf MS

Extension: StfBundeslandExtension
Id: StfBundeslandExtension
Title: "STF Bundesland Extension"
Description: "TBD"
Context: Address
* value[x] only Coding
* valueCoding from $de.basis-bundeslaender

Extension: StfPruefcodeExtension
Id: StfPruefcodeExtension
Title: "STF Prüfcode Extension"
Description: "TBD"
Context: Organization
* value[x] only string
