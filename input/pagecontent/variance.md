This version of the UK Patient Summary (UK PS) complies with [Version 1.0 of the HL7 UK FHIR Work Group UK Variance Requirements](https://hl7.org.au/fhir/HL7%20UK%20Variance%20Requirements%20v1.0.pdf).

HL7 UK published FHIR implementation guides are required to follow specific publishing requirements:
- **SHOULD** use UK Core profiles
- **SHOULD** use UK Base profiles and extensions
- **SHALL** include an UK Variance Statement page


### Variance from UK Base
This implementation guide has no variance (i.e. fully compliant) from UK Base FHIR Implementation Guide version 6.0.0-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-base/)).

Note that while there is no variance, this implementation guide imposes requirements additional to UK Base.

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in UK Base:

- [UK PS Bundle](StructureDefinition-au-ps-bundle.html) profiles FHIR resource [Bundle](http://hl7.org/fhir/R4/bundle.html)


### Variance from UK Core
This implementation guide has no variance (i.e. fully compliant) from UK Core FHIR Implementation Guide version 2.0.0-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-core/)). 

Note that while there is no variance, this implementation guide imposes requirements additional to UK Core.

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in UK Core:

- [UK PS Bundle](StructureDefinition-au-ps-bundle.html) profiles FHIR resource [Bundle](http://hl7.org/fhir/R4/bundle.html)
- [UK PS Composition](StructureDefinition-au-ps-composition.html) profiles FHIR resource [Composition](http://hl7.org/fhir/R4/composition.html)


### Variance from IPS
This implementation guide has no variance (i.e. fully compliant) from IPS Implementation Guide version 2.0.0 ([2.0.0](https://hl7.org/fhir/uv/ips/STU2/)).

Note that while there is no variance, this implementation guide imposes requirements additional to IPS.

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in IPS:

- [UK PS Encounter](StructureDefinition-au-ps-encounter.html) profiles FHIR resource [Encounter](http://hl7.org/fhir/R4/encounter.html)
- [UK PS RelatedPerson](StructureDefinition-au-ps-relatedperson.html) profiles FHIR resource [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)
