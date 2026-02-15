### Introduction
UK Patient Summary (UK PS) is provided to support the use of patient summaries in HL7® FHIR®© in an UK context. UK PS is based on [IPS](https://hl7.org/fhir/uv/ips/STU2/index.html) and [UK Core STU2](https://simplifier.net/guide/uk-core-implementation-guide-stu2?version=2.0.1), setting the minimum conformance expectations for implementing support for UK PS documents in systems.

UK PS is compliant with the requirements of IPS, e.g. UK PS data is conformant to IPS and systems that generate and consume UK PS documents are conformant to the requirements in IPS:
* A valid UK PS document IS a valid IPS document - the document instance validates against both IGs. 
* A conformant UK PS actor IS a conformant IPS actor - the conformance expectations for implementation for IPS are satisfied when implementing UK PS actor requirements.

For a detailed description of the requirements for implementing UK PS, see the [General Requirements](general-requirements.html#general-requirements) page.

A Patient Summary is:
* a health record extract comprising a core set of digital health and administrative data elements that provide a snapshot in time of a subject of care’s health information and healthcare.
* designed for supporting use case scenarios including planned and unplanned care, continuity of care and transition of care.

See [The UK PS](the-ukps.html) for more information on the purpose, scope, context, and use of UK PS.


### Dependencies
{% include dependency-table.xhtml %}
{% include expansion-params.xhtml %}

### How to Read This Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): These pages describe the set of rules to claim conformance to this guide including the expectations for *Must Support*  elements in UK PS profiles.
  - [General Requirements](general-requirements.html): This page defines requirements common to profiles used in this guide including the expectations for mandatory and *Must Support*  elements in UK PS profiles.
  - [Declaring Conformance](declaring-conformance.html): This page describes how to declare conformance to UK PS.
- [The UK PS](the-ukps.html): This page describes the UK PS including structure, context of use, and localisation of the IPS.
- [Guidance](guidance.html): These pages list the guidance for this guide.
  - [General Guidance](general-guidance.html): This page provides guidance on using the profiles defined in this guide. 
  - [Generation and Access](generation-and-access.html): This page describes some options for generation and access of patient summary documents. 
  - [UK Variance Statement](variance.html): This page documents the variance from UK Base and UK Core.
  - [Comparison With Other National and International IGs](comparison.html): This page provides comparison between UK PS profiles and other national and international implementation guides.
- [Use Cases](usecase.html): These pages document a set of example use cases that assist in understanding how to implement UK PS.
   - [Cross-regional Unscheduled care](uc-interstate.html): This page documents use of the Patient Summary when a patient is not in their home locality.
   - [Cross-national Unscheduled care](uc-interstate.html): This page documents use of the Patient Summary when a patient is not in their home country.
   - [Cross-regional Scheduled care](uc-interstate.html): This page documents use of the Patient Summary when a patient is receiving scheduled care but not in their in their home locality.


- [Security and Privacy](security.html): This page documents the UK PS general security and privacy requirements and recommendations.
- [FHIR Artefacts](artefacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Artefacts Summary](artifacts.html): This page lists the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page describes the profiles and extensions that are defined in this guide to exchange data. Each profile page includes a narrative description and guidance, and formal definition. Guidance typically focuses on the profiled elements but can include guidance on un-profiled elements to aid with implementation.
  - [Terminology](terminology.html): This page lists the value sets and code systems supported in this guide.
  - [Actor Definitions](actors.html): This page defines the UK PS actors, UK PS Consumer and UK PS Producer.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Support](downloads.html): These pages provide supporting material for implementation of UK PS.
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.
  - [License and Legal](license.html): This page outlines the license and legal requirements for material in UK PS.
- [Change Log](changes.html): This page documents the changes across versions of this guide.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:
Primary Editors: {{TBD}}.
