CodeSystem: StfOrganisationsTypCS
Id: StfOrganisationsTypCS
Title: "STF Typ einer Organisation"
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

ValueSet: StfOrganisationsTyp
Id: StfOrganisationsTypVS
Title: "STF Typ einer Organisation"
* include codes from system StfOrganisationsTypCS

ValueSet: StfOrganisationsTypAutopsie
Id: StfOrganisationsTypAutopsieVS
Title: "STF Typ einer Organisation bei Autopsien"
* StfOrganisationsTypCS#PathInst
* StfOrganisationsTypCS#GerichtsmedInst