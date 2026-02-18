# Artefacts Summary - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* **Artefacts Summary**

## Artefacts Summary

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [UK PS Consumer](ActorDefinition-uk-ps-actor-consumer.md) | An UK PS Consumer is a system that consumes an UK PS Bundle and uses it to display or process patient summary content. This actor is based on the Consumer (IPS) actor, and describes the additional requirements and documentation applied for the Australian context. |
| [UK PS Producer](ActorDefinition-uk-ps-actor-producer.md) | An UK PS Producer is a system which creates or assembles an UK PS Bundle through automated generation or human curation of the patient summary content. This actor is based on the Creator (IPS) actor, and describes the additional requirements and documentation applied for the Australian context. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [UK PS AllergyIntolerance](StructureDefinition-uk-ps-allergyintolerance.md) | This profile sets minimum expectations for an AllergyIntolerance resource in the context of a patient summary in a UK context. It is based on the [UKCore AllergyIntolerance](https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance) profile, and applies the additional requirements from [AllergyIntolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips). |
| [UK PS Bundle](StructureDefinition-uk-ps-bundle.md) | This profile sets minimum expectations for a Bundle resource in the context of a patient summary in a UK context. It is based on FHIR [Bundle](http://hl7.org/fhir/StructureDefinition/Bundle), and applies the constraints of [Bundle (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips) and UK Patient Summary (UK PS). UK PS is specified in this guide as a HL7 FHIR document (a Bundle including a Composition), composed by a set of potentially reusable 'minimal' data blocks (the UK PS profiles). |
| [UK PS Composition](StructureDefinition-uk-ps-composition.md) | This profile sets minimum expectations for a Composition resource in the context of a patient summary in a UK context. It is based on [UKCore Composition](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Composition) and imposes [Composition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips). UK Patient Summary (UK PS) is specified in this guide as a HL7 FHIR document (a Bundle including a Composition), composed by a set of potentially reusable 'minimal' data blocks (the UK PS profiles). |
| [UK PS Condition](StructureDefinition-uk-ps-condition.md) | This profile sets minimum expectations for a Condition resource in the context of a patient summary in a UK context. It is based on the [UKCore Condition](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition) profile, and applies the additional requirements from [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips). |
| [UK PS Encounter](StructureDefinition-uk-ps-encounter.md) | This profile sets minimum expectations for an Encounter resource in the context of a patient summary in a UK context. It is based on the [UKCore Encounter](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Encounter) profile, and applies the additional constraints for use in a patient summary context consistent with the profiling conventions of [IPS](https://hl7.org/fhir/uv/ips/STU2/). |
| [UK PS Medication](StructureDefinition-uk-ps-medication.md) | This profile sets minimum expectations for a Medication resource in the context of a patient summary in a UK context. It is based on the [UKCore Medication](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Medication) profile, and applies the additional requirements from [Medication (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips). |
| [UK PS MedicationRequest](StructureDefinition-uk-ps-medicationrequest.md) | This profile sets minimum expectations for a MedicationRequest resource in the context of a patient summary in a UK context. It is based on the [UKCore MedicationRequest](https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest), and applies the additional requirements from [MedicationRequest (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips). |
| [UK PS MedicationStatement](StructureDefinition-uk-ps-medicationstatement.md) | This profile sets minimum expectations for a MedicationStatement resource in the context of a patient summary in a UK context. It is based on the [UKCore MedicationStatement](https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationStatement) profile, and applies the additional requirements from [MedicationStatement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips). |
| [UK PS Organization](StructureDefinition-uk-ps-organization.md) | This profile sets minimum expectations for an Organization resource in the context of a patient summary in a UK context. It is based on the [UKCore Organization](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Organization) profile, and applies the additional requirements from [Organization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips). |
| [UK PS Patient](StructureDefinition-uk-ps-patient.md) | This profile sets minimum expectations for a Patient resource in the context of a patient summary in a UK context. It is based on the [UKCore Patient](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient) profile, and applies the additional requirements from [Patient (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips). |
| [UK PS Practitioner](StructureDefinition-uk-ps-practitioner.md) | This profile sets minimum expectations for a Practitioner resource in the context of a patient summary in an UK context. It is based on the [UKCore Practitioner](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Practitioner) profile, and applies the additional requirements from [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips). |
| [UK PS PractitionerRole](StructureDefinition-uk-ps-practitionerrole.md) | This profile sets minimum expectations for a PractitionerRole resource in the context of a patient summary in an UK context. It is based on the [UKCore PractitionerRole](https://fhir.hl7.org.uk/StructureDefinition/UKCore-PractitionerRole) profile, and applies the additional requirements from [PractitionerRole (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips). |

