#Organizations
Organization namespace is accessible only to those who have proper role around their organization
## Get organizations
> To fetch organizations, use this code:

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
curl -X GET "[backend_url]/organizations" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_organization_details|, 
    |response_organization_details|
  ],
  "pagination": |response_pagination| 
}

```
Returns organizations that an access token's owner belongs to

### HTTP Request

`GET [backend_url]/organizations`

## Create user
> To create user around organization, use this code:

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
curl -X POST "[backend_url]/organizations/{id}/users" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '|payload_user|'
```
> Returns JSON structured like this:

```json
|response_user_details|
```

Creates user around 

### HTTP Request

`POST [backend_url]/organizations/{id}/users`

### Body params
Parameter | Description
--------- | -----------
email | The email bound to your account
first_name | First name
last_name | Last name
phone | Phone
language | Language value i.e "en", "pl"
role_id | Role ID

## Update user

> To update user around organization, use this code:

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
curl -X PUT "[backend_url]/organizations/{organization_id}/users/{user_id}" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '|payload_user|'
```
> Returns JSON structured like this:

```json
|response_user_details|
```
Updates user around property.

<aside class="notice">
If user does not belong to requested organization the request will be rejected.
</aside>

### HTTP Request

`PUT [backend_url]/organizations/{organization_id}/users/{user_id}`

### Body params
Parameter | Description
--------- | -----------
email | The email bound to your account
first_name | First name
last_name | Last name
phone | Phone
language | Language value i.e "en", "pl"
role_id | Role ID

## Get users
> To list users around organization, use this code:

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
curl -X GET "[backend_url]/organizations/{organization_id}/users" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_user_details|, 
    |response_user_details|
  ],
  "pagination": |response_pagination| 
}
```

Lists users around requested organization. 

### HTTP Request

`GET [backend_url]/organizations/{organization_id}/users`

### Filters
Parameter | Type | Description
--------- | ---- | -----------
ids | Array | User ids to filter against
first_name | String | User first name
last_name | String | User last name
email | String | User email

## Get roles
> To list roles around organization, use this code:

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
curl -X GET "[backend_url]/organizations/{organization_id}/roles" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "records": [
    |response_role_details|, 
    |response_role_details|
  ],
  "pagination": |response_pagination| 
}
```

Lists roles around organization.

### HTTP Request

`GET [backend_url]/organizations/{organization_id}/roles`
