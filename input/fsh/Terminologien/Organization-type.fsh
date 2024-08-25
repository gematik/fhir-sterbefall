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

ValueSet: EtbOrganisationsTyp
Id: EtbOrganisationsTypVS
Title: "eTB Typ einer Organisation"
* include codes from system EtbOrganisationsTypCS

ValueSet: EtbOrganisationsTypAutopsie
Id: EtbOrganisationsTypAutopsieVS
Title: "eTB Typ einer Organisation bei Autoplien"
* EtbOrganisationsTypCS#PathInst
* EtbOrganisationsTypCS#GerichtsmedInst