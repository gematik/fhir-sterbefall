Profile: EtbDatei
Parent: DocumentReference
Id: EtbDateien
Title: "eTB Dateien"
Description: "Metadaten zu Dateien, die im Kontext der eTB Übermittlung relevant sind"
* status MS
* type MS
* type from EtbDateiTyp (extensible)
* date MS
* content MS
* content.attachment MS
* content.attachment.title MS
* context MS
* context.related MS

CodeSystem: EtbDateiTypCS
Id: EtbDateiTypCS
Title: "eTB Datei Typ CS"
Description: ""
* #Scan "Scan" "Dateiname des Bildes ohne Dateiendung"
* #Sterbeurkunde "Sterbeurkunde"
* #Obduktionsschein "Obduktionsschein"

ValueSet: EtbDateiTyp
Id: EtbDateiTypVS
Title: "eTB Datei Typ"
Description: ""
* include codes from system EtbDateiTypCS