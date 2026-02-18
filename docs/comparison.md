# Comparison With Other National and International IGs - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Comparison With Other National and International IGs**

## Comparison With Other National and International IGs

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

UK Patient Summary (UK PS) complies with, and/or leverages, national and international standards, in particular:

* [International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/)
* [International Patient Summary Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/)
* [UK Core Implementation Guide STU2 2.0.1](https://simplifier.net/guide/uk-core-implementation-guide-stu2?version=2.0.1)

Relationships between UK PS, UK Core, and the above key implementation guides are described in [Relationship with other IGs](relationship.md).

### Profile Comparison

As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, **Must Support** elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data.

The table below provides a profile only comparison from UK PS to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an International Patient Summary profile **MAY NOT** be compliant with UK PS.

**Legend:**

![](green_checkmark.png) **Compliant**: An UK PS compliant resource meets all requirements of the compared profile.

![](orange_checkmark.png) **Additional requirements**: An UK PS compliant resource is compatible, but additional changes may be needed to meet all requirements of the compared profile. Where additional requirements are identified, more information is provided in the sections below.

![](cross_red_circle.png) **Incompatible**: An UK PS compliant resource is incompatible with the compared profile. A resource cannot be compliant to both. Where incompatible requirements are identified, more information is provided in the sections below.

![](minus_symbol.png) **No equivalent profile**: No equivalent profile for comparison.

| | | | |
| :--- | :--- | :--- | :--- |
| [UK PS AllergyIntolerance](StructureDefinition-uk-ps-allergyintolerance.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Bundle](StructureDefinition-au-ps-bundle.md) | ![](minus_symbol.png) | ![](green_checkmark.png) | ![](minus_symbol.png) |
| [UK PS Composition](StructureDefinition-au-ps-composition.md) | ![](minus_symbol.png) | ![](green_checkmark.png) | ![](minus_symbol.png) |
| [UK PS Condition](StructureDefinition-au-ps-condition.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| IPA-problem-list-item![](orange_checkmark.png) | | | |
| [UK PS Encounter](StructureDefinition-au-ps-encounter.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](green_checkmark.png) |
| [UK PS Immunization](StructureDefinition-au-ps-immunization.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Medication](StructureDefinition-au-ps-medication.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS MedicationRequest](StructureDefinition-au-ps-medicationrequest.md) | ![](orange_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS MedicationStatement](StructureDefinition-au-ps-medicationstatement.md) | ![](orange_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Organization](StructureDefinition-au-ps-organization.md) | ![](minus_symbol.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Pathology Result Observation](StructureDefinition-au-ps-diagnosticresult-path.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Patient](StructureDefinition-au-ps-patient.md) | ![](orange_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Practitioner](StructureDefinition-au-ps-practitioner.md) | ![](orange_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS PractitionerRole](StructureDefinition-au-ps-practitionerrole.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS Procedure](StructureDefinition-au-ps-procedure.md) | ![](minus_symbol.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |
| [UK PS RelatedPerson](StructureDefinition-au-ps-relatedperson.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](green_checkmark.png) |
| [UK PS Smoking Status](StructureDefinition-au-ps-smokingstatus.md) | ![](green_checkmark.png) | ![](green_checkmark.png) | ![](green_checkmark.png) |

#### IPA Profile Additional Requirements

[IPA 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/) describes how an application acting on behalf of a patient can access patient information from a clinical records system using a FHIR-based API.

##### Additional Requirements

The following IPA profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

| | | | |
| :--- | :--- | :--- | :--- |
| [UK PS Condition](StructureDefinition-au-ps-condition.md) | [IPA-problem-list-item](https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-problem-list-item.html) | Condition.category | Requires category of 'problem-list-item'. |
| [UK PS MedicationRequest](StructureDefinition-au-ps-medicationrequest.md) | [IPA-MedicationRequest](https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-medicationrequest.html) | MedicationRequest.reported[x] | *Must Support*element in IPA. |
| [UK PS MedicationStatement](StructureDefinition-au-ps-medicationstatement.md) | [IPA-MedicationStatement](https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-medicationstatement.html) | MedicationStatement.statusReason | *Must Support*element in IPA. |
| MedicationStatement.context | *Must Support*element in IPA. | | |
| MedicationStatement.informationSource | *Must Support*element in IPA. | | |
| [UK PS Patient](StructureDefinition-au-ps-patient.md) | [IPA-Patient](https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-patient.html) | Patient.identifier | IPA requires all identifiers to have value (1..1), and at least one of system, type or assigner (ipa-pat-1). |
| Patient.identifier.value | *Must Support*element in IPA. | | |
| Patient.active | Element SHOULD be present if Patient.link is present (ipa-pat-4).*Must Support*element in IPA. | | |
| Patient.name.text | Sub-element SHOULD be present (ipa-pat-3). | | |
| Patient.link | *Must Support*element in IPA. | | |
| [UK PS Practitioner](StructureDefinition-au-ps-practitioner.md) | [IPA-Practitioner](https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-practitioner.html) | Practitioner.name.text | Sub-element SHOULD be present (ipa-pract-1). |

##### Missing and Suppressed Data

UK PS compliant resources are compliant with IPA requirements for Missing Data. IPA does not include requirements for Suppressed Data.

### Capability Statement Comparison

No comparison is undertaken. UK PS does not define any FHIR specific interactions - no CapabilityStatement is defined.

Systems implementing UK Patient Summary **MAY** implement interactions defined in other CapabilityStatements, for example:

* [IPS Server Capability Statement](https://hl7.org/fhir/uv/ips/STU2/CapabilityStatement-ips-server.html)
* [International Patient Access Server CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-server.html)
* [International Patient Access Client CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-client.html)

