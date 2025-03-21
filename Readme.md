# gematik FHIR Schulung für Spezifikateure

## UseCase "Digitales Überweisungsformular"

### Beschreibung

Der Anwendungsfall dreht sich um die Erstellung eines digitalen Überweisungsformulars, das z.B. von Hausärzten an Fachärzte gesendet wird, um den Überweisungsprozess effizient und sicher zu gestalten. Dieses Formular soll alle notwendigen Informationen enthalten, um eine nahtlose Weiterbehandlung des Patienten zu gewährleisten.

Die FHIR-Spezifikation für dieses digitale Überweisungsformular sollte sicherstellen, dass alle oben genannten Datenfelder in einem strukturierten und interoperablen Format erfasst werden, um die Integration in bestehende Systeme zu erleichtern. Es soll darauf geachtet werden, dass die Daten kompatibel mit der ePA sind, um in Zukunft ggf. Überweisungen auch in die ePA zu übertragen.

### Zu übertragende Informationen

**Zielsetzung:**  
Die Entwicklung eines digitalen Überweisungsformulars, das von Hausärzten an Fachärzte gesendet wird, um den Überweisungsprozess effizient und sicher zu gestalten. Das Formular soll alle notwendigen Informationen enthalten, um eine nahtlose Weiterbehandlung des Patienten zu gewährleisten.

1. **Patientendaten**  
   - **KVNR (Krankenversicherungsnummer):** Eindeutige Identifikation des Patienten innerhalb des Gesundheitssystems.
   - **Name:** Vollständiger Name des Patienten.
   - **Geburtsdatum:** Geburtsdatum zur Altersbestimmung und Identifikation.
   - **Geschlecht:** Geschlecht des Patienten, wichtig für medizinische Entscheidungen.
   - **Adressangaben:** Wohnadresse des Versicherten.

2. **Grund der Überweisung**  
   - **Beschreibung:** Kodierte Information, um den Überweisungsgrund klar darzustellen. Folgende fachliche Überweisungsgründe sollen kodiert übertragen werden:
     - Spezialisierte Behandlung
     - Diagnosesicherstellung
     - Zweitmeinung
     - Weiterbehandlung
     - Komplexe medizische Behandlung

3. **Dringlichkeit der Überweisung**  
   - **Optionen:** Auswahlfeld mit den Optionen "Dringend" und "Normal", um die Priorität der Überweisung festzulegen.

4. **Datum der Überweisung**  
   - **Erfassung:** Das Datum, an dem die Überweisung erstellt wurde, um zeitliche Abläufe und Fristen zu dokumentieren.

5. **Diagnosen des Patienten**  
   - **Aktuelle Digagnosen:** Diagnosen des Versicherten warum er überwiesen werden soll.

6. **Kontaktinformationen des überweisenden Arztes**  
   - **LANR (Lebenslange Arztnummer):** Eindeutige Identifikation des Arztes.
   - **Telematik ID (optional):** Zusätzliche Identifikation im digitalen Gesundheitsnetzwerk.
   - **Name des Arztes:** Vollständiger Name des überweisenden Arztes.
   - **Telefonnummer des Arztes:** Telefonnummer des Arztes zu Absprachen


