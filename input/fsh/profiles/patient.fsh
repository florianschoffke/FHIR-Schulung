Profile: ReferralPatient
Parent: Patient
Description: "Patient for Referral"
* obeys pat-address-1
* name 1..1 MS
* name only HumannameDeBasis
  * ^short = "Angaben zum Namen"
  * ^definition = "Die Angaben zum Namen des Patienten sind vollständig zu machen. Auf Angabe des Geburtsnamen ist nach § 10 Abs. 1 Satz 3 BMG zu verzichten."
  * ^comment = "Alle Namensangaben sollen getrimmt werden, um Leerzeichen am Anfang und Ende zu entfernen."
  * family 1..1 MS
    * ^comment = "Genau ein Nachname ist anzugeben"
  * given 1..*  MS
    * ^comment = "Es ist mindestens ein Vorname anzugeben"

* birthDate 1..1 MS // Datumsformat?
* gender 1..1 MS // Code? Divers? 
// -> Basisprofile https://simplifier.net/basisprofil-de-r4/genderotherde
* gender.extension contains GenderOtherDE named gender-other 0..1 MS

* address 0..1 MS
* address obeys pat-address-2
* address only AddressDeBasis
  * ^short = "Adressangaben sind optional"
  * ^definition = "Die Angaben zur Adresse des Patienten sind optional. Es ist mindestens eine der Angaben Postleitzahl oder Stadt zu machen."
  * line 1..3 MS
    * extension 2..* MS
    // Fragen ob Extension hier notwendig ist
    * extension[Strasse] 1..1 MS
    * extension[Hausnummer] 1..1 MS
  * city MS
  * state 1..1 MS
  * postalCode MS
  * country MS



// Erklären wo das aufgehangen werden muss
Invariant: pat-address-1
Description: "Postleitzahl oder Stadt muss angegeben werden"
Expression: "exists(address.postalCode) or exists(address.city)"
Severity: #error

Invariant: pat-address-2
Description: "Postleitzahl oder Stadt muss angegeben werden"
Expression: "exists(postalCode) or exists(city)"
Severity: #error

