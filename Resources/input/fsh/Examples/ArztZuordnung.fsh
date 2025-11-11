Instance: StfArztZuordnung-Example
InstanceOf: StfArztZuordnung
Title: "Beispiel STF Arzt-Zuordnung"
Description: "Diese Instanz zeigt die Zuordnung eines Arztes zu einer Organisation mit einer Facharztgruppe."
Usage: #example
* practitioner = Reference(Practitioner/StfArzt-Example)
* organization = Reference(Organization/StfOrganisation-Example)
* specialty = StfFacharztgruppeCS#Krankenhausarzt "diensthabender Arzt/Ärztin im Krankenhaus"
