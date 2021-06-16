# Sonics

A sonic object is a representation of a Sonic device (sometimes called thing or valve)
that can open or close a valve, measure temperature, water flow etc.

All resources and parameters are defined by OpenAPI specification and
and can be found here: [https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui](https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui)

> To list sonics, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/sonics" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "data": {
    "battery": "external_power_supply",
    "id": "39bdc4af-a1b8-47d4-8342-82d311e5538e",
    "name": "This is my sonic name",
    "radio_connection": "connected",
    "radio_rssi": 166,
    "serial_no": "20fa74b6bffabc12",
    "signal_id": "39bdc4af-a1b8-47d4-8342-82d311e1234e",
    "status": "active",
    "valve_state": "open"
  },
  "page_number": 1,
  "page_size": 10,
  "total_entries": 10,
  "total_pages": 2
}
```
