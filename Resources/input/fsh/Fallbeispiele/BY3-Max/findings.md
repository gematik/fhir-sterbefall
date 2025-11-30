# Leichenschau vs. Obduktion
Wir haben zwei unterschiedliche Profile für Leichenschau und Obduktion, wobei letzteres das umfangreichere ist. Gibt es einen Fachlichen Grund für zwei Profile? Falls ja, müssten wir uns nochmal den SCT Code anschauen, weil beide haben den gleichen Code. Anscheinend schon vor unserem Switch auf Postmortem examination (procedure).

# Obduktionsschein

- Im Obduktionsschein sind nochmal andere Todesursachen festgestellt worden. Ergibt es dann Sinn, zwei Todesursache Observation (inkl. member) zu erstellen oder "überschreibt" der Obduktionsschein die in der Todesbescheinigung? In dem Fall würden wir nur die aus der Obduktion mit übermitteln und referenzieren.
Die Quelle haben wir ja zum Glück in der Observation stehen

- Die Aussage "Im Rahmen der äußeren Leichenschau festgestellte Todesursache/Klinischer Befund werden nicht bestätigt." aus dem Obduktionsschein wird nirgendwo abgebildet. Fehlt das?

- Asserter geht nicht aus dem Schein hervor

- performer.actor wird aktuell von uns verpflichtend PathInst oder GerichtsmedInst gefordert. Im Beispiel ist nur ein Arzt angegeben. Müssen wir das öffnen und um eine Einzelperson erweitern?

- Für ein vollständiges Beispiel fehlt ein Obduktionsbericht (ich simuliere einfach mit einer leeren PDF...)

# Profilierung

- Wir legen die Extension StfPruefcodeExtension an für Organization, haben sie aber in keinem Profil. Ich vermute mal vergessen. Soll ich die einfach mit 0..1 MS in der StfOrganisation hinterlegen?

# Organisation

- Für ein maximales Beispiel brauche ich eine Nummer oder ID des Standesamt Nürnberg (Hier geben wir weder Type noch System vor... das birgt eine gewisse Ungenauigkeit. Müssen wir hier ggf. nochmal dran?)


# Ärzte

- Die Berufsgruppe aus diesem CS benötige ich für ein vollständiges Beispiel: http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS

# Sterbeurkunde

- Für ein maximales Beispiel müsste ich StfSterbeurkundeAusstellung befüllen. Dazu gibt es keine Informationen

# Todesursache

- Nochmal Thema ICD-10. Wir haben die Version verpflichtend gemacht. Wenn wir jetzt einen ICD-10 GM Code haben, soll dann als Version trotzdem 2019 für die WHO Version drin stehen, oder lieber gar keine? Sollen wir Die Version ggf. auf fixed 2019 setzen? Ich habe das Gefül, die Quellsysteme kennen die Version gar nicht.

- Im Feld "Epikrise: weitere Angaben zur Todesursache und zu Begleiterkrankungen" sind mehrere Felder anhakbar: Nach eigenen Feststellungen, Nach Angaben von Angehörigen/Dritten, Obduktion wird angestrebt, weitere Angaben s. vertraulicher Teil 2
    - die ersten beiden sind nicht abgebildet bei uns. Braucht es die irgendwo?
    - Obduktion wird angestrebt, wäre meinem Verständnis nach, unser ServiceRequest StfObduktionAnfrage? Oder ist das noch was anderes?
    - die Letzte Info frage ich mich, wo wir diesen Freitext unterbringen sollen? Soll der auch noch mit in note der Todesursache Observation? Oder Was ist das?

- Der Freitext unter "Anhaltspunkte für einen nicht natürlichen Tod" hat nicht so wirklich einen Platz bei uns... habe ihn mal in codableConcept.text des Slice NichtNatuerlicherTod gepackt, aber das halte ich nicht für sinnvoll. Müssen wir das nochmal angehen?

- bei "Weitere Angaben zur Klassifikation der Todesursache bei Anhaltspunkten für einen nicht natürlichen Tod" sind mehr Angaben, als wir aktuell abbilden können. Den ICD-10 Code haben wir als component Slice mit Namen Details, aber dann gibts neben dem ICD-Freitext noch einen weiteren Freitext.

- Ich weiß, wir hatten das schon, aber ist Todesbescheinigung = Sterbeurkunde?