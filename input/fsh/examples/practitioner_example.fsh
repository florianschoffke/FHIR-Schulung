Instance: PractitionerExample
InstanceOf: ReferralPractitioner
Usage: #example
Title: "Practitioner Example"
* name
  * family = "Maier"

* identifier[lanr].value = "123456789"
* telecom[phone].value = "123456789"

// Angabe der E-Mail möglich?
// * telecom[email].value = "maier@praxis.de"

* telecom[+].system = #email
* telecom[=].value = "maier@praxis.de"