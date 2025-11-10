## {{page-title}}

Die FHIR-Spezifikation für den Sterbefall ist für verschiedene Akteure im Gesundheitswesen, im Bildungsbereich und in anderen Hilfseinrichtungen, die an der Schuleingangsuntersuchung beteiligt sind, relevant:

1. **Gesundheitsämter:**
   - Sie sind für das Management der Daten verantwortlich.

2. **Ärzte und Gesundheitsdienstleister:**
   - Sie führen die initialen und ggf. weiterführenden Untersuchungen (z.B. Obduktion) im Umfeld des Sterbefalls durch und dokumentieren die entsprechenden Daten.
   
3. **Landeskrebsregister:**
   - Sie empfangen die erhobenen Daten und verarbeiten sie im Kontext der Dokumentation von Krebserkrankungen.


Die Interaktionen zwischen diesen Akteuren erfolgen in erster Linie über den Datenaustausch. Die Gesundheitsämter sammeln und verwalten die Daten zum Sterbefall, Ärzte führen Untersuchungen durch und dokumentieren die Ergebnisse digital. Landeskrebregister erhalten Zugang zu den Gesundheitsdaten der verstorbenen Krebspatienten und verarbeiten diese im Rahmen ihres gesetzlichen Auftrags.

### Workflow-Abbildung

Zum besseren Verständnis wurde der Workflow, der in diesem IG beschrieben ist, in folgendem Diagramm visualisiert:

{{render:images-workflow}}

### Beschreibung des Lösch-Workflow

Aus dem Workflow ist zu entnehmen, dass die Export-Bundle nur temporär auf dem FHIR-Server des Landeskrebsregister persistiert werden. Sobald eine erfolgreiche Verarbeitung stattgefunden hat, werden alle Ressourcen zu einem Export-Bundle gehörend, gelöscht.

Dafür wird eine Lösch-Interaktion auf Basis der Patient-Instanz als eindeutiges Element innerhalb des Export-Bundle getriggert. Diese Löschung muss final sein (kein Soft-Delete).

Je nach verwendeter Infrastruktur muss somit nach einem Soft-Delete in regelmäßigen Abständen ein Cleanup Erfolgen, welches den Soft-Delete in einen Hard-Delete umwandelt.

Kommt ein HAPI-FHIR-Server zum Einsatz, heißt das konkret: 

- Als erstes wird ein Soft-Delete ausgeführt für den Patient und alle zugehörigen Ressourcen

```
DELETE Patient/[ID]?_cascade=delete
```

- In regelmäßigen Abständen wird ein $expunge ausgeführt, um die gelöschten Ressourcen zu entfernen.

```
POST [base]/Patient/[ID]/$expunge
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "limit",
      "valueInteger": 1000
    },
    {
      "name": "expungeDeletedResources",
      "valueBoolean": true
    }
  ]
}
```
