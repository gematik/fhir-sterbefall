Instance: StfReceiveBundle
InstanceOf: OperationDefinition
Usage: #definition
* name = "STF ReceiveBundle"
* title = "Empfangen und Verarbeiten eines STF FHIR-Bundles"
* status = #active
* kind = #operation
* experimental = false
* publisher = "ELFA Maßnahme Interoperabilität"
* description = "Validiert das Eingangs-Bundle, protokolliert bzw. gibt das Validierungsergebnis aus, wandelt es in ein Transaktions-Bundle um und führt die Transaktion aus."
* code = #receiveBundle
* comment = "Diese Operation validiert das eingehende Bundle, konvertiert es in ein FHIR-Transaktions-Bundle und fuehrt es aus. Die Antwort ist das Ergebnis-Bundle der Transaktion. Schlägt die Transaktion fehl, wird ein OperationOutcome mit dem HTTP-Statuscode 422 (Unprocessable Entity) zurückgegeben."
* system = true
* type = false
* instance = false
* affectsState = true
* parameter[+]
  * name = #resource
  * use = #in
  * min = 1
  * max = "1"
  * type = #Bundle
  * documentation = "Das FHIR-Bundle, das validiert und verarbeitet werden soll."
  * targetProfile = Canonical(StfExportBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * type = #Bundle
  * documentation = "Das vom Server erzeugte Antwort-Bundle der Transaktion. Bei einem Fehler wird stattdessen ein OperationOutcome mit HTTP 422 zurueckgegeben."
