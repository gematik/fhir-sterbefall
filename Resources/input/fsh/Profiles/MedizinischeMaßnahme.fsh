Profile: StfMedizinischeMassnahme
Parent: Procedure
Id: StfMedizinischeMassnahme
Title: "STF Medizinische Maßnahme"
Description: "Abbildung einer medizinischen Maßnahme im Kontext des STF"
* code.coding.display MS
* code.coding.display ^comment = "Art der medizinischen Maßnahme/Operation"
* performed[x] only dateTime
* performedDateTime MS
* reasonCode.coding.display MS
* reasonCode.coding.display ^comment = "Grund der medizinischen Maßnahme/Operation"