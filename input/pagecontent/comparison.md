{::options toc_levels="1..4"/}

UK Patient Summary (UK PS) complies with, and/or leverages, national and international standards, in particular:
- [International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/)
- [International Patient Summary Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/)
- [UK Core Implementation Guide STU2 2.0.1](https://simplifier.net/guide/uk-core-implementation-guide-stu2?version=2.0.1)

Relationships between UK PS, UK Core, and the above key implementation guides are described in [Relationship with other IGs](relationship.html). 

### Profile Comparison
As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, *Must Support* elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data. 

The table below provides a profile only comparison from UK PS to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an International Patient Summary profile **MAY NOT** be compliant with UK PS.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Compliant**: An UK PS compliant resource meets all requirements of the compared profile.

<img src="orange_checkmark.png" width="20"/> **Additional requirements**: An UK PS compliant resource is compatible, but additional changes may be needed to meet all requirements of the compared profile. Where additional requirements are identified, more information is provided in the sections below.

<img src="cross_red_circle.png" width="20"/> **Incompatible**: An UK PS compliant resource is incompatible with the compared profile. A resource cannot be compliant to both. Where incompatible requirements are identified, more information is provided in the sections below.

<img src="minus_symbol.png" width="20"/> **No equivalent profile**: No equivalent profile for comparison.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">UK PS</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">IPA 1.1.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">IPS 2.0.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">UK Core 2.0.0</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-allergyintolerance.html">UK PS AllergyIntolerance</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-bundle.html">UK PS Bundle</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-composition.html">UK PS Composition</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-condition.html">UK PS Condition</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td rowspan="2" style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td rowspan="2" style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: center; vertical-align: middle;">IPA-problem-list-item <img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-encounter.html">UK PS Encounter</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-medication.html">UK PS Medication</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-medicationrequest.html">UK PS MedicationRequest</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-medicationstatement.html">UK PS MedicationStatement</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-organization.html">UK PS Organization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-patient.html">UK PS Patient</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-practitioner.html">UK PS Practitioner</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-uk-ps-practitionerrole.html">UK PS PractitionerRole</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
    </tbody>
</table>

#### IPA Profile Additional Requirements
[IPA 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/) describes how an application acting on behalf of a patient can access patient information from a clinical records system using a FHIR-based API.

##### Additional Requirements
The following IPA profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">UK PS Profile</th>
            <th style="width: 25%;">IPA 1.1.0 Profile</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">IPA Profile Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-uk-ps-condition.html">UK PS Condition</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-problem-list-item.html">IPA-problem-list-item</a></td>
            <td style="width: 25%;">Condition.category</td>
            <td style="width: 25%;">Requires category of 'problem-list-item'.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-uk-ps-medicationrequest.html">UK PS MedicationRequest</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-medicationrequest.html">IPA-MedicationRequest</a></td>
            <td style="width: 25%;">MedicationRequest.reported[x]</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-uk-ps-medicationstatement.html">UK PS MedicationStatement</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-medicationstatement.html">IPA-MedicationStatement</a></td>
            <td style="width: 25%;">MedicationStatement.statusReason</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.context</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.informationSource</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-uk-ps-patient.html">UK PS Patient</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-patient.html">IPA-Patient</a></td>
            <td style="width: 25%;">Patient.identifier</td>
            <td style="width: 25%;">IPA requires all identifiers to have value (1..1), and at least one of system, type or assigner (ipa-pat-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.active</td>
            <td style="width: 25%;">Element SHOULD be present if Patient.link is present (ipa-pat-4). <i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.name.text</td>
            <td style="width: 25%;">Sub-element SHOULD be present (ipa-pat-3).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.link</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-uk-ps-practitioner.html">UK PS Practitioner</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/StructureDefinition-ipa-practitioner.html">IPA-Practitioner</a></td>
            <td style="width: 25%;">Practitioner.name.text</td>
            <td style="width: 25%;">Sub-element SHOULD be present (ipa-pract-1).</td>
        </tr>
    </tbody>
</table>

##### Missing and Suppressed Data
UK PS compliant resources are compliant with IPA requirements for Missing Data. IPA does not include requirements for Suppressed Data.

### Capability Statement Comparison

No comparison is undertaken. UK PS does not define any FHIR specific interactions - no CapabilityStatement is defined. 

Systems implementing UK Patient Summary **MAY** implement interactions defined in other CapabilityStatements, for example:
- [IPS Server Capability Statement](https://hl7.org/fhir/uv/ips/STU2/CapabilityStatement-ips-server.html)
- [International Patient Access Server CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-server.html)
- [International Patient Access Client CapabilityStatement](https://hl7.org/fhir/uv/ipa/CapabilityStatement-ipa-client.html)
