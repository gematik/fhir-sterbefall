Profile: EtbObservationIdentifikation
Parent: EtbBasisObservation
Id: EtbObservationIdentifikation
Title: "eTB Observation Identifikation"
Description: ""
* insert CodConObsExt($sct, 43390006, EtbIdentitaetFeststellungMethode)

Profile: EtbObservationTodesanzeichen
Parent: EtbBasisObservation
Id: EtbObservationTodesanzeichen
Title: "eTB Observation Todesanzeichen"
Description: ""
* insert CodConObsExt(EtbObservationCodesErweiterungCS, todesanzeichen, EtbTodesanzeichen)

Profile: EtbObservationAussereUrsache
Parent: EtbBasisObservation
Id: EtbObservationAussereUrsache
Title: "eTB Observation äußere Ursache"
Description: ""
* code = EtbObservationCodesErweiterungCS#aussereUrsache
* value[x] only CodeableConcept
* valueCodeableConcept.text MS

Profile: EtbObservationUnikausaleTodesursache
Parent: EtbBasisObservation
Id: EtbObservationUnikausaleTodesursache
Title: "eTB Observation unikausale Todesursache"
Description: ""
* insert CodConObsReq(EtbObservationCodesErweiterungCS, unikausaleTodesursache, $icd-10-gm)

Profile: EtbObservationUnfallkategorie
Parent: EtbBasisObservation
Id: EtbObservationUnfallkategorie
Title: "eTB Observation Unfallkategorie"
Description: ""
* insert CodConObsExt($sct, 55566008, EtbUnfallKategorie)

Profile: EtbObservationUnnatuerlicheTodesursache
Parent: EtbBasisObservation
Id: EtbObservationUnnatuerlicheTodesursache
Title: "eTB Observation Unnatürliche Todesursache"
Description: ""
* insert CodConObsExt($sct, 87309006, EtbUnnatuerlicheTodesursachen)

Profile: EtbObservationVerkehrsunfall
Parent: EtbBasisObservation
Id: EtbObservationVerkehrsunfall
Title: "eTB Observation Verkehrsunfall"
Description: ""
* insert CodConObsExt($sct, 418161006, EtbVerkehrsunfallKategorie)

Profile: EtbObservationBestattung
Parent: EtbBasisObservation
Id: EtbObservationBestattung
Title: "eTB Observation Bestattung"
Description: ""
* insert CodConObsExt($sct, 52373005, EtbBestattungsart)