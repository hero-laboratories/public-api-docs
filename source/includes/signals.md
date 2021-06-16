# Signals

A signal object is a representation of a Signal device (sometimes called hub) that
communicates with WiFi and Sonic (a valve installed on a pipe).

All resources and parameters are defined by OpenAPI specification and
and can be found here: [https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui](https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui)

> To list signals, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/signals" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "data": {
    "boot_time": 1622972033,
    "cloud_connection": "connected",
    "id": "7bcb5fe0-a28a-25e7-93c5-6e6a71c123d2",
    "modem_boot_time": 1623526880,
    "modem_version": "1.2.535-84ea330",
    "name": "This is my signal name",
    "serial_no": "fd3c164c13b2d20e",
    "version": "1.2.547-c8efc17",
    "wifi_rssi": -69
  },
  "page_number": 1,
  "page_size": 10,
  "total_entries": 10,
  "total_pages": 2
}
```
