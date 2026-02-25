{::options toc_levels="1..4"/}

### Approach of this Implementation Guide
uk-ps Patient Summary (uk-ps PS) is provided to support the use of patient summaries in HL7 FHIR in an Australian context. uk-ps PS is based on [IPS](https://hl7.org/fhir/uv/ips/STU2/index.html) and [uk-ps Core](https://build.fhir.org/ig/hl7au/au-fhir-core), setting the minimum conformance expectations for implementing uk-ps PS documents in systems.

uk-ps PS, by design:
* ensures compliance with uk-ps Core and IPS
* includes additional requirements agreed as necessary to support patient summaries in an Australian healthcare context (see [the uk-ps PS](the-ukps.html))
* supports varied stakeholder needs in the use of uk-ps PS artefacts (e.g. policy makers, implementers, tooling developers, testers, IG authors/maintainers etc.)

The approach to describing the 'minimum' in uk-ps PS means modelling in such a way that 'at least' what is to be supported is defined without limiting meaningful options for business rules and different clinical workflows. uk-ps PS artefacts are therefore modelled as open templates allowing for additional content including elements, extensions, resources, search parameters, operations, and terminology whilst ensuring the minimum requirements are met.

Australian realm IGs and implementers are expected to [comply with uk-ps Base and uk-ps Core](variance.html) and to define extensions, search parameters or operations (in order of precedence):
* in the FHIR standard (incl. FHIR Extensions Pack)
* in uk-ps Base
* in a downstream IG (this IG)
* in a local IG only if necessary

#### Scope of uk-ps PS FHIR Artefacts
uk-ps PS profiles:
* [Resources](general-guidance.html#resource-profile-approach) to define minimum support expectations for use in the Australian healthcare context.
* [Actors](general-guidance.html#actor-approach) to define systems that play a role in consuming and producing uk-ps PS documents.

In this release, uk-ps PS does not define new extensions, [terminology](general-guidance.html#terminology-approach), search parameters, operations, or capability statements. Future releases of this IG may include these artefacts.

#### Extension Approach
uk-ps PS does not define new extensions. All extensions included in uk-ps PS are defined in the [FHIR Extensions Pack](https://hl7.org/fhir/extensions/) or [uk-ps Base](http://build.fhir.org/ig/hl7au/au-fhir-base/profiles-and-extensions.html#extensions). A limited set of extensions are indicated as _Must Support_ in uk-ps PS resource profiles; these supported extensions have been inherited from the underlying uk-ps Core profile.

It is anticipated that extension profiles may be included in future releases of this IG.

#### Terminology Approach
uk-ps PS does not define new terminology FHIR artefacts (e.g. value sets or code systems). Terminology supported in uk-ps PS are published in [uk-ps Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), the FHIR standard, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/). 

As part of profiling, uk-ps PS inherits the uk-ps Core localised terminology and indicates support expectations for an uk-ps PS actor using _Must Support_ and obligations. For more information on the terminology modelling inherited from uk-ps Core see the guidance in uk-ps Core [Use of Terminology Bindings](https://build.fhir.org/ig/hl7au/au-fhir-core/general-guidance.html#use-of-terminology-bindings). 

In terms of support in uk-ps PS profiles, a coded element can have support defined for one or more value sets. Coded elements that define support for more than one value set include them in a profile by slicing the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and placing *Must Support* on each value set slice. These value set slices are not intended to prevent systems from supplying only a text value. Most coded *Must Support* elements in uk-ps PS profiles define support for one value set, which is bound to the supported element and no value set slice is present.

For:
* a description of the localisation of terminology in uk-ps PS, refer to [Terminology Localisation](the-aups.html#terminology-localisation)
* a list of the terminologies supported in uk-ps PS, refer to the [Terminology](terminology.html) page
* guidance on selection of terminology in HL7 uk-ps IGs, refer to the uk-ps Base guidance on [Terminology Selection](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#terminology-selection)

#### Resource Profile Approach

##### uk-ps PS Profile Design Principles
 uk-ps PS profiles are designed to ensure compliance with uk-ps Core and IPS. uk-ps PS profile design principles are as follows:
* uk-ps PS profiles **SHALL** ensure resources validate against both IPS and uk-ps Core profiles (where both profiles exist):
   - Cardinality
   - Fixed values and patterns
   - Data type sub-elements and profiles
   - Data type choices and references
   - Invariants
   - *Must Support*
   - Terminology bindings
* uk-ps PS profiles **SHALL** validate reference elements against uk-ps PS profiles (where available), otherwise the uk-ps Core profile where available, otherwise the IPS profile where available, otherwise the uk-ps Base profile where available
* In uk-ps PS profiles, terminology bindings inherited from the underlying uk-ps Core profile are preferenced over terminology bindings in IPS profiles:
   - where an element has a [required](https://hl7.org/fhir/R4/terminologies.html#required) binding, the element **SHALL** apply the intersection of both value sets (uk-ps Core and IPS)
   - where an element has a lesser binding strength ([extensible](https://hl7.org/fhir/R4/terminologies.html#extensible), [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred), [example](https://hl7.org/fhir/R4/terminologies.html#example)), use the uk-ps Core value set and binding strength (where the uk-ps Core binding strength is equal or stronger than the IPS binding strength) or use the IPS value set where the IPS binding strength is stronger than the uk-ps Core binding strength
* An uk-ps PS profile **SHALL** inherit the IPS profile obligations and **MAY** strengthen the IPS profile obligations (using a specialisation of the defined obligation) or add an additional obligation (e.g. SHOULD:persist), as required for the Australian context. A weaker obligation **SHALL NOT** be specified.
* Where one or both uk-ps Core and IPS profiles do not exist, uk-ps PS profiles **SHALL** ensure resources validate against:
   * IPS profile (where only the IPS profile exists)
   * uk-ps Core profile (where only the uk-ps Core profile exists)
   * uk-ps Base profile (where available and neither the IPS or uk-ps Core profile exists)
* Where a profile referenced in [uk-ps PS Bundle](StructureDefinition-au-ps-bundle.html) is not defined in IPS, or has _Must Support_ elements with no obligations in IPS, the uk-ps PS obligations default to: 
  - uk-ps PS Producer: SHALL:populate-if-known
  - uk-ps PS Consumer: SHALL:handle and SHOULD:display 

##### Profiling Approach

uk-ps PS profiles:
* are derived from uk-ps Core, where available, to inherit the nationally agreed localised terminology, identifiers, and extensions.
* are only constrained (e.g. cardinality, references, terminology, extensions) where the constraint is agreed to be a minimum requirement that is nationally relevant and applicable for all uk-ps PS documents to avoid limiting options for downstream use case decisions and business rules. 
* label elements and extensions that form the minimum requirements with _Must Support_. 
* do not further constrain elements or extensions that are not labelled _Must Support_ as they are not part of the minimum requirements.
  * an exception to this rule is inherited from underlying uk-ps Core profiles that include an invariant to enforce that if a coded body site is provided, at least one coding is from SNOMED CT.
* are defined as open, allowing additional elements, extensions, and rules. This results in a more flexible template that can be used across wider contexts, but also means that the resource content is not closed, and applications have to decide how to handle content not described by the profile. See the section [Extensibility – 'Additional' Sections or Elements](general-guidance.html#extensibility--additional-sections-or-elements) for information. 

When modelling uk-ps PS resource profiles, they:
* are derived from uk-ps Core profiles, or where not available, the uk-ps Base profile (where it exists)
* apply additional requirements inherited from IPS (in accordance with the [uk-ps PS Profile Design Principles](general-guidance.html#au-ps-profile-design-principles)) 
* apply additional requirements agreed by the uk-ps PS project (e.g. inclusion of uk-ps PS Encounter profile)
* use [compliesWithProfile](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-structuredefinition-compliesWithProfile.html) to assert compliance with the corresponding IPS profile (where it exists)

<div> 
    <img src="profilingapproach.png" alt="uk-ps PS resource profile modelling" style="width:60%"/>
  </div>
*Figure 1: uk-ps PS resource profile modelling*<a name="profilingapproach">
<br/><br/>

This modelling applies the typical HL7 uk-ps profiling approach that uses derivation to manage compliance across the HL7 uk-ps profile stack and allows for the addition of IPS and uk-ps PS project requirements, see the example in the figure below.

<div> 
    <img src="patient-profilingapproach.png" alt="uk-ps PS Patient current profiling approach" style="width:40%"/>
  </div>
*Figure 2: Profiling approach for uk-ps PS Patient profile*<a name="aupspatientprofilingapproach">
<br/><br/>

Due to this modelling, the "Differential Table" in an uk-ps PS profile shows the patient summary requirements that are additional to uk-ps Core. In some profiles (e.g. [uk-ps PS Organization](StructureDefinition-au-ps-organization.html)), the only additional requirements are the obligations for uk-ps PS actors.

The [uk-ps PS Bundle](StructureDefinition-au-ps-bundle.html) profile is not based on uk-ps Core or uk-ps Base as no Bundle profile exists in either IG. The approach to profiling for uk-ps PS Bundle is to:
* derive from the FHIR Bundle resource
* apply requirements inherited from IPS (in accordance with the [uk-ps PS Profile Design Principles](general-guidance.html#au-ps-profile-design-principles)) 
* apply additional requirements agreed by the uk-ps PS project
* use [compliesWithProfile](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-structuredefinition-compliesWithProfile.html) to assert compliance with IPS

<div> 
    <img src="psbundle-profilingapproach.png" alt="uk-ps PS Bundle current profiling approach" style="width:40%"/>
  </div>
*Figure 3: Profiling approach for uk-ps PS Bundle profile*
<br/><br/>

This approach to [uk-ps PS Bundle](StructureDefinition-au-ps-bundle.html) profiling (deriving from the FHIR Bundle resource and not [Bundle (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/en/StructureDefinition-Bundle-uv-ips.html) profile) has been taken as at the time of publication of this release there is a tooling limitation that prevents meeting both of the below conditions:
* derivation from Bundle (IPS)
* changing reference targets to uk-ps PS profiles (as uk-ps PS profiles derive from uk-ps Core and not IPS they cannot be easily assessed as meeting IPS rules by the tooling)

Additional detail on profiling is:
* described in the guidance section [Localisation of the IPS](the-aups.html#localisation-of-the-ips)
* the modelling inherited from uk-ps Core is described in the uk-ps Core [Resource Profile Approach](https://build.fhir.org/ig/hl7au/au-fhir-core/general-guidance.html#resource-profile-approach)

###### Use of Must Support and Obligations
_[Must Support](general-requirements.html#must-support-and-obligation)_ is used to indicate the elements and extensions that form the minimum requirements of uk-ps PS. Labelling an element _Must Support_ means that systems that produce or consume resources are to provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile needs to make clear exactly what kind of support is required when an element is labelled as _Must Support_.

The set of _Must Support_ elements in uk-ps PS profiles is inherited from uk-ps Core and IPS profiles (i.e. the union of IPS and uk-ps Core elements labelled *Must Support*). In addition, the mandatory elements in uk-ps PS Bundle are labelled with *Must Support* (e.g. `Bundle.type`). This is applied as the convention in this guide is to mark all mandatory elements as *Must Support* unless they are nested under an optional element.

The meaning of _Must Support_ in uk-ps PS is defined in:
* narrative in the IG (e.g. [Missing Data](general-requirements.html#missing-data) requirements)
* the [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on each supported element in a profile, identifying the support expectations for uk-ps PS actors
* narrative qualification of element obligations present in the profile specific implementation guidance

See [Must Support and Obligation](general-requirements.html#must-support-and-obligation) for a detailed description of how this is applied in uk-ps PS. 

###### Potential Profiling Options

When managing [profile complexity and requirements](relationship.html) in the [national and international context for uk-ps PS](the-aups.html#the-au-ps-au-patient-summary), the following mechanisms are available:
1. [Derived from Profiles (derive)](https://build.fhir.org/structuredefinition-definitions.html#StructureDefinition.baseDefinition)
1. Informal alignment (human authoring of rules in a profile)
1. [Complies With Profile (compliesWithProfile)](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-compliesWithProfile.html)
1. [Dependent Profiles (imposeProfile)](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html)

These mechanisms offer differing capabilities and advantages. Typically HL7 uk-ps profiles use derivation to manage compliance within HL7 uk-ps inheritance (e.g. [uk-ps PS Patient Profiling Approach](general-guidance.html#aupspatientprofilingapproach)). However, as uk-ps PS will comply with both HL7 uk-ps (uk-ps Core) and HL7 Universal Realm (IPS), additional mechanism(s) on top of derivation from the underlying HL7 uk-ps profile stack are required. At this time additional requirements are included in uk-ps PS profiles via informal alignment (i.e. human authoring, human checking) and a [compliesWithProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-compliesWithProfile.html) declaration is made.

<div class="stu-note" markdown="1">
For a human, the main differences with use of [imposeProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) are:
- does not rely on humans to maintain compliance rules from the target impose profile
- does not visually show a human reader the rules from the target imposed profile in the source profile, i.e. a human reader must view and understand both profiles to understand the complete set of rules
- where two or more profiles offer optional alternatives (e.g. differing preferred bindings or data type choices), it does not make clear which alternative is preferenced

To support reduction of maintenance efforts in uk-ps PS, it is under consideration that all uk-ps PS profiles derive from uk-ps Core, where available, and use imposeProfile to apply IPS rules. That would mean that either:
* a number of IPS-imposed requirements including cardinality, terminology, and flagging of <i>Must Support</i> would not be directly visible in the formal views within this guide, or
* if the additional IPS constraints were included directly in the uk-ps PS profile + use imposeProfile, those constraints would be duplicated from a validation sense and could be an additional validation burden.

Users of this implementation guide are encouraged to provide their feedback about the potential use of imposeProfile.
</div><!-- stu-note -->

#### Actor Approach
uk-ps PS actors are defined to describe the specific sets of functionality supported by systems that play a role in producing or consuming uk-ps PS documents. Each actor is defined by:
* an actor definition that includes reference to support expectations (narrative conformance requirements)
  * the uk-ps PS actor derives from the corresponding IPS actor
* resource profiles that define support expectations for actors using _Must Support_ and obligations 

<div> 
    <img src="actor-derivationapproach.png" alt="Derivation approach for uk-ps PS Consumer actor" style="width:30%"/>
  </div>
*Figure 4: Derivation approach for uk-ps PS Consumer actor*
<br/><br/>

In this release, uk-ps PS does not include capability statements that describe the requirements for an uk-ps PS actor. It is anticipated that capability statements may be included in future releases of this IG.

##### uk-ps PS Actor Design Principles
 uk-ps PS actors are designed to ensure compliance with IPS and support the [use of patient summaries in Australia](the-aups.html#aupintendedto). uk-ps PS actor design principles are as follows:
* uk-ps PS actors:
  * **SHALL** inherit the narrative conformance requirements from uk-ps Core and IPS including Missing Data, Empty Sections, Known Absence of Data
  * **SHALL** inherit IPS document requirements (see [uk-ps PS Resource Profile Approach](general-guidance.html#resource-profile-approach))
  * **SHALL** inherit uk-ps Core resource profile requirements (see [uk-ps PS Resource Profile Approach](general-guidance.html#resource-profile-approach))
  * **SHALL** inherit _Must Support_ (the union of IPS and uk-ps Core elements labelled *Must Support*) and IPS obligation requirements
  * **MAY** strengthen inherited requirements as required for the Australian context. A weaker requirement **SHALL NOT** be specified.
  * **MAY** apply additional requirements agreed by the uk-ps PS project

### Extensibility – 'Additional' Sections or Elements
As in IPS, a producer can send:
- 'additional' elements beyond those flagged with *Must Support* in a profile
- 'additional' sections (often referred to as 'undefined' sections) beyond those defined in the uk-ps PS Composition

Additional sections or elements are often required by other profiles the system may conform to, allowing local requirements, including technical and workflow context for the resource, to be reflected and extending the health information supported in exchanges. For this reason, extensibility is generally encouraged and expected in uk-ps PS profiles. Only in some exceptionally rare use case profiles are rules tightened to limit the nature of additional information that can be sent. 

Implementers intending to populate the uk-ps PS with an unprofiled resource type, e.g. MedicationAdministration, are recommended to consider the corresponding [uk-ps Base](https://build.fhir.org/ig/hl7au/au-fhir-base/) profile, e.g. [uk-ps Base MedicationAdministration](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicationadministration.html), as guidance for that resource type in an Australian healthcare context.


#### Extensibility – 'Additional' Sections
Implementers need to be aware, the rules of the `Composition.section:All Slices` defined in the uk-ps PS Composition profile apply to all sections, defined or undefined:
- `Composition.section.title` is mandatory and has obligations defined for uk-ps PS Producers and uk-ps PS Consumers
- `Composition.section.code` is mandatory and has obligations defined for uk-ps PS Producers and uk-ps PS Consumers
- `Composition.section.text` is mandatory and has obligations defined for uk-ps PS Producers and uk-ps PS Consumers

It is recommended that where a producing system intends to populate 'additional' sections there is some definition available in a specification describing the intended contents and use of these additional sections. 

#### Extensibility – 'Additional' Elements
Specification authors adopting uk-ps PS are encouraged to enable greater interoperability and software re-use by avoiding reductions in an element's cardinality.

Depending on local requirements, a consumer (i.e. client application) may ignore these 'additional' elements, may treat the data as for rendering only, or be capable of recognising and using the element. 

### Structuring Terminology Choices
The uk-ps PS shares the same structure as IPS and contains sections that can include coded elements in reusable 'minimal' data blocks.

The uk-ps PS identifies a number of [terminologies](terminology.html) as *Must Support* for uk-ps PS consumers and producers. Primary terminologies used in this specification include [SNOMED CT Australian Edition (SNOMED CT-uk-ps)](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#snomed-ct-australian-edition) for clinical concepts (e.g. allergies, problems, procedures, medicines), LOINC for observation codes (e.g. pathology results and vital signs), UCUM for units of measure,  ISO 3166 for countries, PBS Item codes for medicines, Australian Immunisation Register codes for vaccines, and FHIR defined CodeSystems.

Within [the uk-ps PS](the-aups.html) context (i.e. the Australian healthcare context), the Australian localised value sets, developed and published by the [National Clinical Terminology Service](https://www.healthterminologies.gov.au) (NCTS) and the HL7 uk-ps FHIR Working Group are preferred over IPS value sets to support the consumer on their healthcare journey in the uk-ps healthcare context.

In an IPS context, IPS proposes that to support interoperability of IPS content between organisations that use different SNOMED CT value set content, a 'common proximal ancestor' strategy is used. See IPS [Structuring Terminology Choices](https://hl7.org/fhir/uv/ips/STU2/General-Principles.html#structuring-terminology-choices) for more information.
 

### Patient Safety in IPS Context
See the guidance defined in IPS [Patient Safety in IPS Context](https://hl7.org/fhir/uv/ips/STU2/General-Principles.html#patient-safety-in-ips-context).

### Medicinal Product Identification
See the guidance defined in uk-ps Core [Medicine Information](https://build.fhir.org/ig/hl7au/au-fhir-core/medicine-information.html). 

### Representing Body Site, Which May Include Laterality
See the guidance defined in uk-ps Core [Representing Body Site, Which May Include Laterality](https://build.fhir.org/ig/hl7au/au-fhir-core/general-guidance.html#representing-body-site-which-may-include-laterality). 

### Provenance
See the guidance defined in IPS [Provenance](https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#provenance). 
