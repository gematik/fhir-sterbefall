Instance: StfDateiExample
InstanceOf: StfDatei
Title: "Beispiel STF Datei"
Description: "Beispielinstanz einer Sterbeurkunde entsprechend dem StfDatei-Profil"
Usage: #example
* meta.profile = Canonical(StfDatei)
* identifier[0].system = "https://fhir.standesamt.de/NamingSystem/sterbebuchnummer"
* identifier[0].value = "2023-123456"
* status = #current
* type = StfDateiTypCS#Sterbeurkunde "Sterbeurkunde"
* subject = Reference(StfVerstorbenePersonExample) "Dr. Erika Müller"
* author = Reference(StfOrganisationExample) "Standesamt Berlin-Mitte"
* date = "2023-07-15T10:30:00+02:00"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.title = "Sterbeurkunde_Erika_Mueller.pdf"
* content[0].attachment.creation = "2023-07-15"
* content[0].format = http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem#urn:ihe:iti:xds:2017:mimeTypeSufficient "PDF"
* context.related = Reference(StfTodesursacheExample) "Dokumentierte Todesursache"