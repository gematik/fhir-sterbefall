CodeSystem: EtbOrganisationsTypCS
Id: EtbOrganisationsTypCS
Title: "eTB Typ einer Organisation"
* #Institution "Institution"
* #Klinik "Klinik"
* #Praxis "Praxis"
* #Abteilung "Abteilung"
* #StAmt "Standesamt"
* #PathInst "Pathologisches Institut"
* #GerichtsmedInst "Gerichtsmedizinisches Institut"
* #GA "Gesundheitsamt"
* #UebermittelndeStelle "Übermittelnde Stelle"
* #MeldendeStelle "Meldende Stelle"

ValueSet: EtbOrganisationsTyp
Id: EtbOrganisationsTypVS
Title: "eTB Typ einer Organisation"
* include codes from system EtbOrganisationsTypCS

ValueSet: EtbOrganisationsTypAutopsie
Id: EtbOrganisationsTypAutopsieVS
Title: "eTB Typ einer Organisation bei Autopsien"
* EtbOrganisationsTypCS#PathInst
* EtbOrganisationsTypCS#GerichtsmedInst