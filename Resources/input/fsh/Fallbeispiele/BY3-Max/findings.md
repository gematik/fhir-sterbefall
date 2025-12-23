# Leichenschau vs. Obduktion
Wir haben zwei unterschiedliche Profile für Leichenschau und Obduktion, wobei letzteres das umfangreichere ist. Gibt es einen Fachlichen Grund für zwei Profile? Falls ja, müssten wir uns nochmal den SCT Code anschauen, weil beide haben den gleichen Code. Anscheinend schon vor unserem Switch auf Postmortem examination (procedure).
> Leichenschau im Rahmen der Todesbescheinigung
> Obduktion alles spätere

# Obduktionsschein

- Im Obduktionsschein sind nochmal andere Todesursachen festgestellt worden. Ergibt es dann Sinn, zwei Todesursache Observation (inkl. member) zu erstellen oder "überschreibt" der Obduktionsschein die in der Todesbescheinigung? In dem Fall würden wir nur die aus der Obduktion mit übermitteln und referenzieren.
Die Quelle haben wir ja zum Glück in der Observation stehen

    - Doppelte Übermittlung - done

- Die Aussage "Im Rahmen der äußeren Leichenschau festgestellte Todesursache/Klinischer Befund werden nicht bestätigt." aus dem Obduktionsschein wird nirgendwo abgebildet. Fehlt das?

    - nicht in der Excel fällt weg - done

- Asserter geht nicht aus dem Schein hervor

    - Ballot-Kommentar - done

- performer.actor wird aktuell von uns verpflichtend PathInst oder GerichtsmedInst gefordert. Im Beispiel ist nur ein Arzt angegeben. Müssen wir das öffnen und um eine Einzelperson erweitern?

    - Im Bsp: Path-Inst rein - done
    - Ballot-Kommentar (Stefan) - done

- Für ein vollständiges Beispiel fehlt ein Obduktionsbericht (ich simuliere einfach mit einer leeren PDF...)

    - Eine DocRef mit Text - done

# Profilierung

- Wir legen die Extension StfPruefcodeExtension an für Organization, haben sie aber in keinem Profil. Ich vermute mal vergessen. Soll ich die einfach mit 0..1 MS in der StfOrganisation hinterlegen?

    - Ballot-Kommentar, kann das weg? - done

# Organisation

- Für ein maximales Beispiel brauche ich eine Nummer oder ID des Standesamt Nürnberg (Hier geben wir weder Type noch System vor... das birgt eine gewisse Ungenauigkeit. Müssen wir hier ggf. nochmal dran?)

    - Dummy-System mygesundheitsamt - done

# Sterbeurkunde

- Für ein maximales Beispiel müsste ich StfSterbeurkundeAusstellung befüllen. Dazu gibt es keine Informationen

    - Denke ich mir aus - done

# Todesursache

- Nochmal Thema ICD-10. Wir haben die Version verpflichtend gemacht. Wenn wir jetzt einen ICD-10 GM Code haben, soll dann als Version trotzdem 2019 für die WHO Version drin stehen, oder lieber gar keine? Sollen wir Die Version ggf. auf fixed 2019 setzen? Ich habe das Gefül, die Quellsysteme kennen die Version gar nicht.

    - kein fixed, aber 2019 als Version
    - Prüfen, ob alle Codes WHO Codes sind, fals nicht anpassen - done

- Im Feld "Epikrise: weitere Angaben zur Todesursache und zu Begleiterkrankungen" sind mehrere Felder anhakbar: Nach eigenen Feststellungen, Nach Angaben von Angehörigen/Dritten, Obduktion wird angestrebt, weitere Angaben s. vertraulicher Teil 2
    - die ersten beiden sind nicht abgebildet bei uns. Braucht es die irgendwo?
        - fällt weg
    - Obduktion wird angestrebt, wäre meinem Verständnis nach, unser ServiceRequest StfObduktionAnfrage?
        - Ja
    - die Letzte Info frage ich mich, wo wir diesen Freitext unterbringen sollen? Soll der auch noch mit in note der Todesursache Observation? Oder Was ist das?
        - weitere note - done

- Der Freitext unter "Anhaltspunkte für einen nicht natürlichen Tod" hat nicht so wirklich einen Platz bei uns... habe ihn mal in codableConcept.text des Slice NichtNatuerlicherTod gepackt, aber das halte ich nicht für sinnvoll. Müssen wir das nochmal angehen?

    - Ballot-Kommentar MS in NichtNatTod optimieren - done

- bei "Weitere Angaben zur Klassifikation der Todesursache bei Anhaltspunkten für einen nicht natürlichen Tod" sind mehr Angaben, als wir aktuell abbilden können. Den ICD-10 Code haben wir als component Slice mit Namen Details, aber dann gibts neben dem ICD-Freitext noch einen weiteren Freitext.

    - Ballot-Kommentar: Slice Details doof benannt - done
    - Ballot-Kommentar: Slice Detail auf Max * und valueString erweitern - done

- Unser "NichtNatuerlicherTod" braucht glaube ich noch etwas guidance: Wir können da ja/nein machen, im Formular ist an einer Stelle "Anhaltspunkte für einen nicht natürlichen Tod". Ist es dann bei uns noch "Nein", solange der Verdacht nicht bestätigt ist? Sollen wir das Verdacht auf irgendwo abbilden?´

    - Verdacht ist der nichtNatTod bei uns

# Verstorbene Person

- Ist die "Beurkundung zurückgestellt, Nummer" die IdImGesundheitsamt?

    - Frage nächsten Mittwoch, wir gehen davon aus, dass es die gleiche ist

- Geburtsort steht im Formular, die entsprechende Core Extension haben wir aber nicht drin. Ist es korrekt, dass wir die Info fallen lassen?

    - Fällt weg

- Wir sollten unbedingt die Gemeindekennzahl abbilden. Die ist nicht im Beispiel. Können wir da noch eine sinnvolle Zahl bekommen?

    - GKZ  09564000

# Nicht zugeordnet

- Das Felt "Weitere Angaben zur Klassifikation beim Tod von Frauen und Kindern" ist leer. Wenn da was drin ist, ignorieren wir das? Wenn nein, wo würde es landen?

    - Feld darf eh nicht ans KR