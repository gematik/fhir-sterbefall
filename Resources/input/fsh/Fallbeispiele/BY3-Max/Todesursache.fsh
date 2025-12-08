Instance: StfTodesursache-BY3-Max
InstanceOf: StfTodesursache
* subject = Reference(VerstorbenePerson-BY3-Max)
* performer = Reference(StfArzt-BY3-Max-Boese)
* valueCodeableConcept.coding.code = "J96"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.text = "respiratorische Insuffizienz"
* hasMember[+].extension[TodesursacheTypExtension].valueCode = #Todesursache2
* hasMember[=] = Reference //TODO
* note = "Pankreaskarzinom mit Lebermetastasen, palliative Therapie Sturz in häuslicher Umgebung, Abschürfungen im Gesicht, Hämatom im Bauchraum"
* component[NichtNatuerlicherTod]
  * valueCodeableConcept.coding = $v2-0532#Y //TODO Ist das ein Nein?
  * valueCodeableConcept.text = "Sturz im häuslichen Umfeld vor 3 Tagen, von oberer Stufe im Treppeneingangsbereich; mit dem
Bauch auf mitgeführte Gehhilfe gestürzt, leichte Abschürfungen im Gesicht; Hämatom im
Bauchraum; später über Buchschmerzen /Unwohlsein geklagt. Vermutung ggf. innere
Verletzungen, die unbehandelt geblieben sind."
* component[ZeitdauerBeginnBisTod]
  * valueString = "30 Minuten"
* component[Details]
  * valueCodeableConcept.coding.version = 2019
  * valueCodeableConcept.coding.code = "W10"
  * valueCodeableConcept.text = "mgl. Innere Verletzungen"
  //TODO Text "Sturz in häuslicher Umgebung vor 3 Tagen" unterbringen
* component[Quelle]
  * valueCodeableConcept.coding = StfDateiTypCS#Sterbeurkunde

//TODO Text "Hirninfarkt beidseitig vor 8 Monaten, infolge einseitige Lähmung links Fortgeschrittenes Pankreaskarzinom mit Lebermetastasen, keine OO, Chemotherapie abgebrochen, sonstige palliative Therapie" unterbringen