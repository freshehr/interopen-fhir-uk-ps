# Examples - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

The following examples are published with this guide and all are available as a downloadable as zip file [here](downloads.md#examples).

These example instances show what data produced and consumed by systems conforming with this implementation guide might look like. Every effort has been made to ensure that the examples are correct and useful, but they are not a normative part of the specification nor are they fully representative of real world examples.

In addition to the examples defined in this implementation, synthetic (realistic but not real) test data for developers and testers that conforms to HL7 Australia FHIR implementation guides is maintained in the [HL7 AU FHIR Test Data](https://github.com/hl7au/au-fhir-test-data) repository.

The examples [Bundle - Basic summary](Bundle-aups-basicsummary.md), [Bundle - Section empty reason](Bundle-aups-section-emptyreason.md) and [Bundle - No Known X](Bundle-aups-noknownx.md) are provided to demonstrate some parts of AU PS profiles but are not intended to demonstrate clinical workflow or use case. They include demonstration of:

* Composition.section.emptyReason
* No Known X
* Data Absent Reason extension

The following examples demonstrate technical and clinical use case aspects, conforming to the AU PS requirements. Data within these examples, e.g. medications, is provided by the [Sparked Patient Summary Clinical Focus Group](https://sparked.csiro.au/index.php/design-groups/).

* [Jeramy's Patient Summary as of 27 May 2025 (Bundle)](Bundle-aups-gpvisit-retrieval.md)
* [Patient Summary for Joyce Johnson as of 28 OCT 2024 (Bundle with electronic signature)](Bundle-aups-referral-endoconsult-curated.md)
* [Patient Summary for Joyce Johnson as of 07 NOV 2024 (Bundle with digital signature)](Bundle-aups-referral-endoconsult-autogen.md)

### Missing Data

* [Bundle - Jeramy’s Patient Summary as of 27 May 2025 (missing data for Immunization.occurrenceDateTime, Observation.performer and MedicationRequest.authoredOn)](Bundle-aups-gpvisit-retrieval.xml.md)
* [Bundle - Patient Summary for Joyce Johnson as of 07 NOV 2024 (with digital signature) (missing data for Observation.performer)](Bundle-aups-referral-endoconsult-autogen.xml.md)
* [Bundle - Section empty reason (missing data for Patient.birthDate; suppressed data for Patient.gender and Patient.identifier)](Bundle-aups-section-emptyreason.md)

### Suppressed Data

* [Bundle - Section empty reason (missing data for Patient.birthDate; suppressed data for Patient.gender and Patient.identifier)](Bundle-aups-section-emptyreason.md)

