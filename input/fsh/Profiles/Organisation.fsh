Profile: EtbOrganisation
Parent: Organization
Id: EtbOrganisation
Title: "eTB Organisation"
Description: "Informationen über Ärzte und Ärztinnen, die im Kontext der eTB relevant sind"
* extension contains EtbPruefcodeExtension named Prüfcode ..1 MS
* identifier MS
* name MS
* type MS
* type from EtbOrganisationsTyp
* address MS
* address only $de.basis-address
* address.extension contains EtbBundeslandExtension named Bundesland ..1 MS
* contact MS
* contact.name MS

Extension: EtbBundeslandExtension
Id: EtbBundeslandExtension
Title: "eTB Bundesland Extension"
Description: ""
Context: Address
* value[x] only Coding
* valueCoding from $de.basis-bundeslaender

Extension: EtbPruefcodeExtension
Id: EtbPruefcodeExtension
Title: "eTB Prüfcode Extension"
Description: ""
Context: Organization
* value[x] only string