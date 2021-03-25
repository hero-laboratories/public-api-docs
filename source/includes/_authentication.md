# Authentication
Deploy test
The Hero Api implements OAuth 2.0 to allow users to log in to applications without exposing their credentials. Api usage requires several steps:

1. Acquire an access token, and optionally refresh token
2. Put the access token in headers under `Authorization` key
3. Refresh the access token when it is about to expire

##Acquire an access token
> To acquire an access token, use this code:
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
# Make sure you are using proper credentials
curl -X POST "[backend_url]/auth/sign_in" \
  -H 'Content-Type: application/json' \
  -d '{
  	"email":  "YOUR_EMAIL",
  	"password":  "YOUR_PASSWORD"
  }'
```

> Returns JSON structured like this:

```json
{
    "user_details": |response_user_details|,
    "token_details": "em5HMDJodFZ6eWNWamlETmR1d1pKSlFiUENlSFR6R1lLdEpkQzNHQnorcXpZUVByb2hXSkg0dkpFV3ovQUsrZjNYOGswdk5oS3RmMEdUWkV6SHcvSVgyU1M5RG5CM1Z1Ui9MZlFOSEprWW89LS0yZkgvWVlOMmZMRnQ4MFlHUDA2bEhRPT0=--094552d217355deb13f100917139bc5db5225ac3"

}
```

Acquiring an access token is a one-step process. 

1. You just need to send an authorizing request with your credentials.

### HTTP Request

`POST [backend_url]/auth/sign_in`

### Body parameters

Parameter | Description
--------- | -----------
email | The email bound to your account
password | Chosen password

<aside class="notice">
You do not need to provide <code>Authorization</code> header in this request
</aside>

<aside class="warning">
  Having an account in our system is a must before proceeding
</aside>

##Authenticating requests
> To validate access token, use this code:

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
curl -X GET "[backend_url]/auth/validate_token" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
    "user_details": |response_user_details|,
    "token_details": "em5HMDJodFZ6eWNWamlETmR1d1pKSlFiUENlSFR6R1lLdEpkQzNHQnorcXpZUVByb2hXSkg0dkpFV3ovQUsrZjNYOGswdk5oS3RmMEdUWkV6SHcvSVgyU1M5RG5CM1Z1Ui9MZlFOSEprWW89LS0yZkgvWVlOMmZMRnQ4MFlHUDA2bEhRPT0=--094552d217355deb13f100917139bc5db5225ac3"

}
```

**All** requests must be authenticated with an access token put in request headers under *Authorization* key using the *Bearer* scheme. Your client
may have up to 10 active tokens at a time.

To get information about an access token, you can call

### HTTP Request

`GET [backend_url]/auth/validate_token`

##Refresh access
> To refresh access token, use this code:

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
curl -X PUT "[backend_url]/auth/refresh_token" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```

> Returns JSON structured like this:

```json
{
    "token_details": "em5HMDJodFZ6eWNWamlETmR1d1pKSlFiUENlSFR6R1lLdEpkQzNHQnorcXpZUVByb2hXSkg0dkpFV3ovQUsrZjNYOGswdk5oS3RmMEdUWkV6SHcvSVgyU1M5RG5CM1Z1Ui9MZlFOSEprWW89LS0yZkgvWVlOMmZMRnQ4MFlHUDA2bEhRPT0=--094552d217355deb13f100917139bc5db5225ac3"
}
```

Access token expires after certain amount of time. If you want to have persistent access, you need to refresh your token when its about to expire.
Response will return brand new token which auto-disables the previous one sent within the request.

### HTTP Request

`PUT [backend_url]/auth/refresh_token`

##Invalidate access

> To invalidate access token, use this code:

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
# Make sure you are using proper credentials
curl -X DELETE "[backend_url]/auth/sign_out" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```

If you want to invalidate the token instantly instead of waiting till its expired, call below endpoint 

### HTTP Request

`DELETE [backend_url]/auth/sign_out`

<aside class="notice">
Once invalidated, the user must go through the authentication process again. You will not be able to refresh the access token.
</aside>
