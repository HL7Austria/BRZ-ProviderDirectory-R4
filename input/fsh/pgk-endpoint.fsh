
Profile: BRZPDEndpointPGKHubEndpoint
Parent: Endpoint
Id: pgk-hub-endpoint
Title: "PGK Hub Endpoint"
Description: "This profile defines a FHIR Endpoint resource used in the Plattform Gerichtete Kommunikation (PGK) Provider Directory to represent the URL of a Matrix homeserver. The endpoint is associated with a PGK Hub Operator through the managingOrganization element. The Endpoint resource is created as part of a defined organizational process. The URL of the Matrix homeserver is stored in the address element."

* meta.security 1..*
* meta.security ^short = "Trust level of the PGK Hub endpoint"
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = #system
* meta.security ^slicing.rules = #open
* meta.security contains pgkTrustLevel 1..1
* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

* status = #active

* connectionType = https://pgk.elga.gv.at/CodeSystem/endpoint-connection-type#matrix-homeserver

* name 1..1
* name ^short = "Name of the Matrix homeserver"

* managingOrganization 1..1
* managingOrganization only Reference(BRZPDOrganizationPGKHubOperator)
* managingOrganization ^short = "PGK Hub Operator organization operating the Matrix homeserver"

* address 1..1
* address ^short = "URL of the Matrix homeserver"
* address ^definition = "The base URL of the Matrix homeserver registered in the Provider Directory."

//TODO: FHIR defines this as required in R4.
* payloadType 1..*

Instance: EndpointAlpenConnectPGKHub
InstanceOf: BRZPDEndpointPGKHubEndpoint
Title: "AlpenConnect PGK Hub Endpoint"
Description: "This example illustrates a Matrix homeserver endpoint associated with the fictional PGK Hub Operator organization AlpenConnect Services GmbH. The endpoint has Trust Level 4."
Usage: #example

* meta.security[pgkTrustLevel] = http://pgk.elga.gv.at/CodeSystem/trust-level#tl-4

* status = #active

* connectionType = https://pgk.elga.gv.at/CodeSystem/endpoint-connection-type#matrix-homeserver

* name = "AlpenConnect Matrix Homeserver"

* managingOrganization = Reference(OrganizationAlpenConnectServicesGmbH)

//TODO: resolve required element
* payloadType = http://terminology.hl7.org/CodeSystem/endpoint-payload-type#any

* address = "https://matrix.alpenconnect.example"