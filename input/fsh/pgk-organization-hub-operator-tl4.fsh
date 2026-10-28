Profile: BRZPDOrganizationPGKHubOperator
Parent: HL7ATCoreOrganization
Title: "PGK Hub Operator"
Description: "This profile defines the requirements for a FHIR Organization representing an entity that operates a PGK (Plattform Gerichtete Kommunikation) Hub based on the Matrix communication protocol. The organization is responsible for the technical and organizational operation of the hub. Organizations conforming to this profile are assigned Trust Level 4, indicating a high level of trust established through a formal approval process."

* meta.security 1..*
* meta.security ^short = "Trust level of the PGK Hub operator"
* meta.security ^definition = "Specifies the trust level assigned to the PGK Hub operator following a formal approval process."
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = #system
* meta.security ^slicing.rules = #open
* meta.security contains pgkTrustLevel 1..1
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

Instance: OrganizationAlpenConnectServicesGmbH
InstanceOf: BRZPDOrganizationPGKHubOperator
Title: "AlpenConnect Services GmbH"
Description: "This example illustrates a FHIR Organization instance representing an approved PGK Hub operator conforming to the PGK Hub Operator profile. The organization has successfully completed the formal approval process and is assigned Trust Level 4."
Usage: #example

* active = true
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX "Tax ID number"
* identifier[=].system = "urn:oid:1.2.40.0.10.2.0.3.1"
* identifier[=].value = "ATU87654321"

* identifier[+].system = "urn:publicid:gv.at:baseid+XFN"
* identifier[=].value = "FN 654321b"

* name = "AlpenConnect Services GmbH"
* alias = "AlpenConnect"
* type = http://terminology.hl7.org/CodeSystem/organization-type#bus "Non-Healthcare Business or Corporation"

* telecom[+].system = #email
* telecom[=].value = "office@alpenconnect.example"

* address[+].city = "Graz"
* address[=].country = "AT"
