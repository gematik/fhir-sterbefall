Profile: StfObservationIdentifikation
Parent: StfBasisObservation
Id: StfObservationIdentifikation
Title: "STF Observation Identifikation"
Description: ""
* insert CodConObsExt($sct, 43390006, StfIdentitaetFeststellungMethode)

Profile: StfObservationTodesanzeichen
Parent: StfBasisObservation
Id: StfObservationTodesanzeichen
Title: "STF Observation Todesanzeichen"
Description: ""
* insert CodConObsExt(StfObservationCodesErweiterungCS, todesanzeichen, StfTodesanzeichen)

Profile: StfObservationAussereUrsache
Parent: StfBasisObservation
Id: StfObservationAussereUrsache
Title: "STF Observation äußere Ursache"
Description: ""
* code = StfObservationCodesErweiterungCS#aussereUrsache
* value[x] only CodeableConcept
* valueCodeableConcept.text MS

Profile: StfObservationUnikausaleTodesursache
Parent: StfBasisObservation
Id: StfObservationUnikausaleTodesursache
Title: "STF Observation unikausale Todesursache"
Description: ""
* insert CodConObsReq(StfObservationCodesErweiterungCS, unikausaleTodesursache, $icd-10-gm)

Profile: StfObservationUnfallkategorie
Parent: StfBasisObservation
Id: StfObservationUnfallkategorie
Title: "STF Observation Unfallkategorie"
Description: ""
* insert CodConObsExt($sct, 55566008, StfUnfallKategorie)

Profile: StfObservationUnnatuerlicheTodesursache
Parent: StfBasisObservation
Id: StfObservationUnnatuerlicheTodesursache
Title: "STF Observation Unnatürliche Todesursache"
Description: ""
* insert CodConObsExt($sct, 87309006, StfUnnatuerlicheTodesursachen)

Profile: StfObservationVerkehrsunfall
Parent: StfBasisObservation
Id: StfObservationVerkehrsunfall
Title: "STF Observation Verkehrsunfall"
Description: ""
* insert CodConObsExt($sct, 418161006, StfVerkehrsunfallKategorie)

Profile: StfObservationBestattung
Parent: StfBasisObservation
Id: StfObservationBestattung
Title: "STF Observation Bestattung"
Description: ""
* insert CodConObsExt($sct, 52373005, StfBestattungsart)

Profile: StfObservationEntbindungKuerzlich
Parent: StfBasisObservation
Id: StfObservationEntbindungKuerzlich
Title: "STF Observation kürzliche Entbindung"
Description: ""
* insert CodConObsReq(StfObservationCodesErweiterungCS, entbindungKuerzlich, StfJaNeinUnbekannt)

Profile: StfObservationAbortKuerzlich
Parent: StfBasisObservation
Id: StfObservationAbortKuerzlich
Title: "STF Observation kürzlicher Abort"
Description: ""
* insert CodConObsReq(StfObservationCodesErweiterungCS, abortKuerzlich, StfJaNeinUnbekannt)

Profile: StfObservationInterruptioKuerzlich
Parent: StfBasisObservation
Id: StfObservationInterruptioKuerzlich
Title: "STF Observation kürzliche Interruptio"
Description: ""
* insert CodConObsReq(StfObservationCodesErweiterungCS, interruptioKuerzlich, StfJaNeinUnbekannt)