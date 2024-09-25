Profile: StfAutopsie
Parent: Procedure
Id: StfAutopsie
Title: "STF Autopsie"
Description: "Abbildung der Informationen zu einer Autopsie im Kontext der STF"
* basedOn MS
* basedOn ^comment = "Zuordnung zum Antrag einer Autopsie"
* basedOn only Reference(ServiceRequest)
* status MS
* code MS
* code = $sct#29240004
* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* performedDateTime ^comment = "Uhrzeit der Obduktion"
* asserter MS
* asserter.display MS
* asserter.display ^comment = "Bei wem die Autopsie beantragt wurde"
* location MS
* location.display MS
* location.display ^comment = "Ort der Durchführung"
* performer MS
* performer.function MS
* performer.function from StfOrganisationsTypAutopsie (extensible)
* performer.actor MS
* performer.actor.display MS
* performer.actor.display ^comment = "Name Pathologisches Institut oder Gerichtsmedizinisches Institut"
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "function"
* performer ^slicing.rules = #open
* performer contains
  GerichtsmedizinischesInstitut ..1 MS and
  PathologischesInstitut ..1 MS
* performer[GerichtsmedizinischesInstitut].function = #GerichtsmedInst
* performer[PathologischesInstitut].function = #PathINst
* report MS
* report ^comment = "Verlinkung auf den beiliegenden Obduktionsbericht"

Profile: StfAutopsieAnfrage
Parent: ServiceRequest
Id: StfAutopsieAnfrage
Title: "STF Autopsie Anfrage"
Description: "Information über die Beantragung einer Autopsie"
* status MS
* intent MS
* code MS
* code = $sct#29240004
* subject MS