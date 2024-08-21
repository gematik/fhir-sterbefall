Profile: Warnhinweis
Parent: Flag
Id: Warnhinweis
Title: "Warnhinweis"
Description: ""
* status MS
* status = #active
* category MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
  WarnhinweisKategorie ..1 MS
* category.coding[WarnhinweisKategorie] from WarnhinweisCategory (required)
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
  JNX ..1 MS and
  WarnhinweisText ..1 MS
* code.coding[JNX] from YesNoUnknown
* code.coding[WarnhinweisText]
  * version ..0
  * system ..0
  * code ..0
  * display 1.. MS
  * userSelected ..0
* subject MS
* subject only Reference(Patient)

