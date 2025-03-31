Profile: Referral
Parent: ServiceRequest
Id: Referral
Title: "Referral"
Description: "Contains the Referral information"

// Diagnose besser in eigener Ressource, hier als Extension zur Übung
* extension 1..* MS
* extension contains ReferralICD10EX named referral-icd10 1..* MS

// Überweisungsgrund
* reasonCode 1..1 MS
  * coding 1..1
  * coding from ReferralReasonVS (required)






/*
* reasonCode 1..1 MS
  * text 1..1 MS
  * coding 1..1 MS
  // Error zeigen: * coding from ReferralReasonCS
  * coding from ReferralReasonVS
*/

// Busienss Identifier
* identifier 1..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing for identifier"
  * ^slicing.ordered = false
  
* identifier contains national-de-Referral-id 1..1 MS // fiktiv
* identifier[national-de-Referral-id].system 1..1 MS
* identifier[national-de-Referral-id].system = "http://fhir.de/BMG/national-id/Referral" (exactly)

* identifier[national-de-Referral-id].value 1..1 MS

* status = #active (exactly)

* intent MS
* intent from ReferralIntentVS
// einfache Alternative: * intent = #order (exactly)

* priority 1..1 MS
* priority from ReferralPriorityVS

// Erläutern von 0..0
* doNotPerform 0..0

// Alias erklären
* code 1..1 MS
* code = $sct#3457005 "Referral procedure" (exactly)

* subject MS

* authoredOn 1..1 MS
// Datentyp dateTime anschauen
* authoredOn obeys sr-authored-on-1

* requester 1..1 MS
* requester only Reference(ReferralPractitioner)



// Fachmodell Rückspiegelung -> soll aufgenommen werden?
* note MS

Invariant: sr-authored-on-1
Description: "At least the day must be specified"
Expression: "toString().length()>=10"
Severity: #error

