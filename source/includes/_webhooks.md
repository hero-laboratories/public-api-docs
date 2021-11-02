# Webhooks

Every callback is signed by a secret key provided by Hero Labs. The signature is
in each `HL-Signature` header in the following format:

```
t=1635785969,v1=0ac7a6ca1b05dd340fcbf17144fe00e84d986cade8dbea7a8c4ecca9def9b815
```

Where `t` is callback timestamp and `v1` is signature. Currently, we support
`v1` scheme only.

In order to verify the payload you need to compute HMAC with the sha256 of the
following:

```
<timestamp received in HL-Signature>.<JSON body from the callback>
```

The last step is to compare `v1` signature from the header with your result. Tolerance for delivering a callback is ten minutes.

Our implementation follows [Stripe's specification](https://stripe.com/docs/webhooks/signatures)

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
