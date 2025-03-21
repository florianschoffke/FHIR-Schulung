Logical: PatientDataModel
Id: patient-logical-model
Title: "Datenmodell des Patienten"
Description: "Fachliches Datenmodell eines Patienten für die Schnittstelle"
* ^status = #draft
* . ^short = "Datenmodell des Patienten"
* . ^definition = "Fachliches Datenmodell eines Patienten für die Schnittstelle"

// Schema: Name Kardinalität Datentyp Kurzbeschreibung Langbeschreibung
* Name 1..1 HumannameDeBasis "Angaben zum Namen" "Angaben zum Namen" //Basisprofil
  * Nachname 1..1 string "Genau ein Nachname ist anzugeben" "Genau ein Nachname ist anzugeben"
  * Vorname 1..* string "Es ist mindestens ein Vorname anzugeben" "Es ist mindestens ein Vorname anzugeben"
* Geburtstag 1..1 date "Angabe eines Geburtstags" "Angabe eines Geburtstags"
* Krankenversicherung 1..1 Coverage "Angaben zum Versicherungsstatus" "Angaben zum Versicherungsstatus"
  * Krankenversicherungsnummer 1..1 Identifier "Angabe der KVNR" "Angabe der KVNR"
  * NameKrankenversicherung 0..1 string "Angabe des Namens der Krankenversicherung" "Angabe des Namens der Krankenversicherung"
* Adresse 0..1 AddressDeBasis "Adressangaben sind optional" "Adressangaben sind optional" //Basisprofil
  * Strasse 1..1 string "Angabe der Straße" "Angabe der Straße"
  * Hausnummer 1..1 integer "Angabe der Hausnummer" "Angabe der Hausnummer"
  * Postleitzahl 0..1 integer "Angabe einer Deutschen Postleitzahl" "Angabe einer Deutschen Postleitzahl"
  * Stadt 1..1 string "Angabe der Stadt" "Angabe der Stadt"
  * Bundesland 1..1 string "Angabe Bundesland" "Angabe Bundesland"
* Diagnosen 1..* BackboneElement "Angaben zu Diagnosen" "Angaben zu Diagnosen" 
  * icd10 1..1 Coding "Angabe des ICD-10 Codes" "Angabe des ICD-10 Codes"
  * diagnoseText 0..1 string "Freitext zur Diagnose" "Freitext zur Diagnose"