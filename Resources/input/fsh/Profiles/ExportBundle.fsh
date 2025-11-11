Profile: StfExportBundle
Parent: Bundle
Id: StfExportBundle
Title: "STF Export Bundle"
Description: "Das StfExportBundle dient als Container für den standardisierten Austausch von Daten im Rahmen des Sterbefallprozesses. 
Es basiert auf der Ressource `Bundle` und verwendet den Typ `collection`, um alle relevanten STF Ressourcen zu bündeln."
* insert Meta
* type MS
* type = #collection
* timestamp MS
  * ^short = "Exportzeitpunkt"
* entry MS
  * fullUrl MS
  * resource MS
  * resource only StfArzt or StfVerstorbenePerson or StfArztZuordnung or StfDatei or StfLeichenschau or StfOrganisation or StfSterbeurkundeAusstellung or StfBasisObservation