# UK PS MedicationRequest - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **UK PS MedicationRequest**

## Resource Profile: UK PS MedicationRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medicationrequest | *Version*:0.1.0-cibuild | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#maturity-levels): 1 | *Computable Name*:UKPSMedicationRequest |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile sets minimum expectations for a MedicationRequest resource in the context of a patient summary in a UK context. It is based on the [UKCore MedicationRequest](https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest), and applies the additional requirements from [MedicationRequest (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips). 

**Usages:**

* Use this Profile: [UK PS Bundle](StructureDefinition-uk-ps-bundle.md)
* Refer to this Profile: [UK PS Composition](StructureDefinition-uk-ps-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/interopen.uk.ps|current/StructureDefinition/uk-ps-medicationrequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uk-ps-medicationrequest.csv), [Excel](StructureDefinition-uk-ps-medicationrequest.xlsx), [Schematron](StructureDefinition-uk-ps-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uk-ps-medicationrequest",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
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
  "url" : "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medicationrequest",
  "version" : "0.1.0-cibuild",
  "name" : "UKPSMedicationRequest",
  "title" : "UK PS MedicationRequest",
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
  "description" : "This profile sets minimum expectations for a MedicationRequest resource in the context of a patient summary in a UK context. It is based on the [UKCore MedicationRequest](https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest), and applies the additional requirements from [MedicationRequest (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips).",
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
  "type" : "MedicationRequest",
  "baseDefinition" : "https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.status",
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
        "path" : "MedicationRequest.status"
      },
      {
        "id" : "MedicationRequest.intent",
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
        "path" : "MedicationRequest.intent"
      },
      {
        "id" : "MedicationRequest.doNotPerform",
        "path" : "MedicationRequest.doNotPerform",
        "patternBoolean" : false
      },
      {
        "id" : "MedicationRequest.medication[x]",
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
        "path" : "MedicationRequest.medication[x]",
        "comment" : "If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended. For example, if you require form or lot number, then you must reference the Medication resource.\r\n\r\nTo improve global interoperability, IPS strongly encourages the use of a reference to a Medication resource, and medicationCodeableConcept is only recommended for cases where no other information than a simple code is available.\r\n\r\nUK PS does not adopt the IPS guidance that systems should only populate a Medication reference when more information than a simple code is available; either medicationReference or medicationCodeableConcept can be used. Future releases of UK PS, based on implementation experience in the UK may adopt that IPS guidance."
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
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
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationCodeableConcept",
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
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding",
        "path" : "MedicationRequest.medication[x].coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:snomedCT",
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
        "path" : "MedicationRequest.medication[x].coding",
        "sliceName" : "snomedCT",
        "short" : "dm+d code from SNOMED CT UK Drug Extension",
        "definition" : "A code from the SNOMED Clinical Terms UK Drug Extension (dm+d) for medication identification"
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationReference",
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
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.subject",
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
        "path" : "MedicationRequest.subject",
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
        "id" : "MedicationRequest.subject.reference",
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
        "path" : "MedicationRequest.subject.reference",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.encounter",
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
        "path" : "MedicationRequest.encounter",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "MedicationRequest.authoredOn",
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
        "path" : "MedicationRequest.authoredOn"
      },
      {
        "id" : "MedicationRequest.requester",
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
        "path" : "MedicationRequest.requester",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitioner",
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitionerrole",
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-organization",
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.reasonCode",
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
        "path" : "MedicationRequest.reasonCode",
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
        "id" : "MedicationRequest.reasonReference",
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
        "path" : "MedicationRequest.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-condition",
              "http://hl7.org/fhir/StructureDefinition/Observation"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
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
        "path" : "MedicationRequest.dosageInstruction"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.text",
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
        "path" : "MedicationRequest.dosageInstruction.text"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing",
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
        "path" : "MedicationRequest.dosageInstruction.timing",
        "mustSupport" : true
      }
    ]
  }
}

```
