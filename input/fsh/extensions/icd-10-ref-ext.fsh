Extension: ReferralICD10EXTENSION
Id: referral-icd10-extension
Title: "Referral ICD10 EX"
* value[x] only CodeableConcept
* valueCodeableConcept.text MS
* valueCodeableConcept.coding 1..1 MS

* valueCodeableConcept.coding from $icd-10-vs (extensible)

// http://fhir.de/ValueSet/bfarm/icd-10-gm
// http://fhir.de/CodeSystem/bfarm/icd-10-gm
