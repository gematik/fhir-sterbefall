Instance: StfVerstorbenePerson-BY3-Max
InstanceOf: StfVerstorbenePerson
Usage: #example
* identifier[IdImGesundheitsamt]
  * value = "331"
  * assigner = Reference(StfOrganisation-GA-BY3-Max)
* identifier[Sterbebuchnummer].value = "7916"
* name[name]
  * family = "Meyer"
  * given = "Markus"
  * name = "Markus Meyer"
* active = true
* gender = #male
* birthDate = "1953-07-01"
* deceasedDateTime = "2025-01-01T17:00:00+01:00"
* address[Strassenanschrift]
  * line = "Friedrich-Peter-Str. 25"
  * line.extension[Strasse] = "Friedrich-Peter-Str."
  * line.extension[Hausnummer] = "25"
  * city = "Nürnberg"
  * postalCode = "90403"
  * country = "DE"
  * extension[GKZ]
    * extension[Bundesland].valueInteger = 95
    * extension[Regierungsbezirk].valueInteger = 6
    * extension[Landkreis].valueInteger = 40
    * extension[Gemeinde].valueInteger = 00

Instance: StfVerstorbenePersonPseudonymisiert-BY3-Max
InstanceOf: StfVerstorbenePersonPseudonymisiert
Usage: #example
* identifier[IdImGesundheitsamt]
  * value = "331"
  * assigner = Reference(StfOrganisation-GA-BY3-Max)
* identifier[Sterbebuchnummer].value = "7916"