# UK PS Bundle - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **UK PS Bundle**

## Resource Profile: UK PS Bundle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-bundle | *Version*:0.1.0-cibuild | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#maturity-levels): 1 | *Computable Name*:UKPSBundle |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 UK© 2025+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile sets minimum expectations for a Bundle resource in the context of a patient summary in a UK context. It is based on FHIR [Bundle](http://hl7.org/fhir/StructureDefinition/Bundle), and applies the constraints of [Bundle (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips) and UK Patient Summary (UK PS). UK PS is specified in this guide as a HL7 FHIR document (a Bundle including a Composition), composed by a set of potentially reusable 'minimal' data blocks (the UK PS profiles). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/interopen.uk.ps|current/StructureDefinition/uk-ps-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uk-ps-bundle.csv), [Excel](StructureDefinition-uk-ps-bundle.xlsx), [Schematron](StructureDefinition-uk-ps-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uk-ps-bundle",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
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
  "url" : "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-bundle",
  "version" : "0.1.0-cibuild",
  "name" : "UKPSBundle",
  "title" : "UK PS Bundle",
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
  "description" : "This profile sets minimum expectations for a Bundle resource in the context of a patient summary in a UK context. It is based on FHIR [Bundle](http://hl7.org/fhir/StructureDefinition/Bundle), and applies the constraints of [Bundle (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips) and UK Patient Summary (UK PS).\r\nUK PS is specified in this guide as a HL7 FHIR document (a Bundle including a Composition), composed by a set of potentially reusable 'minimal' data blocks (the UK PS profiles).",
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
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "short" : "UK Patient Summary Bundle",
        "definition" : "UK Patient Summary Bundle. A container for a collection of resources in the patient summary document in a UK healthcare context.",
        "constraint" : [
          {
            "key" : "bdl-ips-1",
            "severity" : "error",
            "human" : "An IPS document must have no additional Composition (including Composition subclass) resources besides the first.",
            "expression" : "entry.tail().where(resource is Composition).empty()"
          }
        ]
      },
      {
        "id" : "Bundle.identifier",
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
        "path" : "Bundle.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.type",
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
        "path" : "Bundle.type",
        "fixedCode" : "document",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.timestamp",
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
        "path" : "Bundle.timestamp",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "short" : "Entry resource in the patient summary bundle",
        "definition" : "An entry resource included in the patient summary document bundle resource.",
        "comment" : "The Composition is the first entry (only a single Composition resource instance can be included) and a Patient resource.  Additional constraints are specified in the AU PS Composition profile.",
        "min" : 2
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:able-to-populate"
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
        "path" : "Bundle.entry.fullUrl",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.search",
        "path" : "Bundle.entry.search",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:composition",
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
        "path" : "Bundle.entry",
        "sliceName" : "composition",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:composition.resource",
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
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-composition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:patient",
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
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:patient.resource",
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
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:allergyintolerance",
        "path" : "Bundle.entry",
        "sliceName" : "allergyintolerance",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:allergyintolerance.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "AllergyIntolerance",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-allergyintolerance"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:condition",
        "path" : "Bundle.entry",
        "sliceName" : "condition",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:condition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-condition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:encounter",
        "path" : "Bundle.entry",
        "sliceName" : "encounter",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:encounter.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-encounter"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:location",
        "path" : "Bundle.entry",
        "sliceName" : "location",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:location.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Location"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:medication",
        "path" : "Bundle.entry",
        "sliceName" : "medication",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medication.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Medication",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medication"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:medicationrequest",
        "path" : "Bundle.entry",
        "sliceName" : "medicationrequest",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medicationrequest.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationRequest",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medicationrequest"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:medicationstatement",
        "path" : "Bundle.entry",
        "sliceName" : "medicationstatement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medicationstatement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationStatement",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-medicationstatement"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:organization",
        "path" : "Bundle.entry",
        "sliceName" : "organization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:organization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitioner",
        "path" : "Bundle.entry",
        "sliceName" : "practitioner",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitioner.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerrole",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerrole",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerrole.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "http://hl7.org.uk/fhir/ps/StructureDefinition/uk-ps-practitionerrole"
            ]
          }
        ]
      }
    ]
  }
}

```
