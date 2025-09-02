Instance: StfArztZuordnungExample
InstanceOf: StfArztZuordnung
Title: "Beispiel STF Arzt-Zuordnung"
Description: "Diese Instanz zeigt die Zuordnung eines Arztes zu einer Organisation mit einer Facharztgruppe."
Usage: #example
* practitioner = Reference(Practitioner/StfArztExample)
* organization = Reference(Organization/StfOrganisationExample)
* specialty = StfFacharztgruppeCS#Krankenhausarzt "diensthabender Arzt/Ärztin im Krankenhaus"
