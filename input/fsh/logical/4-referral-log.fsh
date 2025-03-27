Logical: ReferralDataModelLogical
Parent: Element
Id: ReferralDataModel-Logical
Title: "Referral Data Model-Logical"
* UeberweisungsGrund 1..1 BackboneElement "Angabe des Überweisungsgrundes"
  * TextuelleAngabe 1..1 string "Textuelle Angabe des Überweisungsgrundes"
  * Code 1..1 code "Code des Überweisungsgrundes" 
    * ^comment = """
  **Mögliche Gründe:**
  - Spezialisierte Behandlung
  - Diagnosesicherstellung
  - Zweitmeinung
  - Weiterbehandlung
  - Komplexe medizinische Behandlung
  """
* UeberweisungsDringlichkeit 1..1 code "Angabe der Dringlichkeit der Überweisung"
  * ^comment = "Mögliche Dringlichkeiten: dringend, normal"
* Diagnosen 1..* BackboneElement "Angaben zu Diagnosen"
  * icd10 1..1 Coding "Angabe des ICD-10 Codes"
  * diagnoseText 0..1 string "Freitext zur Diagnose"
* UeberweisungsDatum 1..1 date "Angabe des Überweisungsdatums"