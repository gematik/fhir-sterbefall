CodeSystem: PhysicianRoleCS
Id: PhysicianRoleCS
Title: "Physician Role in Patient Care"
* #BehandelnderArzt "Behandelnder Arzt"
* #NichtBehandelnderNachAngabe "nicht behandelnder Arzt nach Angaben des behandelnden Arztes"
* #NichtBehandelnderOhneAngabe "nicht behandelnder Arzt ohne Angaben des behandelnden Arztes"
* #LeichenschauerNachAngabe "Ärztl. Leichenschauer nach Angaben des behandelnden Arztes"

ValueSet: PhysicianRoleVS
Id: PhysicianRoleVS
Title: "Physician Role in Patient Care"
* include codes from system PhysicianRoleCS

//TODO umbenennen und anpassen
//TODO Todesursache Observation .performer Extension