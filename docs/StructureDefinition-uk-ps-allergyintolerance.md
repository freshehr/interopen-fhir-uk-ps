# UK PS AllergyIntolerance - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **UK PS AllergyIntolerance**

## Resource Profile: UK PS AllergyIntolerance 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-allergyintolerance | *Version*:0.1.0-cibuild | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#maturity-levels): 1 | *Computable Name*:UKPSAllergyIntolerance |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile sets minimum expectations for an AllergyIntolerance resource in the context of a patient summary in a UK context. It is based on the [UKCore AllergyIntolerance](https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance) profile, and applies the additional requirements from [AllergyIntolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips). 

See [Comparison With Other National and International IGs](comparison.md) for a comparison between UK Patient Summary (UK PS) profiles and profiles in other implementation guides.

### Profile Specific Implementation Guidance

* See the [guidance on implementing the AllergyIntolerance resource](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html#profile-specific-implementation-guidance) in AU Core.

The additional obligation on `AllergyIntolerance.onsetDateTime` for [AU PS Producer](ActorDefinition-au-ps-actor-producer.md) is [SHOULD:able-to-populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58able-to-populate). This obligation is in addition to the obligation of [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate-if-known). There is no additional obligation for [AU PS Consumer](ActorDefinition-au-ps-actor-consumer.md), the obligations of [SHALL:handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58handle) and [SHOULD:display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58display) apply.

This additional obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the Formal Views of Profile Content. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/Obligation.20Extension.20on.20ElementDefinition.2Etype.20not.20rendering) for more information.

**Examples for this Profile**: [Bundle/aups-basicsummary](Bundle-aups-basicsummary.md), [Bundle/aups-gpvisit-retrieval](Bundle-aups-gpvisit-retrieval.md), [Bundle/aups-noknownx](Bundle-aups-noknownx.md), [Bundle/aups-referral-endoconsult-autogen](Bundle-aups-referral-endoconsult-autogen.md) and [Bundle/aups-referral-endoconsult-curated](Bundle-aups-referral-endoconsult-curated.md)

**Usages:**

* Use this Profile: [UK PS Bundle](StructureDefinition-uk-ps-bundle.md)
* Refer to this Profile: [UK PS Composition](StructureDefinition-uk-ps-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/interopen.uk.ps|current/StructureDefinition/uk-ps-allergyintolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uk-ps-allergyintolerance.csv), [Excel](StructureDefinition-uk-ps-allergyintolerance.xlsx), [Schematron](StructureDefinition-uk-ps-allergyintolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uk-ps-allergyintolerance",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
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
  "url" : "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-allergyintolerance",
  "version" : "0.1.0-cibuild",
  "name" : "UKPSAllergyIntolerance",
  "title" : "UK PS AllergyIntolerance",
  "status" : "draft",
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
  "description" : "This profile sets minimum expectations for an AllergyIntolerance resource in the context of a patient summary in a UK context. It is based on the [UKCore AllergyIntolerance](https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance) profile, and applies the additional requirements from [AllergyIntolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips).",
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AllergyIntolerance",
        "path" : "AllergyIntolerance"
      },
      {
        "id" : "AllergyIntolerance.clinicalStatus",
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
        "path" : "AllergyIntolerance.clinicalStatus",
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
        "id" : "AllergyIntolerance.verificationStatus",
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
        "path" : "AllergyIntolerance.verificationStatus",
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
        "id" : "AllergyIntolerance.type",
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
        "path" : "AllergyIntolerance.type",
        "mustSupport" : true
      },
      {
        "id" : "AllergyIntolerance.code",
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
        "path" : "AllergyIntolerance.code",
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
        "id" : "AllergyIntolerance.patient",
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
        "path" : "AllergyIntolerance.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-patient"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.patient.reference",
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
          }
        ],
        "path" : "AllergyIntolerance.patient.reference",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "AllergyIntolerance.onset[x]",
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
        "path" : "AllergyIntolerance.onset[x]",
        "type" : [
          {
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
            "code" : "dateTime"
          },
          {
            "code" : "Age"
          },
          {
            "code" : "Period"
          },
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.note",
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
        "path" : "AllergyIntolerance.note"
      },
      {
        "id" : "AllergyIntolerance.reaction",
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
        "path" : "AllergyIntolerance.reaction"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation",
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
        "path" : "AllergyIntolerance.reaction.manifestation",
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
        "id" : "AllergyIntolerance.reaction.severity",
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
        "path" : "AllergyIntolerance.reaction.severity"
      }
    ]
  }
}

```
