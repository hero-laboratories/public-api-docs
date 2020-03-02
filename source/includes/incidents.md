# Incidents 
##Get Incidents
> To list incidents, use this code:

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
curl -X GET "[backend_url]/incidents" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_incident_details|, 
    |response_incident_details| 
  ],
  "pagination": |response_pagination| 
}
```

Lists all incidents from properties associated with an access token's owner.

<aside class="notice">
Applying filters gives you possibility to fetch more results
</aside>

### HTTP Request

`GET [backend_url]/incidents`

###Filters
Some of filters are applicable only if you have enough permissions

Filter | Type | Description
------ | ---- | -----------
organization_id | String | The organization identifier
property_id | String | Property id
state | Array | Incident states array to filter against
type | String | Incident type
severity | String | Incident severity

## Take action on incident

> To trigger action on incident, use this code:

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
curl -X PUT "[backend_url]/incidents/{incident_id}/action/{action}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_incident_details| 
```

Take action on incident. Possible actions can be found in incident response.

<aside class="notice">
Incident response contains possible action list that are available to trigger for current incident state.
</aside>

### HTTP Request

`PUT [backend_url]/incidents/{incident_id}/action/{action}`

