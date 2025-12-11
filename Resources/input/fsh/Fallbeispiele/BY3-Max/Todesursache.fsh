//Sterbeurkunde
Instance: StfTodesursache-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* subject = Reference(VerstorbenePerson-BY3-Max)
* performer = Reference(StfArzt-BY3-Max-Boese)
* valueCodeableConcept.coding.code = "J96"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.text = "respiratorische Insuffizienz"
* hasMember[+] = Reference(StfTodesursache2-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache2
* hasMember[+] = Reference(StfTodesursache3-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache3
* hasMember[+] = Reference(StfTodesursache4-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache4
* hasMember[+] = Reference(StfTodesursache5-Su-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache5
* note[+] = "Pankreaskarzinom mit Lebermetastasen, palliative Therapie Sturz in häuslicher Umgebung, Abschürfungen im Gesicht, Hämatom im Bauchraum"
* note[+] = "Hirninfarkt beidseitig vor 8 Monaten, infolge einseitige Lähmung links
Fortgeschrittenes Pankreaskarzinom mit Lebermetastasen, keine OO, Chemotherapie
abgebrochen, sonstige palliative Therapie"
* component[NichtNatuerlicherTod]
  * valueCodeableConcept.coding = $v2-0532#Y
  * valueCodeableConcept.text = "Sturz im häuslichen Umfeld vor 3 Tagen, von oberer Stufe im Treppeneingangsbereich; mit dem
Bauch auf mitgeführte Gehhilfe gestürzt, leichte Abschürfungen im Gesicht; Hämatom im
Bauchraum; später über Buchschmerzen /Unwohlsein geklagt. Vermutung ggf. innere
Verletzungen, die unbehandelt geblieben sind."
* component[Details]
  * valueCodeableConcept.coding.version = 2019
  * valueCodeableConcept.coding.code = "W10"
  * valueCodeableConcept.text = "mgl. Innere Verletzungen"
* component[ZeitdauerBeginnBisTod]
  * valueString = "30 Minuten"
* component[Quelle]
  * valueCodeableConcept.coding = StfDateiTypCS#Sterbeurkunde

Instance: StfTodesursache2-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("J84", "interstitielle pulmonale Pneumonitis", "1 Woche", #Sterbeurkunde)

Instance: StfTodesursache3-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("C25", "Pankresakarzinom", "Seit 10/2024", #Sterbeurkunde)

Instance: StfTodesursache4-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("C78", "Lebermetastasen", "Seit 10/2024", #Sterbeurkunde)

Instance: StfTodesursache5-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("I63", "Hirninfarkt", "Vor 8 Monaten", #Sterbeurkunde)

//Obduktionsschein
Instance: StfTodesursache-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("I99", "Herz-Kreislaufversagen", #Obduktionsschein)
* hasMember[+] = Reference(StfTodesursache2-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache2
* hasMember[+] = Reference(StfTodesursache3-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache3
* hasMember[+] = Reference(StfTodesursache4-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache4
* hasMember[+] = Reference(StfTodesursache5-Os-BY3-Max)
* hasMember[=].extension[TodesursacheTypExtension].valueCode = #Todesursache5

Instance: StfTodesursache2-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("R58", "innere Blutungen im Bauchraum", #Obduktionsschein)

Instance: StfTodesursache3-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("S36", "Milzruptur", #Obduktionsschein)

Instance: StfTodesursache4-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("C25", "Pankreaskarzinom", #Obduktionsschein)

Instance: StfTodesursache5-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* insert StfMemberTodesursacheByMax("C78", "mit Lebermetastasen", #Obduktionsschein)

RuleSet: StfMemberTodesursacheByMax(code, text, quelle)
* subject = Reference(VerstorbenePerson-BY3-Max)
* performer = Reference(StfArzt-BY3-Max-Boese)
* valueCodeableConcept.coding.code = {code}
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.text = {text}
* component[Quelle].valueCodeableConcept.coding = StfDateiTypCS{quelle}

RuleSet: StfMemberTodesursacheByMax(code, text, zeitdauer, quelle)
* insert StfMemberTodesursacheByMax({code}, {text}, {quelle})
* component[ZeitdauerBeginnBisTod].valueString = {zeitdauer}