
Profile: PGKEHVDOrganization
Parent: Organization
Id: pgk-ehvd-organization
Title: "PGK eHVD Organization"
Description: "This profile defines a FHIR Organization representing a healthcare organization registered in the Austrian eHVD. Organizations conforming to this profile are assigned Trust Level 3, indicating that their identity and status as a healthcare provider are established through the eHVD."

* meta.security 1..*
* meta.security ^short = "Trust level of the eHVD organization"
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = #system
* meta.security ^slicing.rules = #open
* meta.security contains pgkTrustLevel 1..1
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-3

* identifier 1..*
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains GDA-OID 1..1
* identifier[GDA-OID] ^short = "Gesundheitsdiensteanbieter-OID (GDA-OID)"
* identifier[GDA-OID] ^definition = "The OID of the healthcare service provider (Gesundheitsdiensteanbieter, GDA) as registered in the Austrian GDA-Index. The OID is assigned by the Federal Ministry of Health (Bundesministerium für Gesundheit)."
* identifier[GDA-OID].value 1..1
* identifier[GDA-OID].value ^short = "OID for the Gesundheitsdiensteanbieter (GDA) in Austria"
* identifier[GDA-OID].system 1..1
* identifier[GDA-OID].system = "urn:ietf:rfc:3986"
* identifier[GDA-OID].system ^short = "A Gesundheitsdiensteanbieter (GDA) in Austria is represented via a URI (OID)"
* identifier[GDA-OID].assigner.display = "Bundesministerium für Gesundheit"

* active 1..1
* name 1..1


Instance: OrganizationAmadeusSpitalEHVD
InstanceOf: PGKEHVDOrganization
Title: "Amadeus Spital - eHVD Organization"
Description: "This example illustrates a healthcare organization registered in the Austrian eHVD and assigned Trust Level 3."
Usage: #example

* active = true

// PGK Trust Level
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-3

// Identifiers
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.2.40.0.34.99.4613.3"
* identifier[=].assigner.display = "Bundesministerium für Gesundheit"

* identifier[+].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[=].value = "K101"
* identifier[=].assigner.display = "Österreichisches Bundesministerium für Gesundheit"

* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "123456789"
* identifier[=].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"

// Organization Type
* type[+] = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#300 "Allgemeine Krankenanstalt"

// Organization Name
* name = "Amadeus Spital"

// Address
* address[+].use = #work
* address[=].type = #both
* address[=].line[0] = "Mozartgasse 1-7 Haupteingang"

* address[=].line[0].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line[0].extension[=].valueString = "Mozartgasse"

* address[=].line[0].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line[0].extension[=].valueString = "1-7"

* address[=].line[0].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[=].line[0].extension[=].valueString = "Haupteingang"

* address[=].line[0].extension[+].url = "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation"
* address[=].line[0].extension[=].valueString = "Barrierefreier Zugang"

* address[=].city = "St. Wolfgang"
* address[=].state = "Salzburg"
* address[=].postalCode = "5350"
* address[=].country = "AUT"

// Contact
* contact[+].telecom[+].system = #email
* contact[=].telecom[=].value = "info@amadeusspital.at"
* contact[=].telecom[=].use = #work

* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "+43.6138.3453446.0"
* contact[=].telecom[=].use = #home
