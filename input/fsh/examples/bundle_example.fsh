Instance: BundleExample
InstanceOf: Bundle
Usage: #example
Title: "Bundle Example"
* identifier.value = "urn:uuid:a97e49b5-be2d-4229-8349-4a4db97b6ca9"
* timestamp = "2025-03-28T14:25:12+02:00"
* type = #collection

* entry[+].fullUrl = "http://test-schulung.de/ServiceRequest/Referral"
* entry[=].resource = Referral
* entry[+].fullUrl = "http://test-schulung.de/Patient/ReferralPatient"
* entry[=].resource = ReferralPatient
* entry[+].fullUrl = "http://test-schulung.de/Practitioner/ReferralPractitioner"
* entry[=].resource = ReferralPractitioner
