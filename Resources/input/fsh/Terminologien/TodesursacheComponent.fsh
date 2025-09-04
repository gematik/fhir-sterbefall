CodeSystem: StfTodesursacheCodeCS
Id: StfTodesursacheCodeCS
Title: "STF Weitere Todesursachen"
Description: "Dieses CodeSystem definiert ergänzende Todesursachen, die im Rahmen der standardisierten Dokumentation eines Sterbefalls verwendet werden. 
Es ermöglicht die strukturierte Erfassung mehrerer Ursachenketten."
* insert Meta
* #TU2 "Todesursache 2" "Als Folge von..."
* #TU3 "Todesursache 3" "Als Folge von... (Grundleiden)"
* #TU4 "Todesursache 4"
* #TU5 "Todesursache 5"
* #GA "Todesursache Gesundheitsamt"

ValueSet: StfTodesursacheCode
Id: StfTodesursacheCodeVS
Title: "Warnhinweis Code"
* insert Meta
* include codes from system StfTodesursacheCodeCS
