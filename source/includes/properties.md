# Properties

Property is the richest data model in our system.

##Get properties
> To list properties, use this code:

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
curl -X GET "[backend_url]/properties" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_property_details|, 
    |response_property_details|
  ],
  "pagination": |response_pagination| 
}
```

Lists all properties associated with an access token's owner.

<aside class="notice">
Applying filters gives you possibility to fetch more results than just owned/subscribed properties
</aside>

### HTTP Request

`GET [backend_url]/properties`

###Filters
Some of filters are applicable only if you have enough permissions

Filter | Type | Description
------ | ---- | -----------
ids | Array | Property ids to filter against
organization_id | String | The organization identifier that property owner's belong to
name | String | Property name
city | String | Property city
postcode | String | Property postcode

##Get property
> To get property, use this code:

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
curl -X GET "[backend_url]/properties/{property_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"includes": ["spaces", "things", "hubs"]}'
```

> Returns JSON structured like this:

```json
{
  "property": |response_property_details|,
  "includes": {
    "spaces": [],
    "hubs": [],
    "things": [],
    "memberships": []
  }
}
```

Returns requested property. 

<aside class="notice">
Applying includes gives you possibility to enrich response with additional data
</aside>

### HTTP Request

`GET [backend_url]/properties/{property_id}`

### Parameters

Parameter | Type | Description | Possible values
--------- | ---- | ----------- | ---------------
includes | Array | List of associated resources to enrich response with | spaces, hubs, things, memberships


##Update property

> To update property, use this code:

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
curl -X PUT "[backend_url]/properties/{property_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '|payload_property|'
```

> Returns JSON structured like this:

```json
|response_property_details|
```

Updates requested property. 

### HTTP Request

`PUT [backend_url]/properties/{property_id}`

###Parameters

Parameter | Type | Description
------ | ---- | -----------
address_1 | String | First part of the address
address_2 | String | Second part of the address
address_3 | String | Third part of the address
name | String | Property name
city | String | Property city
postcode | String | Property postcode
country | String | Property country


##Create property

> To create property, use this code:

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
curl -X POST "[backend_url]/properties" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '|payload_property|'
```

> Returns JSON structured like this:

```json
|response_property_details|
```

Creates property along with default space.

### HTTP Request

`POST [backend_url]/properties`

###Parameters

Parameter | Type | Description
------ | ---- | -----------
address_1 | String | First part of the address
address_2 | String | Second part of the address
address_3 | String | Third part of the address
name | String | Property name
city | String | Property city
postcode | String | Property postcode
country | String | Property country

##Delete property

> To delete property, use this code:

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
curl -X DELETE "[backend_url]/properties/{property_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json'
```

> Returns JSON structured like this:

```json
|response_status|
```

Deletes requested property.

### HTTP Request

`DELETE [backend_url]/properties/{property_id}`

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
