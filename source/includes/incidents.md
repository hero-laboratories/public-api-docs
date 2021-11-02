# Incidents

An incident is created whenever our platform detects leakage, disconnection,
low battery etc.

All resources and parameters are defined by OpenAPI specification and
and can be found here: [https://iot-core.hero-labs.com/ape/v1/swaggerui](https://iot-core.hero-labs.com/ape/v1/swaggerui)

> To list incidents, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/incidents" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "data": [
    {
      "detected_at": "string",
      "id": "string",
      "possible_actions": [
        "string"
      ],
      "severity": "low",
      "state": "initialising",
      "status": "active",
      "type": "high_volume_alert"
    }
  ],
  "page_number": 0,
  "page_size": 0,
  "total_entries": 0,
  "total_pages": 0
}
```
