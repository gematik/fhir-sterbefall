//Sterbeurkunde
Instance: StfTodesursache-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#J96, "respiratorische Insuffizienz", "30 Minuten", #Sterbeurkunde)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* code.coding[TodesursacheTyp] = StfTodesursacheCodeCS#TU1 "Todesursache 1"
* hasMember[+] = Reference(StfTodesursache2-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU2
* hasMember[+] = Reference(StfTodesursache3-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU3
* hasMember[+] = Reference(StfTodesursache4-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU4
* hasMember[+] = Reference(StfTodesursache5-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU5
* note[+].text = "Pankreaskarzinom mit Lebermetastasen, palliative Therapie Sturz in häuslicher Umgebung, Abschürfungen im Gesicht, Hämatom im Bauchraum"
* note[+].text = "Hirninfarkt beidseitig vor 8 Monaten, infolge einseitige Lähmung links
Fortgeschrittenes Pankreaskarzinom mit Lebermetastasen, keine OO, Chemotherapie
abgebrochen, sonstige palliative Therapie"
* component[NichtNatuerlicherTod]
  * valueCodeableConcept.coding = $v2-0532#Y
  * valueCodeableConcept.text = "Sturz im häuslichen Umfeld vor 3 Tagen, von oberer Stufe im Treppeneingangsbereich; mit dem
Bauch auf mitgeführte Gehhilfe gestürzt, leichte Abschürfungen im Gesicht; Hämatom im
Bauchraum; später über Buchschmerzen /Unwohlsein geklagt. Vermutung ggf. innere
Verletzungen, die unbehandelt geblieben sind."
* component[Details]
  * valueCodeableConcept.coding.version = "2019"
  * valueCodeableConcept.coding.code = #W10
  * valueCodeableConcept.text = "mgl. Innere Verletzungen"

Instance: StfTodesursache2-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#J84, "interstitielle pulmonale Pneumonitis", "1 Woche", #Sterbeurkunde)

Instance: StfTodesursache3-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#C25, "Pankresakarzinom", "Seit 10/2024", #Sterbeurkunde)

Instance: StfTodesursache4-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#C78, "Lebermetastasen", "Seit 10/2024", #Sterbeurkunde)

Instance: StfTodesursache5-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#I63, "Hirninfarkt", "Vor 8 Monaten", #Sterbeurkunde)

//Obduktionsschein
Instance: StfTodesursache-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#I99, "Herz-Kreislaufversagen", #Obduktionsschein)
* hasMember[+] = Reference(StfTodesursache2-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU2
* hasMember[+] = Reference(StfTodesursache3-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU3
* hasMember[+] = Reference(StfTodesursache4-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU4
* hasMember[+] = Reference(StfTodesursache5-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTyp].valueCodeableConcept.coding = StfTodesursacheCodeCS#TU5

Instance: StfTodesursache2-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#R58, "innere Blutungen im Bauchraum", #Obduktionsschein)

Instance: StfTodesursache3-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#S36, "Milzruptur", #Obduktionsschein)

Instance: StfTodesursache4-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#C25, "Pankreaskarzinom", #Obduktionsschein)

Instance: StfTodesursache5-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#C78, "mit Lebermetastasen", #Obduktionsschein)

RuleSet: StfMemberTodesursacheByMax(code, text, quelle)
* effectiveDateTime = "2025-01-05T10:30:00+01:00"
* status = #final
* subject = Reference(StfVerstorbenePerson-BY3-Max)
* performer = Reference(StfArzt-BY3-Max-Boese)
* valueCodeableConcept.coding.code = {code}
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.text = {text}
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS{quelle}

RuleSet: StfMemberTodesursacheByMaxMitZeitdauer(code, text, zeitdauer, quelle)
* insert StfMemberTodesursacheByMax({code}, {text}, {quelle})
* effectiveDateTime = "2025-01-01T10:30:00+01:00"
* component[ZeitdauerBeginnBisTod].valueString = {zeitdauer}