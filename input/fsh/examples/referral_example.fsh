RuleSet: StandardReferral
* extension[referral-icd10].valueCodeableConcept.coding = $icd-10-cs#A00.0 "Cholera"
* extension[referral-icd10].valueCodeableConcept.text = "Akute Cholera"

* identifier[national-de-Referral-id].value = "c6d4ab3e-f28a-497f-9d82-3824dc30f70c"

//* status = #active
* intent = #order
* priority = #urgent

//zeigen* doNotPerform = true

* code = $sct#3457005 "Referral procedure"
* subject = Reference(PatientExample)

* authoredOn = "2025-03-28T12:12:01Z"

* requester = Reference(PractitionerExample)

* reasonCode
  * text = "Spezialbehandlung notwendig"
  * coding = ReferralReasonCS#specialistTreatment


Instance: ReferralExample
InstanceOf: Referral
Usage: #example
Title: "ReferralExample"
* insert StandardReferral

Instance: ReferralExample-Zweitmeinung
InstanceOf: Referral
Usage: #example
Title: "ReferralExample"
* insert StandardReferral
* reasonCode
  * text = "Zweitmeinung"
  * coding = ReferralReasonCS#secondOpinion