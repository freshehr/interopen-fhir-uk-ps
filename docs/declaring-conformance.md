# Declaring Conformance - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**Conformance**](conformance.md)
* **Declaring Conformance**

## Declaring Conformance

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

A system declaring conformance to UK Patient Summary (UK PS) **SHALL** implement the conformance requirements as defined for one or both of the following actors:

* [UK PS Consumer](ActorDefinition-au-ps-actor-consumer.md)
* [UK PS Producer](ActorDefinition-au-ps-actor-producer.md)

AU PS does not define any FHIR-specific interactions and therefore does not include a CapabilityStatement.

Systems implementing UK PS **MAY** implement interactions defined in other CapabilityStatements, for example:

* [IPS Server Capability Statement](https://hl7.org/fhir/uv/ips/STU2/CapabilityStatement-ips-server.html)
* [International Patient Access Server CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-server.html)
* [International Patient Access Client CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-client.html)

### FHIR Server CapabilityStatement

Servers that implement support for UK PS profiles, declare conformance to each profile by hosting a [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html) resource at [server-base-url]/metadata that is available to both authenticated and unauthenticated clients. The capability statement declares support for a resource as either a base profile using [CapabilityStatement.rest.resource.profile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.profile) or supported profile using [CapabilityStatement.rest.resource.supportedProfile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.supportedProfile).

Example: CapabilityStatement resource for a server supporting the AU PS Patient profile as a system-wide profile that is applied across all instances of the Patient resource:

```
```
{
  "resourceType": "CapabilityStatement",
  ...
  "rest": [
    {
      "mode": "server",
    ...
        "resource": [
          ...
          {
            "type": "Patient",
            "profile": [
              "http://hl7.org/fhir/ps/StructureDefinition/uk-ps-patient"
            ],
            ...
          }
        ]
    }
  ] 
}
```

```

Example: CapabilityStatement resource for a server supporting the AU PS Patient profile as a profile for supported use cases provided by the server:

```
```
{
  "resourceType": "CapabilityStatement",
  ...
  "rest": [
    {
      "mode": "server",
    ...
        "resource": [
          ...
          {
            "type": "Patient",
            "supportedProfile": [
              "http://hl7.org.au/fhir/ps/StructureDefinition/uk-ps-patient"
            ],
            ...
          }
        ]
    }
  ] 
}
```

```

