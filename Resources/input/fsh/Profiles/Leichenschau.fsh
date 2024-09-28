Profile: StfLeichenschau
Parent: Procedure
Id: StfLeichenschau
Title: "StfLeichenschau"
Description: "Mit diesem Profil wird eine Leichenschau im Kontext des Sterbefall abgebildet"
* status MS
* code MS
* code = $sct#29240004
* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* performedDateTime ^comment = "Datum und optional Uhrzeit der Leichenschau"
* performer.actor MS
* performer.actor only Reference(Practitioner)
* performer.actor ^comment = "Optionale Verknüpfung mit dem durchführenden Arzt oder Ärztin"