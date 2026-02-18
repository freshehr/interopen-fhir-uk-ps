# The UK PS - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* **The UK PS**

## The UK PS

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

The content on this page is intended to address the need for [jurisdictional patient summaries](https://chat.fhir.org/#narrow/channel/207835-IPS/topic/Jurisdictional.20Patient.20Summary.20Specifications) to (a) clarify whether they are based on the IPS and if they are (b) make it clear that their IPS summaries are proper IPS and (c) a reference to a section that describes the functional limitations of receiving an IPS document that does not conform to national expectations e.g. what is intended to happen or a possible problem if you are processing IPS documents that don't conform to the national specification.

### The UK PS (UK Patient Summary)

A patient summary is a standardised collection of patient information. Rather than an entire patient health record, it is the minimum necessary and sufficient data to ensure safe patient care. Patient summaries can enhance patient safety by ensuring critical information is readily accessible when it’s needed most and enables clinicians across different health sectors and health domains to provide more informed, consistent care.

The [HL7 International Patient Summary FHIR Implementation Guide](https://hl7.org/fhir/uv/ips/STU2/) (the [IPS](https://hl7.org/fhir/uv/ips/STU2/)) is an internationally recognised patient summary specification that is an implementation of the ISO 27269:2021 Health informatics — International patient summary standard. In 2021, the G7 nations committed to working towards the adoption of the IPS with several international efforts currently underway to drive adoption, including the European Union, USA, Canada and New Zealand. Multinational vendors with presence in UK are at various stages of implementation of the IPS.

The UK PS will support the consumer on their healthcare journey, providing the consumer and their healthcare providers with timely and current access to relevant health information. It will provide a future pathway for individuals to share their healthcare information when travelling internationally.

A UK PS is intended to:

* be an interoperable set of clinical data - it is an electronic health record extract containing essential healthcare information about a consumer
* support individuals on their healthcare journey including transitions of care
* contain as up to date information as possible based on available sources at a point in time
* be portable and accessible to the individual and their healthcare providers
* be able to be used within an UK state or territory, across state and territory borders, internationally

**Figure 1: Context of UK PS across a Consumer's Healthcare Journey in UK** 

A sample set of [Consumer Journeys](https://sparked.csiro.au/index.php/products-resources/au-ps-consumer-journeys/), developed by the Sparked UK Patient Summary Clinical Focus Group, help illustrate the interactions and use of a patient summary during a consumer’s healthcare journey in the UK healthcare context. These Consumer Journeys have been used to develop [two example use cases](usecase.md) to assist implementers in understanding how UK PS could be implemented.

### Structure of the UK PS

UK PS is specified in this guide as an HL7 FHIR document (a Bundle including a Composition), composed by a set of potentially reusable "minimal" data blocks (the UK PS profiles).

Based on [IPS](https://hl7.org/fhir/uv/ips/STU2/) and [UK Core](https://build.fhir.org/ig/hl7au/au-fhir-core), UK PS defines a patient summary in the context of providing information to downstream providers. While profiled sections can have content that reflect intentions or orders of clinical care, the patient summary is meant as an informative document and is not intended to be directly actionable. For example, a MedicationRequest resource in the Medication Summary section or a CarePlan resource in the Plan of Care section, is not intended to provide authorisation for fulfilment or actioning from the UK PS (or IPS) document.

The UK PS Document shares the same structure as an IPS, shown below.

**Figure 2: The IPS composition (source: [IPS 2.0.0](https://hl7.org/fhir/uv/ips/STU2//Structure-of-the-International-Patient-Summary.html#structure-of-the-international-patient-summary))** 

In the UK PS document:

* Required (Mandatory) sections are Problems, Allergies and Intolerances, and Medication Summary
* Recommended sections are Immunizations, Results (Diagnostics), History of Procedures, and Medical Devices
* Optional sections are Advance Directives, Functional Status, History of Pregnancy, Plan of Care, Alerts, History of Past Problems, Patient Story, Social History, and Vital Signs
* Undefined sections are "additional" sections not defined by the UK PS Composition

See the description of each defined section in IPS [Sections description](https://hl7.org/fhir/uv/ips/STU2//Structure-of-the-International-Patient-Summary.html#sections-description).

### Localisation of the IPS

The UK PS is based on [IPS](https://hl7.org/fhir/uv/ips/STU2//) and [UK Core](https://build.fhir.org/ig/hl7au/au-fhir-core/), allowing for localisations required to meet UK requirements while still ensuring alignment to the IPS specification:

* A valid UK PS document IS a valid IPS document - the document instance validates against both IGs.
* A conformant UK PS actor IS a conformant IPS actor - the conformance expectations for implementation for IPS are satisfied when implementing UK PS actor requirements.
* A conformant UK PS actor IS NOT a conformant UK Core actor - UK Core, like IPA, defines actors for FHIR resource access via a RESTful API. UK PS (and IPS) do not define 'access' they define production and consumption of patient summary documents.

**Figure 3: The UK PS 'Passport'** 

While UK PS has no variance (i.e. fully compliant) from IPS Implementation Guide version 2.0.0-ci-build ([current](https://hl7.org/fhir/uv/ips/STU2/)), UK PS does impose requirements additional to IPS to support requirements in the UK healthcare context (these primarily come from UKCDI and UK Core). These additional requirements are intentionally limited to maximise interoperability with IPS-aware systems. See [Comparison with other national and international IGs](comparison.md) and [Relationship with other IGs](relationship.md) for information on the national and international standards context of UK PS.

Additional requirements for the UK healthcare context include:

* additionally profiled resources
* additional elements and extensions labelled **Must Support**
* strengthened obligations on some **Must Support** elements
* different and sometimes stronger value set bindings
* strengthened cardinality
* additional fixed values
* additional business rules
* clarified expectations for missing data, empty sections, and suppressed data

A summary of these additional requirements is provided in the sections below. While every effort has been made to ensure this page is consistent with the requirements of UK PS this is not a normative part of the specification.

#### Additionally Profiled Resources

UK PS profiles the following resources that are not profiled in IPS:

In addition to the profiles defined in this implementation guide and in IPS, the following profiles defined elsewhere are used by UK PS as the target of a **Must Support** reference element in an UK PS profile:

* [UK Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html)

#### Must Support Extensions

No extensions are labelled as **Must Support** in IPS. In UK PS, the following extensions are labelled as **Must Support**:

#### Terminology Localisation

A full list of terminology differences is not provided, refer to the [UK PS profiles](profiles-and-extensions.md) and the [Terminology](terminology.md) page to understand the terminology supported for use in UK PS. Some differences are mentioned below to highlight their potential relevance to implementers of the UK PS.

UK PS:

* adopts terminology bound in UK Core in preference to IPS where the IPS binding strength is equivalent or weaker.
* localised terminology bindings are present in the additionally profiled resources and **Must Support** extensions.
* defines support for multiple terminologies for medicines and vaccines, see the table in the section [Must Support - Multiple Terminologies](general-requirements.md#must-support---multiple-terminologies).
* applies a stronger binding strength (e.g. preferred -> extensible) for some **Must Support** elements (the binding strength is inherited from UK Core).

In many cases the difference between value sets bound in UK Core and IPS is the IPS use of international SNOMED CT concepts versus the UK Core use of SNOMED CT-UK concepts and international SNOMED CT concepts. Typically these UK value sets are bound as [preferred](https://hl7.org/fhir/R4/terminologies.html#extensible) in UK PS profiles; these are recommendations for use in the UK healthcare context but do not prevent other coding or text only representations.

#### Cardinality Localisation

While UK PS profiles do not apply unique maximum cardinality constraints, UK PS makes a number of elements mandatory (minimum cardinality > 0) that are not mandatory in IPS either directly in the UK PS profile or by reference to an UK Core profile. These constrained cardinalities are typically in:

* additionally profiled resource types that mandate reference to the patient.
* simple observation profiles (e.g. body temperature or smoking status) that require either a value or a data absent reason.
* profiles of individuals and entities (e.g. Location, Patient, RelatedPerson, PractitionerRole, Practitioner) that have additional mandatory administrative elements e.g. Patient.identifier or PractitionerRole.practitioner.

#### Identifiers Localisation

IPS does not provide recommendations on the types of identifiers used in resources, this is expected to be defined as needed in jurisdictional specifications. In UK PS, a number of optional national UK healthcare identifiers are labelled with **Must Support**, see the table in the section [Must Support - Identifiers](general-requirements.md#must-support---identifiers) for the full list.

#### Use of Fixed Values

UK PS includes additional fixed value constraints on some elements either directly in an UK PS profile or via reference to an UK Core profile. These additional fixed values are typically in Observation profiles and add a fixed SNOMED CT concept in `Observation.code` in addition to the fixed LOINC code.

### Considerations When Consuming IPS Documents in UK Healthcare Context

As UK PS incorporates requirements additional to IPS it is important to consider what is intended to happen (or the possible problems) if a system is expecting an UK PS document and receives an IPS document that doesn't conform to the national specification. For example an IPS document may not include UK identifiers, or mandatory UK PS elements, or clinical terminology from a national set (see specific localisations listed above), or may include structured clinical data (e.g. allergies) that does not conform to either the IPS or UK PS profile.

**What are the considerations and limitations when receiving an IPS document?**

Implementers are requested to contribute their thoughts on considerations and limitations when receiving an IPS document that does not conform to UK PS document expectations. Contribute via comment on [FHIR-51547](https://jira.hl7.org/browse/FHIR-51547).

In this context consuming an IPS document that is NOT an UK Patient Summary may be an IPS document produced by a system that specifically supports only IPS, or another jurisdiction’s national patient summary implementation based on the IPS. If a system receives this IPS document somehow (email, upload, QR code, etc.) - what does the system do with it?

* Display the document to a user?
* Display the data in the document to a user?
* Import some data out of it (usually, a subset, human selected)?
* Attempt to process and store?
* Raise an error?

**Is the patient summary an UK PS?**

During the [UK PS workshop 13 November 2025](https://confluence.hl7.org/spaces/HAFWG/pages/358895090/2025-11-13+UK+Core+TDG+Agenda+Minutes) it was agreed there is a need for some way to tell by inspection that a patient summary document is an UK PS document, rather than some other kind of patient summary (including IPS only), without needing to do validation.

Implementers are requested to contribute their preference for a means to reliably identify a document as an UK PS document by inspection. Currently proposed options include:

1. use`meta.profile`in the Composition or`meta.profile`in the Bundle
1. specify an additional coding in`Composition.type`that is equivalent to "UK PS"
1. use the[Application Feature Framework](https://build.fhir.org/ig/HL7/capstmt/)and[Feature Assertion](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-feature-assertion.html)extension

Contribute via comment on [FHIR-55739](https://jira.hl7.org/browse/FHIR-55739).

