Profile: StfOrganisation
Parent: Organization
Id: StfOrganisation
Title: "STF Organisation"
Description: "Informationen über Ärzte und Ärztinnen, die im Kontext der STF relevant sind"
* extension contains StfPruefcodeExtension named Prüfcode ..1 MS
* identifier MS
* name MS
* type MS
* type from StfOrganisationsTyp
* address MS
* address only $de.basis-address
* address.extension contains StfBundeslandExtension named Bundesland ..1 MS
* contact MS
* contact.name MS

Extension: StfBundeslandExtension
Id: StfBundeslandExtension
Title: "STF Bundesland Extension"
Description: ""
Context: Address
* value[x] only Coding
* valueCoding from $de.basis-bundeslaender

Extension: StfPruefcodeExtension
Id: StfPruefcodeExtension
Title: "STF Prüfcode Extension"
Description: ""
Context: Organization
* value[x] only string