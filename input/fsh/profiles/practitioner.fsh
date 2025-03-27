Profile: TransferralPractitioner
Parent: Practitioner
Description: "Practitioner of transferral"
* name 1..1 MS
* name only HumannameDeBasis
  * ^short = "Angaben zum Namen"
  * ^definition = "Die Angaben zum Namen des Arztes sind vollständig zu machen."
  * ^comment = "Alle Namensangaben sollen getrimmt werden, um Leerzeichen am Anfang und Ende zu entfernen."
  * family 1..1 MS
    * ^comment = "Genau ein Nachname ist anzugeben"
  * given 0..*  MS
    * ^comment = "Es ist mindestens ein Vorname anzugeben"

// Erklären Repeatable Elemente und Slicings
* identifier 1..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing for identifier"
  * ^slicing.ordered = false
  
* identifier contains lanr 1..1 MS and telematikId 1..1 MS

* identifier[lanr] only IdentifierLanr
* identifier[telematikId] only IdentifierTelematikId

* telecom 1..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing for telecom"
  * ^slicing.ordered = false

* telecom contains phone 1..1 MS

* telecom[phone].system = #phone
  







