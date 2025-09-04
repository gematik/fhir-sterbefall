Instance: StfDateiExample
InstanceOf: StfDatei
Title: "Beispiel STF Datei"
Description: "Beispielinstanz einer Sterbeurkunde entsprechend dem StfDatei-Profil"
Usage: #example
* meta.profile = Canonical(StfDatei)
* identifier[0].system = "https://fhir.standesamt.de/NamingSystem/sterbebuchnummer" //TODO sinnvoll?
* identifier[0].value = "2023-123456"
* status = #current
* type = StfDateiTypCS#Sterbeurkunde "Sterbeurkunde"
* subject = Reference(StfVerstorbenePersonExample) "Dr. Erika Müller"
* author = Reference(StfOrganisationExample) "Standesamt Berlin-Mitte"
* date = "2023-07-15T10:30:00+02:00"
* content[0].attachment
  * contentType = #application/pdf
  * data = "<base64string>"