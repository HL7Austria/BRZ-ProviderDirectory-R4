
Profile: PGKHubRegisteredOrganization
Parent: Organization
Id: pgk-hub-registered-organization
Title: "PGK Hub-Registrated Organization"
Description: "This profile defines a FHIR Organization representing a healthcare service organization registered by a PGK Hub operator. The organization is not recognized as a healthcare provider in the Austrian eHVD and is therefore assigned Trust Level 2. Its registration and identity information are managed by the responsible PGK Hub operator."

* meta.security 1..*
* meta.security ^short = "Trust level of the healthcare service organization"
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = #system
* meta.security ^slicing.rules = #open
* meta.security contains pgkTrustLevel 1..1
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-2

* active 1..1
* name 1..1



Instance: OrganizationSanitaetshausAlpenVital
InstanceOf: PGKHubRegisteredOrganization
Title: "Sanitätshaus AlpenVital GmbH"
Description: "This example illustrates a fictional medical equipment supplier registered by a PGK Hub operator. The organization receives and processes prescriptions for medical aids and assistive devices. As the organization is not registered in the Austrian eHVD, it is assigned Trust Level 2."
Usage: #example

* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-2

* active = true
* name = "Sanitätshaus AlpenVital GmbH"

* telecom[+].system = #email
* telecom[=].value = "office@alpenvital.example"
* telecom[=].use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].city = "Graz"
* address[=].postalCode = "8010"
* address[=].country = "AUT"
