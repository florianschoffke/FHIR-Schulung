Mapping: ReferralLogicalMapping
Source: ReferralDataModelLogical
Target: "Referral"
Id: referral-logical-mapping
Title: "Überweisung Fachliches Mapping"

* -> "Referral"

* UeberweisungsGrund -> "Referral.reasonCode"
  * TextuelleAngabe -> "Referral.reasonCode.text"
  * Code -> "Referral.reasonCode.coding"
* UeberweisungsDringlichkeit -> "Referral.priority"
* Diagnosen -> "Referral.extension[referral-icd10]"
  * icd10 -> "Referral.extension[referral-icd10].coding"
  * diagnoseText -> "Referral.extension[referral-icd10].text"
* UeberweisungsDatum -> "Referral.authoredOn"

