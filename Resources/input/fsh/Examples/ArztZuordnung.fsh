Instance: StfArztZuordnungExample
InstanceOf: StfArztZuordnung
Title: "Beispiel STF Arzt-Zuordnung"
Description: "Diese Instanz zeigt die Zuordnung eines Arztes zu einer Organisation mit einer Facharztgruppe."
Usage: #example
* practitioner = Reference(StfArztExample)
* organization = Reference(StfOrganisationExample)
* specialty = StfFacharztgruppeCS#Krankenhausarzt "diensthabender Arzt/Ärztin im Krankenhaus"
