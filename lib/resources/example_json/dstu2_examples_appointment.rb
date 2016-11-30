module Cerner
  module Resources

    DSTU2_APPOINTMENT_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "67284a19-6a27-4638-9f04-9bff71324a58",
        "type": "searchset",
        "total": 1,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=2007&practitioner=709932&_count=50"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/759729",
            "resource": {
              "resourceType": "Appointment",
              "id": "759729",
              "meta": {
                "versionId": "2",
                "lastUpdated": "2007-02-28T20:04:18.000-06:00"
              },
              "text": {
                "status": "generated",
                "div": "<div><p><b>Appointment</b></p><p><b>Description</b>: CV Echo</p><p><b>Type</b>: CV Echo</p><p><b>Start</b>: 2007-02-28T08:00:00.000-06:00</p><p><b>End</b>: 2007-02-28T08:15:00.000-06:00</p><p><b>Minutes Duration</b>: 15</p><p><b>Reason</b>: Chest Pain</p><p><b>Location</b>: BE Cardiology</p><p></p><p><b>Patient</b>: Paddack, Dustin Lee</p><p></p><p><b>Practitioner</b>: Harris, Sarah</p><p><b>Primary</b>: true</p></div>"
              },
              "type": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394579002",
                    "display": "Cardiology",
                    "userSelected": false
                  }
                ],
                "text": "CV Echo"
              },
              "reason": {
                "text": "Chest Pain"
              },
              "description": "CV Echo",
              "start": "2007-02-28T08:00:00.000-06:00",
              "end": "2007-02-28T08:15:00.000-06:00",
              "minutesDuration": 15,
              "participant": [
                {
                  "type": [
                    {
                      "text": "Resource"
                    },
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "PPRF",
                          "display": "primary performer",
                          "userSelected": false
                        }
                      ]
                    }
                  ],
                  "actor": {
                    "reference": "Practitioner/709932",
                    "display": "Harris, Sarah"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Patient"
                    }
                  ],
                  "actor": {
                    "reference": "Patient/861933",
                    "display": "Paddack, Dustin Lee"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "actor": {
                    "reference": "Location/4048278",
                    "display": "BE Cardiology"
                  },
                  "required": "required",
                  "status": "accepted"
                }
              ]
            }
          }
        ]
      }

    DSTU2_APPOINTMENT_READ ||= {
        "resourceType": "Appointment",
        "id": "647723",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2006-09-29T14:29:22.000-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div><p><b>Appointment</b></p><p><b>Description</b>: Echo</p><p><b>Type</b>: Echo</p><p><b>Start</b>: 2006-09-29T15:00:00.000-05:00</p><p><b>End</b>: 2006-09-29T15:15:00.000-05:00</p><p><b>Minutes Duration</b>: 15</p><p><b>Reason</b>: test</p><p><b>Location</b>: BE Cardiology</p><p></p><p><b>Patient</b>: PETERSON, FAITH</p><p></p><p><b>Practitioner</b>: Harris, Sarah</p><p><b>Primary</b>: true</p></div>"
        },
        "type": {
          "text": "Echo"
        },
        "reason": {
          "text": "test"
        },
        "description": "Echo",
        "start": "2006-09-29T15:00:00.000-05:00",
        "end": "2006-09-29T15:15:00.000-05:00",
        "minutesDuration": 15,
        "participant": [
          {
            "type": [
              {
                "text": "Resource"
              },
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v3/ParticipationType",
                    "code": "PPRF",
                    "display": "primary performer",
                    "userSelected": false
                  }
                ]
              }
            ],
            "actor": {
              "reference": "Practitioner/709932",
              "display": "Harris, Sarah"
            },
            "required": "required",
            "status": "accepted"
          },
          {
            "type": [
              {
                "text": "Patient"
              }
            ],
            "actor": {
              "reference": "Patient/725945",
              "display": "PETERSON, FAITH"
            },
            "required": "required",
            "status": "accepted"
          },
          {
            "actor": {
              "reference": "Location/4048278",
              "display": "BE Cardiology"
            },
            "required": "required",
            "status": "accepted"
          }
        ]
      }

  end
end
