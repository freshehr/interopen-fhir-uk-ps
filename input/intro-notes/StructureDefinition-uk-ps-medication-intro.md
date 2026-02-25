{% include comparison-note-boilerplate.md %}


### Profile Specific Implementation Guidance
- See the [guidance on implementing the Medication resource](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-medication.html#profile-specific-implementation-guidance) in AU Core.
- When populating `Medication.code` producers **SHALL** correctly populate `Medication.code.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known and **MAY** populate with a code from another code system.
  - Producers **MAY** populate with only text if no coded value is known.
- The Medication resource **SHALL NOT** be used to represent that a patient is not currently taking any medications; systems **SHOULD** use the MedicationStatement resource following the [profile specific implementation guidance](StructureDefinition-uk-ps-medicationstatement.html#profile-specific-implementation-guidance) in [UK PS MedicationStatement](StructureDefinition-uk-ps-medicationstatement.html).
## Medication Summary
*(this section is agreed)*

Current medications being taken. This includes active prescribed medications, including repeat, one-off and acute meds and any meds recorded in other care settings if available.

* Filters/Constraints
  * Current repeat medications
  * Where possible:
    * Discontinued repeat medications from the last 6 months
    * Acute Medications taken in the last year
  * Items in the narrative should be sorted newest to oldest based on recorded date
* FHIR Resource Profiles to conform to:
  * [UKCore-MedicationStatement](https://simplifier.net/guide/uk-core-implementation-guide-stu2/Home/ProfilesandExtensions/Profile-UKCore-MedicationStatement?version=2.0.1)
  * [MedicationStatement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips)

The details of the actual Medication will be in a FHIR Medication resource. This can either be contained within the MedicationStatement, or included separately in the bundle and referenced from the MedicationStatement.

* FHIR Resource Profiles to conform to:
  * [UKCore-Medication](https://simplifier.net/guide/uk-core-implementation-guide-stu2/Home/ProfilesandExtensions/Profile-UKCore-Medication?version=2.0.1)
  * [Medication (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips)

NOTE: The UK Core profile specifies that the "derivedFrom" should be provided, which links the MedicationStatement to the MedicationRequest. For the purposes of a patient summary this is not required, so this relationship can be omitted.

**Relevant items from NHSE Urgent Care Dataset**:

* Data Item: Medication (Current GP Meds and Discharge Meds)
  * PRSB: CIS Medications
  * Must have data items:
    * Medication name - coded value
    * Medication name - free text

**Example:**

* [Example FHIR MedicationStatement](Examples/MedicationStatement.json)
* [Example HTML Narrative](https://html-preview.github.io/?url=https://github.com/ahatherly-gn/NHS-SCR-IPS/blob/main/Examples/Narrative-Medications.html)
