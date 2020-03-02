# Hubs 
##Get Hubs

> To list hubs, use this code:

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
curl -X GET "[backend_url]/hubs" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_hub_details|, 
    |response_hub_details|
  ],
  "pagination": |response_pagination| 
}
```

Lists all hubs associated with an access token's owner.

### HTTP Request

`GET [backend_url]/hubs`

###Filters
Some of filters are applicable only if you have enough permissions

Filter | Type | Description
------ | ---- | -----------
ids | Array | Hub ids to filter against
space_id | String | The space that hub belongs to
property_id | String | The property that associated space belongs to
serial_no | String | Serial number

##Delete a specific Hub

> To delete hubs, use this code:

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
curl -X DELETE "[backend_url]/hubs/{hub_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_status|
```

Deletes requested hub. Be careful using this endpoint as there is no rollback for that.

### HTTP Request

`DELETE [backend_url]/hubs/{hub_id}`
