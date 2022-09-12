# Webhooks

Every callback is signed by a secret key provided by Hero Labs. The signature is
in each `HL-Signature` where `t` is callback timestamp and `v1` is signature.
Currently, we support `v1` scheme only.

> HL-Signature value

```text
t=1635785969,v1=0ac7a6ca1b05dd340fcbf17144fe00e84d986cade8dbea7a8c4ecca9def9b815
```

In order to verify the payload you need to compute HMAC with the sha256 of the
timestamp and response body.

> Input for HMAC

```text
<timestamp received in HL-Signature>.<response body from the callback>
```

The last step is to compare `v1` signature from the header with your result.
It is advisable to have tolerance for delivering a callback maximum up to ten minutes.

Our implementation follows [Stripe's specification](https://stripe.com/docs/webhooks/signatures)

`dont_disturb_mode` user setting in mobile application has no influence on these events.

## Incident events

Webhook will receive all events related to incidents.

### Parameters

Parameter | Description
--------- | -----------
type | A string describing the incident event type
data | An object containing incident details.

### Incident event types

- incident.created - the event is sent on incident creation
- incident.closed - the event is sent when user dissmissed the incident or it has been resolvead

### Incident data

Parameter | Description
--------- | -----------
incident_id | Incident UUID
incident_type | A string with a type of the incident
details | A string with user-friendly description of the incident
property_id | Property UUID
sonic_id | Sonic UUID

### Incident types

- high_volume_alert
- long_flow_alert
- device_handle_moved
- radio_disconnection
- cloud_disconnection
- pressure_test_failed
- pressure_test_skipped
- health_check_failed
- low_battery_level
- legionella_check_failed

### Example

> Webhook data example

```json
{
  "type": "incident.created",
  "data": {
    "incident_id": "cec50104-cd24-11eb-b8bc-0242ac130003",
    "incident_type": "low_battery_level",
    "details": "User friendly details about the incident.",
    "property_id": "1bcb5548-cd25-11eb-b8bc-0242ac130003",
    "sonic_id": "2518d9d6-cd25-11eb-b8bc-0242ac130003"
  }
}
```
