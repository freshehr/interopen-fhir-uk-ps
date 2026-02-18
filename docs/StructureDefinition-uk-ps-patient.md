# UK PS Patient - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **UK PS Patient**

## Resource Profile: UK PS Patient 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-patient | *Version*:0.1.0-cibuild | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#maturity-levels): 1 | *Computable Name*:UKPSPatient |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile sets minimum expectations for a Patient resource in the context of a patient summary in a UK context. It is based on the [UKCore Patient](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient) profile, and applies the additional requirements from [Patient (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips). 

**Usages:**

* Use this Profile: [UK PS Bundle](StructureDefinition-uk-ps-bundle.md)
* Refer to this Profile: [UK PS AllergyIntolerance](StructureDefinition-uk-ps-allergyintolerance.md), [UK PS Composition](StructureDefinition-uk-ps-composition.md), [UK PS Condition](StructureDefinition-uk-ps-condition.md), [UK PS Encounter](StructureDefinition-uk-ps-encounter.md)... Show 2 more, [UK PS MedicationRequest](StructureDefinition-uk-ps-medicationrequest.md) and [UK PS MedicationStatement](StructureDefinition-uk-ps-medicationstatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/interopen.uk.ps|current/StructureDefinition/uk-ps-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uk-ps-patient.csv), [Excel](StructureDefinition-uk-ps-patient.xlsx), [Schematron](StructureDefinition-uk-ps-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uk-ps-patient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org.uk/fhir/ps/ImplementationGuide/hl7.fhir.uk.ps"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-patient",
  "version" : "0.1.0-cibuild",
  "name" : "UKPSPatient",
  "title" : "UK PS Patient",
  "status" : "active",
  "date" : "2026-02-18T15:41:40+00:00",
  "publisher" : "HL7 UK / INTEROPen",
  "contact" : [
    {
      "name" : "INTEROPen",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interopen.org",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "This profile sets minimum expectations for a Patient resource in the context of a patient summary in a UK context. It is based on the [UKCore Patient](https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient) profile, and applies the additional requirements from [Patient (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "GB"
        }
      ]
    }
  ],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "short" : "A patient in the context of electronic exchange of health information"
      },
      {
        "id" : "Patient.extension:genderIdentity",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "genderIdentity"
      },
      {
        "id" : "Patient.extension:individualPronouns",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "individualPronouns"
      },
      {
        "id" : "Patient.identifier",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.identifier"
      },
      {
        "id" : "Patient.name",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name",
        "constraint" : [
          {
            "key" : "ips-pat-1",
            "severity" : "error",
            "human" : "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present",
            "expression" : "family.exists() or given.exists() or text.exists()"
          }
        ]
      },
      {
        "id" : "Patient.name.use",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.use"
      },
      {
        "id" : "Patient.name.text",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:able-to-populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.text",
        "comment" : "Can provide both a text representation and parts. Applications updating a name SHALL ensure that when both text and parts are present, no content is included in the text that isn't found in a part.\n\nDue to cultural variance around the world, a consuming system may not know how to present the name correctly; moreover, not all parts of a name go in given or family. Producers are therefore strongly encouraged to populate a presented version of the name using this element."
      },
      {
        "id" : "Patient.name.family",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.family"
      },
      {
        "id" : "Patient.name.given",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.given"
      },
      {
        "id" : "Patient.telecom",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.telecom"
      },
      {
        "id" : "Patient.telecom.system",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.telecom.system"
      },
      {
        "id" : "Patient.telecom.value",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.telecom.value"
      },
      {
        "id" : "Patient.telecom.use",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.telecom.use"
      },
      {
        "id" : "Patient.gender",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.gender"
      },
      {
        "id" : "Patient.birthDate",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.birthDate"
      },
      {
        "id" : "Patient.address",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.address"
      },
      {
        "id" : "Patient.communication",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.communication"
      },
      {
        "id" : "Patient.communication.language",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.communication.language",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Patient.communication.preferred",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.communication.preferred"
      },
      {
        "id" : "Patient.generalPractitioner",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-producer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.uk/fhir/ps/ActorDefinition/uk-ps-actor-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.generalPractitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-organization",
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitioner",
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitionerrole"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
