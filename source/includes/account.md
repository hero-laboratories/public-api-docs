#Account

## Fetch details
> To fetch details, use this code:

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
curl -X GET "[backend_url]/account" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_user_details|
```

Returns an access token's owner details.

### HTTP Request

`GET [backend_url]/account`

## Update account
> To update account, use this code:

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
curl -X PUT "[backend_url]/account" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '|payload_account|'
```
> Returns JSON structured like this:

```json
|response_user_details|
```
Updates an access token's owner account details. 

### HTTP Request

`PUT [backend_url]/account`

Parameter | Description
--------- | -----------
email | The email bound to your account
first_name | First name
last_name | Last name
phone | Phone
language | Language value i.e "en", "pl"

## Delete account along with data
> To delete account, use this code:

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
curl -X PUT "[backend_url]/account" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"password": YOUR_PASSWORD}'
```
> Returns JSON structured like this:

```json
|response_status|
```

Deletes account along with data. This process is irreversible, that is why your password is required for confirmation.

### HTTP Request

`DELETE [backend_url]/account`

Parameter | Description
--------- | -----------
password(REQUIRED) | Your password

## Request password reset

> To request password reset, use this code:

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
curl -X POST "[backend_url]/account/reset_password" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
|response_status|
```

Requests reset password email with further instructions. The endpoint returns always status `ok` regardless of email existence.

### HTTP Request

`POST [backend_url]/account/reset_password`
