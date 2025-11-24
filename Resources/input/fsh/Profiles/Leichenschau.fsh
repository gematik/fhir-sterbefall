Profile: StfLeichenschau
Parent: Procedure
Id: StfLeichenschau
Title: "StfLeichenschau"
Description: "Mit diesem Profil wird eine Leichenschau im Kontext des Sterbefall abgebildet"
* insert Meta
* status MS
* code MS
* code = $sct#168461002 "Postmortem examination (procedure)"
* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* performedDateTime ^comment = "Datum und optional Uhrzeit der Leichenschau"
* performer.actor MS
* performer.actor only Reference(Practitioner)
* performer.actor ^comment = "Optionale Verknüpfung mit dem durchführenden Arzt oder Ärztin"