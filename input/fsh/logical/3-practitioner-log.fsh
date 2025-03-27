Logical: TransferralPractitionerLogical
Parent: Element
Id: transferral-practitioner-logical
Title: "Datenmodell des Arztes"
Description: "Fachliches Datenmodell eines Patienten für die Schnittstelle"
* Name 1..1 HumannameDeBasis "Angaben zum Namen"
  * Nachname 1..1 string "Genau ein Nachname ist anzugeben"
  * Vorname 0..* string "Vorname kann angegeben werden"
* Identifikatoren 1..2 BackboneElement "Identifikatoren des Arztes"
  * LANR 1..1 string "Angabe der LANR"
  * TelematikID 0..1 string "Angabe der Telematik-ID"
* Telefon 1..1 string "Angabe der Telefonnummer des Arztes"