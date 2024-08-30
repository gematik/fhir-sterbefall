Profile: StfAutopsie
Parent: Procedure
Id: StfAutopsie
Title: "StfAutopsie"
Description: "Abbildung der Informationen zu einer Autopsie im Kontext der STF"
* status MS
* code MS
* code = $sct#29240004
* asserter MS
* asserter.display MS
* location MS
* location.display MS
* performer MS
* performer.function MS
* performer.function from StfOrganisationsTypAutopsie (extensible)
* performer.actor MS
* performer.actor.display MS
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "function"
* performer ^slicing.rules = #open
* performer contains
  GerichtsmedizinischesInstitut ..1 MS and
  PathologischesInstitut ..1 MS
* performer[GerichtsmedizinischesInstitut].function = #GerichtsmedInst
* performer[PathologischesInstitut].function = #PathINst
* report MS

//TODO: Unterschied Obduktion und Autopsie?