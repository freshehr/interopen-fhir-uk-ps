# Resource uk-ps-actor-producer



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "uk-ps-actor-producer",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org.uk/fhir/ps/ImplementationGuide/hl7.fhir.uk.ps"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
      "valueUri" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
      "valueString" : "0.1.0-cibuild"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
      "valueString" : "UKPSProducer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
      "valueString" : "UK PS Producer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
      "valueCode" : "active"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
      "valueDateTime" : "2026-02-18T15:41:40+00:00"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.publisher",
      "valueString" : "HL7 UK / INTEROPen"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
      "valueContactDetail" : {
        "name" : "INTEROPen",
        "telecom" : [
          {
            "system" : "url",
            "value" : "https://interopen.org",
            "use" : "work"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
      "valueMarkdown" : "An UK PS Producer is a system which creates or assembles an UK PS Bundle through automated generation or human curation of the patient summary content. This actor is based on the Creator (IPS) actor, and describes the additional requirements and documentation applied for the Australian context."
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:3166",
            "code" : "GB"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.copyright",
      "valueMarkdown" : "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved."
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
      "valueCode" : "system"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
      "valueMarkdown" : "An UK PS Producer **SHALL** comply with the requirements of the [Creator (IPS)](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Creator.html), and:\n\n - **SHALL** implement the UK PS Bundle, UK PS Composition and UK PS Patient profiles\n\n - **SHALL** for each mandatory section in UK PS Composition, implement the UK PS profiles referenced by the corresponding section entry (i.e. UK PS AllergyIntolerance, UK PS Condition, and at least one of UK PS MedicationStatement and UK PS MedicationRequest)\n\n - **SHOULD** for each recommended section in UK PS Composition, implement the profiles referenced by the corresponding section entry (e.g. UK PS Immunization, Observation Results - Radiology (IPS), UK PS Procedure, and DeviceUseStatement (IPS))\n\n - **SHOULD** for each optional or undefined section, implement profiles referenced in the UK PS Bundle, otherwise implement an UK Core or UK Base profile where applicable\n\n - **SHALL** implement the UK PS Producer obligations defined in the implemented profiles. Where an IPS profile is referenced in the UK PS Bundle, the obligations of the Creator (IPS) actor **SHALL** apply\n\n - **SHALL** implement the requirements on [Suppressed Data](https://build.fhir.org/ig/hl7au/au-fhir-ps/branches/master/general-requirements.html#suppressed-data) when data is NOT allowed to be shared\n\n - **SHALL** implement the requirements on [Missing Data, Empty Sections, Known Absence of Data](https://build.fhir.org/ig/hl7au/au-fhir-ps/branches/master/general-requirements.html#missing-data-empty-sections-known-absence-of-data)"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.derivedFrom",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/fhir-types",
        "code" : "ActorDefinition"
      }
    ]
  }
}

```
