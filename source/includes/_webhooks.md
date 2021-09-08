# Webhooks

## Incidents

This is a definition of an incident payload sent via webhook.

### parameters

Parameter | Description
--------- | -----------
type | Type of the webhook's data. It will be `incident`.
data | An object containing incident details.
incident_id | Incident UUID
incident_type | Type od the incident
details | Incident details
property_id | Property UUID
sonic_id | Sonic UUID

### Example

> Webhook data example

```json
{
  "type": "incident",
  "data": {
    "incident_id": "cec50104-cd24-11eb-b8bc-0242ac130003",
    "incident_type": "low_battery_level",
    "details": "User friendly details about the incident.",
    "property_id": "1bcb5548-cd25-11eb-b8bc-0242ac130003",
    "sonic_id": "2518d9d6-cd25-11eb-b8bc-0242ac130003"
  }
}
```
