Profile: StfOrt
Parent: Location
Id: StfOrt
Title: "STF Ort"
* type MS
* type from StfOrte (required)
* description MS
* address MS
* address only $de.basis-address
* address
  * city MS
  * postalCode MS
  * line MS
  * line.extension[Postfach] 0..0
  * line.extension[Strasse] MS
  * line.extension[Hausnummer] MS
  * line.extension[Adresszusatz] MS
* physicalType MS
* physicalType from StfSterbeortKategorie (required)