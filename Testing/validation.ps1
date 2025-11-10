if (-not (Test-Path .\validator_cli.jar)){ 
	(New-Object Net.WebClient).DownloadFile('https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar', 'validator_cli.jar')
	Write-Host "Downloaded validator_cli.jar"
}

java -jar validator_cli.jar -ig de.gematik.sterbefall#1.0.0-beta.2 -language de -server 8081