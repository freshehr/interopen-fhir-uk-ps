# Actor Definitions - UK Patient Summary Implementation Guide v0.1.0-cibuild

* [**Table of Contents**](toc.md)
* [**FHIR artefacts**](artefacts.md)
* **Actor Definitions**

## Actor Definitions

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

The following actor definitions define th Actor roles that a system can implement for a UK Patient Summary.

* [UK PS Consumer actor](ActorDefinition-uk-ps-actor-consumer.md)

An UK PS Consumer is a system that receives an UK PS Bundle and uses it to display or process patient summary content. This actor is based on the [Consumer (IPS)](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Consumer.html) actor, and describes the additional requirements and documentation applied for the Australian context.

* [UK PS Producer actor](ActorDefinition-uk-ps-actor-producer.md)

An UK PS Producer is a system that creates or assembles an UK PS Bundle through automated generation or human curation of the patient summary content. This actor is based on the [Creator (IPS)](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Creator.html) actor, and describes the additional requirements and documentation applied for the Australian context.

