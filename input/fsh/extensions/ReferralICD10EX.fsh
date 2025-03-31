Extension: ReferralICD10EX
Id: referral-icd10-ex
Title: "Referral ICD10 EX"
Description: "Extension for ICD10 code in Referral"
// Auswirkungen erläutern
Context: ServiceRequest 
* value[x] only CodeableConcept
* valueCodeableConcept
  * text 1..1 MS
  * coding 1..1 MS
  * coding from $icd-10-vs
    * system 1..1 MS
    * system = $icd-10-cs (exactly)
    * code 1..1 MS
    * display 1..1 MS
