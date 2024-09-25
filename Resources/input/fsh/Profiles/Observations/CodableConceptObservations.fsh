Profile: StfObservationIdentifikation
Parent: StfBasisObservation
Id: StfObservationIdentifikation
Title: "STF Observation Identifikation"
Description: "TBD"
* insert CodConObsExt($sct, 372040007, StfIdentitaetFeststellungMethode)

Profile: StfObservationTodesanzeichen
Parent: StfBasisObservation
Id: StfObservationTodesanzeichen
Title: "STF Observation Todesanzeichen"
Description: "Informationen über die sicheren Zeichen des Todes"
* insert CodConObsExt(StfObservationCodesErweiterungCS, todesanzeichen, StfTodesanzeichen)

Profile: StfObservationAussereUrsache
Parent: StfBasisObservation
Id: StfObservationAussereUrsache
Title: "STF Observation äußere Ursache"
Description: "TBD"
* code = StfObservationCodesErweiterungCS#aussereUrsache
* value[x] only CodeableConcept
* valueCodeableConcept.text MS

Profile: StfObservationUnikausaleTodesursache
Parent: StfBasisObservation
Id: StfObservationUnikausaleTodesursache
Title: "STF Observation unikausale Todesursache"
Description: "TBD"
* insert CodConObsReq(StfObservationCodesErweiterungCS, unikausaleTodesursache, $icd-10-gm)

Profile: StfObservationUnfallkategorie
Parent: StfBasisObservation
Id: StfObservationUnfallkategorie
Title: "STF Observation Unfallkategorie"
Description: "Weitere Angaben zur Klassifikation der Todesursache, z.B. bei Unfall, Vergiftung,  Gewalteinwirkung, Selbsttötung sowie bei Komplikationen medizinischer Behandlung"
* insert CodConObsExt($sct, 55566008, StfUnfallKategorie)

Profile: StfObservationUnnatuerlicheTodesursache
Parent: StfBasisObservation
Id: StfObservationUnnatuerlicheTodesursache
Title: "STF Observation Unnatürliche Todesursache"
Description: "TBD"
* insert CodConObsExt($sct, 87309006, StfUnnatuerlicheTodesursachen)

Profile: StfObservationVerkehrsunfall
Parent: StfBasisObservation
Id: StfObservationVerkehrsunfall
Title: "STF Observation Verkehrsunfall"
Description: "Bei Verkehrsunfällen die Fortbewegungsart des Unfallopfers"
* insert CodConObsExt($sct, 418161006, StfVerkehrsunfallKategorie)

Profile: StfObservationBestattung
Parent: StfBasisObservation
Id: StfObservationBestattung
Title: "STF Observation Bestattung"
Description: "Informationen zur Art der Bestattung"
* insert CodConObsExt($sct, 52373005, StfBestattungsart)

Profile: StfObservationEntbindungKuerzlich
Parent: StfBasisObservation
Id: StfObservationEntbindungKuerzlich
Title: "STF Observation kürzliche Entbindung"
Description: "TBD"
* insert CodConObsReq(StfObservationCodesErweiterungCS, entbindungKuerzlich, StfJaNeinUnbekannt)

Profile: StfObservationAbortKuerzlich
Parent: StfBasisObservation
Id: StfObservationAbortKuerzlich
Title: "STF Observation kürzlicher Abort"
Description: "TBD"
* insert CodConObsReq(StfObservationCodesErweiterungCS, abortKuerzlich, StfJaNeinUnbekannt)

Profile: StfObservationInterruptioKuerzlich
Parent: StfBasisObservation
Id: StfObservationInterruptioKuerzlich
Title: "STF Observation kürzliche Interruptio"
Description: "TBD"
* insert CodConObsReq(StfObservationCodesErweiterungCS, interruptioKuerzlich, StfJaNeinUnbekannt)

Profile: StfObservationKompletteUntersuchung
Parent: StfBasisObservation
Id: StfObservationKompletteUntersuchung
Title: "STF Observation komplette Untersuchung"
Description: "Beantwortung der Frage, ob in die Untersuchung die gesamte Körperoberfläche mit Rücken, Kopfhaut und allen Körperöffnungen einbezogen wurden"
* insert CodConObsReq(StfObservationCodesErweiterungCS, kompletteUntersuchungFrage, StfJaNein)