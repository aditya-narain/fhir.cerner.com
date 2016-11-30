---
title: RelatedPerson | DSTU 2 API
---

# RelatedPerson

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:related_person, :dstu2) %>

## Search

Search for RelatedPersons that meet supplied query parameters:

    GET /RelatedPerson?:parameters

### Parameters

 Name         | Required?                                         | Type          | Description
--------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------
 `_id`        | No, if populated all other parameters are ignored | [`token`]     | The logical resource id associated with the resource.
 `identifier` | Yes, if neither `_id` nor `patient` are set       | [`token`]     | A RelatedPerson identifier.
 `patient`    | Yes, if neither `_id` nor `identifier` are set    | [`reference`] | A reference to a patient related which the RelatedPerson is associated. Example: `14067892`

Notes:

- `identifier` value must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:...:PI98N2FK5TN`

### Response

<%= headers 200, GET: '[...]/RelatedPerson/7470218' %>
<%= json(:dstu2_relatedperson_entry) %>

## Retrieve by id

List an individual RelatedPerson by its id:

    GET /RelatedPerson/:id

### Response

<%= headers 200, GET: '[...]/RelatedPerson?identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:EC4AX54P8GI' %>
<%= json(:dstu2_relatedperson_bundle) %>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
