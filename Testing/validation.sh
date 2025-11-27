if [ ! -f "./validator_cli.jar" ]; then
    echo "validator_cli.jar wird heruntergeladen..."
    curl -L -o validator_cli.jar "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"
    echo "Download abgeschlossen."
fi

java -jar validator_cli.jar -ig "de.gematik.sterbefall#1.0.0-beta.3" -language "de" -server 8081