
Profile: PGKHubAffiliation
Parent: OrganizationAffiliation
Id: pgk-hub-affiliation
Title: "PGK Hub Affiliation"
Description: "This profile defines the requirements for a FHIR OrganizationAffiliation representing the relationship between a PGK Hub operator and a healthcare organization. The PGK Hub operator is referenced through the organization element, while the healthcare organization is referenced through the participatingOrganization element."

* active 1..1
* active ^short = "Whether the hub relationship is active"

* meta.security 1..*
* meta.security ^short = "Trust level of the PGK Hub operator"
* meta.security ^definition = "Specifies the trust level assigned to the PGK Hub operator following a formal approval process."
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = #system
* meta.security ^slicing.rules = #open
* meta.security contains pgkTrustLevel 1..1
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4


* organization 1..1
* organization only Reference(BRZPDOrganizationPGKHubOperator)
* organization ^short = "PGK Hub operator"
* organization ^definition = "Reference to the organization operating the PGK Hub through which the participating healthcare organization accesses PGK communication services. The hub may be operated by the healthcare organization itself or by an external provider."

* participatingOrganization 1..1
* participatingOrganization only Reference(PGKEHVDOrganization or PGKHubRegisteredOrganization)
* participatingOrganization ^short = "PGK healthcare organization"
* participatingOrganization ^definition = "Reference to the healthcare organization participating in PGK communication services through the associated PGK Hub, regardless of whether the hub is operated internally or by an external provider."

* period ^short = "Validity period of the customer relationship"

* code 1..1
* code = https://pgk.elga.gv.at/CodeSystem/organization-affiliation-code#hub-participant



Instance: OrganizationAffiliationAmadeusSpitalAlpenConnect
InstanceOf: PGKHubAffiliation
Title: "Amadeus Spital - AlpenConnect PGK Hub Affiliation"
Description: "This example illustrates the affiliation between the fictional healthcare organization Amadeus Spital and the PGK Hub operator AlpenConnect Services GmbH. The hospital participates in PGK communication services through a hub operated by an external provider."
Usage: #example

* active = true

* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

* organization = Reference(OrganizationAlpenConnectServicesGmbH)

* participatingOrganization = Reference(OrganizationAmadeusSpitalEHVD)

* code = https://pgk.elga.gv.at/CodeSystem/organization-affiliation-code#hub-participant




Instance: OrganizationAffiliationAlpenVitalAlpenConnect
InstanceOf: PGKHubAffiliation
Title: "Sanitätshaus AlpenVital - AlpenConnect PGK Hub Affiliation"
Description: "This example illustrates the affiliation between the fictional medical equipment supplier Sanitätshaus AlpenVital GmbH and the PGK Hub operator AlpenConnect Services GmbH. The medical equipment supplier is registered by the hub operator and participates in PGK communication services through its Matrix homeserver."
Usage: #example

* active = true

* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

* organization = Reference(OrganizationAlpenConnectServicesGmbH)

* participatingOrganization = Reference(OrganizationSanitaetshausAlpenVital)

* code = https://pgk.elga.gv.at/CodeSystem/organization-affiliation-code#hub-participant
