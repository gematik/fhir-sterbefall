Profile: Sterbeinformation
Parent: Composition
Id: Sterbeinformation
Title: "Sterbeinformation"
Description: ""
* status MS
* type MS //TODO VS
* subject MS
* subject only Reference(Patient)
* title MS
* date MS
* date ^short = "Sterbezeitpunkt"
* date.extension contains FeststellungSterbezeit named FeststellungSterbezeit ..1 MS
 

Extension: FeststellungSterbezeit
Id: FeststellungSterbezeit
Title: "Sterbezeit festgestellt durch"
Context: Composition.date
* value[x] only Reference
* valueReference only Reference(Practitioner)

Extension: SicherGelebt
Id: FeststellungSterbezeit
Title: "Sterbezeit festgestellt durch"
Context: Composition.date
* value[x] only Reference
* valueReference only Reference(Practitioner)

Extension: FeststellungSterbezeit
Id: FeststellungSterbezeit
Title: "Sterbezeit festgestellt durch"
Context: Composition.date
* value[x] only Reference
* valueReference only Reference(Practitioner)