# Telemetry details

A telemetry object contains the latest telemetry details from a Sonic such as
pressure, temperature etc.

All resources and parameters are defined by OpenAPI specification and
and can be found here: [https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui](https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui)

> To list telemetry details, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/sonics/{sonic_id}/telemetry" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "pressure": 3252,
  "probed_at": 1623414482,
  "water_flow": 0,
  "water_temp": 17.1
}
```
