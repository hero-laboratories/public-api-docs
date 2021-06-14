# Properties

Property is the richest data model in our system.

## Get properties
> To list properties, use this code:

```shell
curl -X GET "[backend_url][iot_core]/properties" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "properties": [
    {
      "uprn": null,
      "spaces": [],
      "postcode": "CF5 1FJ",
      "name": "Test",
      "lng": null,
      "lat": null,
      "id": "85bc39ca-25c6-49ff-a9bb-014da2e3de91",
      "created_at": "2021-03-24T09:47:19.256405Z",
      "country": "United Kingdom",
      "city": "Cardiff",
      "address_3": null,
      "address_2": null,
      "address_1": null,
      "active": true
    }
  ]  
}
```

Lists all properties associated with an access token's owner.

### HTTP Request

`GET [backend_url][iot_core]/properties`

### Parameters

Parameter | Description
--------- | -----------
uprn | Unique Property Reference Number
spaces | List of spaces within the property.
postcode | Property postcode.
name | Property name.
lng | Longitude
lat | Latitude
id | Property id.
created_at | When the property was created.
country | Property address.
city | Property address.
address_3 | Property address.
address_2 | Property address.
address_1 | Property address.
active | Whether the property is active.

## Get property
> To get property, use this code:

```shell
curl -X GET "[backend_url][iot_core]/properties/{property_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json'
```

> Returns JSON structured like this:

```json
{
  "property": {
    "uprn": null,
    "spaces": [],
    "postcode": "CF5 1FJ",
    "name": "Test",
    "lng": null,
    "lat": null,
    "id": "85bc39ca-25c6-49ff-a9bb-014da2e3de91",
    "created_at": "2021-03-24T09:47:19.256405Z",
    "country": "United Kingdom",
    "city": "Cardiff",
    "address_3": null,
    "address_2": null,
    "address_1": null,
    "active": true
  }
}
```

Returns requested property.


### HTTP Request

`GET [backend_url][iot_core]/properties/{property_id}`

## Update property

> To update property, use this code:

```shell
curl -X PUT "[backend_url][iot_core]/properties/{property_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"property": {"name": "Test 2"}}'
```

> Returns JSON structured like this:

```json
{
  "property": {
    "uprn": null,
    "spaces": [],
    "postcode": "CF5 1FJ",
    "name": "Test 2",
    "lng": null,
    "lat": null,
    "id": "85bc39ca-25c6-49ff-a9bb-014da2e3de91",
    "created_at": "2021-03-24T09:47:19.256405Z",
    "country": "United Kingdom",
    "city": "Cardiff",
    "address_3": null,
    "address_2": null,
    "address_1": null,
    "active": true
  }
}
```

Updates requested property.

### HTTP Request

`PUT [backend_url][iot_core]/properties/{property_id}`

## Create property

> To create property, use this code:

```shell
curl -X POST "[backend_url][iot_core]/properties" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"property": {
        "uprn": null,
        "postcode": "ABC DEF",
        "name": "Palace",
        "lng": null,
        "lat": null,
        "country": "United Kingdom",
        "city": "London",
        "address_3": null,
        "address_2": null,
        "address_1": null,
        "active": true  
      }}'
```

> Returns JSON structured like this:

```json
{
  "property": {
    "uprn": null,
    "spaces": [],
    "postcode": "SW1A 1AA",
    "name": "Palace",
    "lng": null,
    "lat": null,
    "id": "85bc39ca-25c6-49ff-a9bb-014da2e3de91",
    "created_at": "2021-03-24T09:47:19.256405Z",
    "country": "United Kingdom",
    "city": "London",
    "address_3": null,
    "address_2": null,
    "address_1": null,
    "active": true
  }
}
```

Creates property along with default space.

### HTTP Request

`POST [backend_url][iot_core]/properties`

##Add member

> To add member to property, use this code:

```ruby
tbc
```

```python
tbc
```

```javascript
tbc
```

```shell
curl -X POST "[backend_url]/properties/{property_id}/memberships" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d {"email": "john.smith@email.me"}
```

> Returns JSON structured like this:

```json
|response_status|
```

Adds member to requested property. If email does not exist, the user gets created. Regardless of existence in the platform, user
will get an email with further instructions on how to accept an invitation.

### HTTP Request

`POST [backend_url]/properties/{property_id}/memberships`

###Parameters

Parameter | Type | Description
------ | ---- | -----------
email | String | An invitee's email

## Expel member

> To expel member to property, use this code:

```ruby
tbc
```

```python
tbc
```

```javascript
tbc
```

```shell
curl -X DELETE "[backend_url]/properties/{property_id}/memberships/{membership_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json'
```

> Returns JSON structured like this:

```json
|response_status|
```

Expels member from requested property.

### HTTP Request

`DELETE [backend_url]/properties/{property_id}/memberships/{memberhsip_id}`

## Add space

> To add space to property, use this code:

```ruby
tbc
```

```python
tbc
```

```javascript
tbc
```

```shell
curl -X POST "[backend_url]/properties/{property_id}/spaces" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"name": "Living room"}'
```

> Returns JSON structured like this:

```json
|response_space_details|
```

Creates space for requested property

### HTTP Request

`POST [backend_url]/properties/{property_id}/spaces`

Parameter | Type | Description
------ | ---- | -----------
name | String | Space name

## Remove space

> To remove space to property, use this code:

```ruby
tbc
```

```python
tbc
```

```javascript
tbc
```

```shell
curl -X DELETE "[backend_url]/properties/{property_id}/spaces/{space_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json'
```

> Returns JSON structured like this:

```json
|response_status|
```

Removes space from the property. If there are hubs associated with requested space, those hubs will be re-assigned to default space.

<aside class="notice">
You cannot remove default space from the property
</aside>

### HTTP Request

`DELETE [backend_url]/properties/{property_id}/spaces/{space_id}`
