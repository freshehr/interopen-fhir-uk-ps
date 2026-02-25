{% include comparison-note-boilerplate.md %}

### Profile specific implementation guidance
- See the [guidance on implementing the Condition resource](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html#profile-specific-implementation-guidance) in AU Core.

<div class="stu-note" markdown="1">

The additional obligation on `Condition.onsetDateTime` for [UK PS Producer](ActorDefinition-uk-ps-actor-producer.html) is [SHOULD:able-to-populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58able-to-populate). This obligation is in addition to the obligation of [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate-if-known). There is no additional obligation for [UK PS Consumer](ActorDefinition-uk-ps-actor-consumer.html), the obligations of [SHALL:handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58handle) and [SHOULD:display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58display) apply.

This additional obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the Formal Views of Profile Content. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/Obligation.20Extension.20on.20ElementDefinition.2Etype.20not.20rendering) for more information.

</div><!-- stu-note -->
*(this section is agreed)*

Items recorded as "problems" in local clinical systems (e.g. items on the problems list in primary care). In addition, where possible, any other coded items from the record that have codes that indicate that they are conditions or disorders.

* Filters/Constraints
    * Where there is a status, include only those that are "active"
    * Items in the narrative should be sorted newest to oldest based on recorded date
* FHIR Resource Profiles to conform to:
    * [UKCore-Condition](https://simplifier.net/guide/uk-core-implementation-guide-stu2/Home/ProfilesandExtensions/Profile-UKCore-Condition?version=2.0.1)
    * [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips)

**Relevant items from NHSE Urgent Care Dataset**:

* Data Item: Conditions (Current active and significant past)
    * PRSB: CIS Problem List
    * Must have data items:
        * Problem - code
        * Problem - free text
        * Problem onset date
        * Problem end date

**Example:**

* [Example FHIR Condition](Examples/uk-ps-Condition.json)
* [Example HTML Narrative](https://html-preview.github.io/?url=https://github.com/ahatherly-gn/NHS-SCR-IPS/blob/main/Examples/Narrative-Problems.html)
