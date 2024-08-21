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

CodeSystem: WarnhinweisCategoryCS
Id: WarnhinweisCategoryCS
Title: "Warnhinweis Category"
Description: ""
* #uebertragbareKrankheit "Übertragbare_Krankheit" "Liegen Hinweise vor, dass der Verstorbene an einer übertragbaren Krankheit im Sinne des Bundes-Seuchengesetzes erkrankt war"
* #meldepflichtigeKrankheit "Meldepflichtige_Krankheit" "Meldepflichtige Krankheit"
* #aufbewahrung "Aufbewahrung" "Abhängig von Warnhinweis zu übertragbaren Krankheiten; sind besondere Verhaltensmaßnahmen bei der Aufbewahrung, Einsargung, Beförderung und Bestattung zu beachten"
* #herzschrittmacher "Herzschrittmacher"
* #massnahmen "Maßnahmen" "Welche besonderen (Verhaltens-) Maßnahmen sind bei der Aufbe-wahrung, Aufbahrung, Einsargung, Beförderung oder Bestattung zu beachten?"
* #kontamination "Kontamination"
* #radionuklide "Radionuklide"
* #sonstiges "sonstiges"

ValueSet: WarnhinweisCategory
Id: WarnhinweisCategoryVS
Title: "Warnhinweis Code"
* include codes from system WarnhinweisCategoryCS
