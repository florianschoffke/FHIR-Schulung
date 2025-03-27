Instance: PatientExample
InstanceOf: ReferralPatient
Usage: #example
Title: "Patient Example"
* name
  * family = "Müller"
  * given[+] = "Max"
  * given[+] = "Peter"
* gender = #male
* birthDate = "1980-01-01"
* address
  * line[+] = "Musterstraße 1"
  * line.extension[Strasse].valueString = "Musterstraße"
  * line.extension[Hausnummer].valueString = "1"
  * city = "Musterstadt"
  * state = "Musterland"
  * postalCode = "12345"

Instance: InvalidPatientExample
InstanceOf: ReferralPatient
Usage: #example
Title: "Patient Example"
* name
  * family = "Müller"
  * given[+] = "Max"
  * given[+] = "Peter"
* gender = #male
* birthDate = "1980-01-01"
* address
  * line[+] = "Musterstraße 1"
  * line.extension[Strasse].valueString = "Musterstraße"
  * line.extension[Hausnummer].valueString = "1"
  * state = "Musterland"
