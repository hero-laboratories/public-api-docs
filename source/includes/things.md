# Things
##Get Things

> To list things, use this code:

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
curl -X GET "[backend_url]/things" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_thing_details|, 
    |response_thing_details|
  ],
  "pagination": |response_pagination| 
}
```

Lists all things associated with an access token's owner.

<aside class="notice">
Applying filters gives you possibility to fetch more results than just owned/subscribed things
</aside>

### HTTP Request

`GET [backend_url]/things`

###Filters
Some of filters are applicable only if you have enough permissions

Filter | Type | Description
------ | ---- | -----------
ids | Array | Thing ids to filter against
property_id | String | The property identifier
organization_id | String | The organization identifier
serial_no | String | Property name

##Get specific Thing

> To get thing, use this code:

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
curl -X GET "[backend_url]/things/{thing_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_thing_details|
```

Get requested thing

### HTTP Request

`GET [backend_url]/things/{thing_id}`

## Manage Thing state

> To manage thing state, use this code:

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
curl -X GET "[backend_url]/things/{thing_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"state": "closed"}'
```
> Returns JSON structured like this:

```json
|response_status|
```

Manages thing state. The state will not get updated instantly as it takes time to physically open or close the valve.
Information about actual state change will be pre-populated via webhook.

### HTTP Request

`PUT [backend_url]/things/{thing_id}`

### Parameters
Parameter | Type | Description | Possible values
--------- | ---- | ----------- | ---------------
state | String | Requested state | open, closed

##Get Thing statistics

> To fetch thing statistics, use this code:

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
curl -X GET "[backend_url]/things/{thing_id}/statistics" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_thing_statistics|
```

Fetches thing water usage statistics.

### HTTP Request

`GET [backend_url]/things/{thing_id}/statistics`

### Parameters
Parameter | Type | Description
--------- | ---- | -----------
range_from | String | Range from in timestamp(milliseconds)
range_to | String | Range to  in timestamp(milliseconds)

## Get Thing Check-Ups
> To list check-ups, use this code:

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
curl -X GET "[backend_url]/things/{thing_id}/check-ups" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_check_up_details|, 
    |response_check_up_details| 
  ],
  "pagination": |response_pagination| 
}
```

List check-ups associated with a requested thing

### HTTP Request

`GET [backend_url]/things/{thing_id}/check-ups`
