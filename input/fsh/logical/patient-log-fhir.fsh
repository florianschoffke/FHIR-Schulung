Logical: PatientDataModelResources
Parent: Element
Id: patient-resources-logical-model
Title: "Datenmodell des Patienten nach FHIR Ressourcen"
Description: "Fachliches Datenmodell eines Patienten auf FHIR Ressourcen"
* ^status = #draft

// Schema: Name Kardinalität Datentyp Kurzbeschreibung Langbeschreibung
* AngabenPatient 1..1 Patient "FHIR Ressource Patient" //FHIR Ressource
  * Name 1..1 HumannameDeBasis "Angaben zum Namen" //Basisprofil
    * Nachname 1..1 string "Genau ein Nachname ist anzugeben"
    * Vorname 1..* string "Es ist mindestens ein Vorname anzugeben"
  * Geburtsdatum 1..1 date "Angabe eines Geburtstags"
  * Geschlecht 1..1 code "Angabe des Geschlechts"
  * Adresse 0..1 AddressDeBasis "Adressangaben sind optional" //Basisprofil
    * Strasse 1..1 string "Angabe der Straße"
    * Hausnummer 1..1 integer "Angabe der Hausnummer"
    * Postleitzahl 0..1 integer "Angabe einer Deutschen Postleitzahl"
    * Stadt 1..1 string "Angabe der Stadt"
    * Bundesland 1..1 string "Angabe Bundesland"

* AngabenUeberweisung 1..1 ServiceRequest "Angaben zur Überweisung"
  * UeberweisungsDatum 1..1 date "Angabe des Überweisungsdatums"
  * UeberweisungsGrund 1..1 code "Angabe des Überweisungsgrundes"
  * UeberweisungsDringlichkeit 1..1 code "Angabe der Dringlichkeit der Überweisung"
  * Diagnosen 1..* BackboneElement "Angaben zu Diagnosen"
    * icd10 1..1 Coding "Angabe des ICD-10 Codes"
    * diagnoseText 0..1 string "Freitext zur Diagnose"

* AngabenArzt 1..1 Practitioner "FHIR Ressource Practitioner" //FHIR Ressource
  * Name 1..1 HumannameDeBasis "Angaben zum Namen" //Basisprofil
    * Nachname 1..1 string "Genau ein Nachname ist anzugeben"
    * Vorname 1..* string "Es ist mindestens ein Vorname anzugeben"
  * ArztLANR 1..1 string "Angabe der LANR"
  * ArztTelematikID 1..1 string "Angabe der Telematik-ID"
  * ArztTelefon 1..1 string "Angabe der Telefonnummer des Arztes"
