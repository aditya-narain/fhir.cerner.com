---
title: Immunization | MAY 2015 BALLOT API
---

# Immunization

* TOC
{:toc}

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|----------------------------------------------------------
 `patient` | Y         | [`reference`] | The patient for the vaccination record. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:may2015_immunization_bundle) %>

[`reference`]: http://hl7.org/fhir/2015May/search.html#reference
