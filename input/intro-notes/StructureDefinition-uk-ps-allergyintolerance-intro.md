{% include comparison-note-boilerplate.md %}

### Profile Specific Implementation Guidance

## Allergies and Intolerances
*(this section is agreed)*

  Items recorded as Allergies or Intolerances in local clinical systems.

* Filters/Constraints
    * Include ALL where clincalStatus="active"
    * Where known, include allergies and intolerances that have been resolved, or become inactive (AllergyIntolerance.clinicalStatus=inactive|resolved). These MUST have a date when the allergy or intolerance was recorded as inactive or resolved (AllergyIntolerance.recordedDate) and should have the last know recorded occurrence (AllergyIntolerance.lastOccurrence)
    * Items in the narrative should be sorted newest to oldest based on recorded date
  
* FHIR Resource Profiles to conform to:
    * [UKCore-AllergyIntolerance](https://simplifier.net/guide/uk-core-implementation-guide-stu2/Home/ProfilesandExtensions/Profile-UKCore-AllergyIntolerance?version=2.0.1)
    * [AllergyIntolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips)

**Relevant items from NHSE Urgent Care Dataset**:

* Data Item: Allergies
    * PRSB: CIS Allergies
    * Must have data items:
        * Causative agent  - coded value
        * Causative agent - free text
        * Type of reaction
        * Description of reaction - coded value
        * Description of reaction - free text

**Example:**

* [Example FHIR AllergyIntolerance](Examples/uk-ps-AllergyIntolerance.json)
* [Example HTML Narrative](https://html-preview.github.io/?url=https://github.com/ahatherly-gn/NHS-SCR-IPS/blob/main/Examples/Narrative-Allergies.html)



<div class="stu-note" markdown="1">

The additional obligation on `AllergyIntolerance.onsetDateTime` for [UK PS Producer](ActorDefinition-uk-ps-actor-producer.html) is [SHOULD:able-to-populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58able-to-populate). This obligation is in addition to the obligation of [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate-if-known). There is no additional obligation for [UK PS Consumer](ActorDefinition-uk-ps-actor-consumer.html), the obligations of [SHALL:handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58handle) and [SHOULD:display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58display) apply.

This additional obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the Formal Views of Profile Content. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/Obligation.20Extension.20on.20ElementDefinition.2Etype.20not.20rendering) for more information.

</div><!-- stu-note -->


