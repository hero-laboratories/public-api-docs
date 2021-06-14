# Properties

Property is the main object and it may represent a single flat, house, apartment etc.

It has an owner and all other objects like a sonic, signal, incidents and others are
either directly or indirectly linked to a property.

All resources and parameters are defined by OpenAPI specification and
and can be found here: [https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui](https://al-iot-core-staging.herokuapp.com/ape/v1/swaggerui)

> To list properties, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/properties" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "data": {
    "active": true,
    "address": "Kensington Gardens",
    "city": "London",
    "country": "United Kingdom",
    "id": "7bcb5fe0-abcd-25e7-93c5-6e6a71c123d2",
    "lat": 51.5158392,
    "lng": -0.1114453,
    "name": "Kensington Gardens",
    "postcode": "W8 4PX",
    "uprn": ""
  },
  "page_number": 1,
  "page_size": 10,
  "total_entries": 10,
  "total_pages": 2
}
```

## Notifications
> To fetch details, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/properties/{property_id}/notifications" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "cloud_disconnection": true,
  "device_handle_moved": true,
  "health_check_failed": true,
  "high_volume_threshold_litres": 300,
  "long_flow_notification_delay_mins": 60,
  "low_battery_level": true,
  "pressure_test_failed": true,
  "pressure_test_skipped": true,
  "radio_disconnection": true
}
```

Part of the property object is notification settings where a user can configure
what notifications he would like to receive.

## Settings
> To fetch details, use this code:

```shell
curl -X GET "[backend_url]/ape/v1/properties/{property_id}/settings" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "auto_shut_off": true,
  "pressure_tests_enabled": true,
  "pressure_tests_schedule": "03:00:00",
  "timezone": "Europe/London",
  "webhook_enabled": true,
  "webhook_url": "https://api.acme.com/webhooks"
}
```

Part of the property object is settings where a user can configure timezone,
webhook etc.
