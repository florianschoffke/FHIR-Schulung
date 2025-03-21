Logical: PatientDataModel
Parent: Element
Id: patient-logical-model
Title: "Datenmodell des Patienten"
Description: "Fachliches Datenmodell eines Patienten für die Schnittstelle"
* ^status = #draft
* . ^short = "Datenmodell des Patienten"
* . ^definition = "Fachliches Datenmodell eines Patienten für die Schnittstelle"

// Schema: Name Kardinalität Datentyp Kurzbeschreibung Langbeschreibung
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
* AngabenUeberweisung 1..1 BackboneElement "Angaben zur Überweisung"
  * UeberweisungsDatum 1..1 date "Angabe des Überweisungsdatums"
  * UeberweisungsGrund 1..1 code "Angabe des Überweisungsgrundes"
  * UeberweisungsDringlichkeit 1..1 code "Angabe der Dringlichkeit der Überweisung"
  * Diagnosen 1..* BackboneElement "Angaben zu Diagnosen"
    * icd10 1..1 Coding "Angabe des ICD-10 Codes"
    * diagnoseText 0..1 string "Freitext zur Diagnose"
* AngabenUeberweisenderArzt 1..1 BackboneElement "Angaben zum überweisenden Arzt"
  * Name 1..1 HumannameDeBasis "Angaben zum Namen" //Basisprofil
    * Nachname 1..1 string "Genau ein Nachname ist anzugeben"
    * Vorname 1..* string "Es ist mindestens ein Vorname anzugeben"
  * ArztLANR 1..1 string "Angabe der LANR"
  * ArztTelematikID 1..1 string "Angabe der Telematik-ID"
  * ArztTelefon 1..1 string "Angabe der Telefonnummer des Arztes"
