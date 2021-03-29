# Users

## Get user's details
> To fetch details, use this code:

```shell
curl -X GET "[backend_url][user_service_path]/customer_app/users/901c1d46-c3e0-4b67-8f1d-334716c41234" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
```
> Returns JSON structured like this:

```json
{
  "id": "901c1d46-c3e0-4b67-8f1d-334716c41234",
  "email": "jon.doe@gmail.com",
  "first_name": "Jon",
  "last_name": "Doe",
  "full_name": "Jon Doe",
  "phone": "+44 7911 123456",
  "roles": [...],
  "active": true,
  "language": "en",
  "organization_id": "68193f60-796a-451a-bc64-bfd0abe11234",
  "created_at": "2021-03-17T15:36:34.340Z"
}
```

Returns an access token's owner details.

### HTTP Request

`GET [backend_url][user_service_path]/customer_app/users/{id}`

## Update
> To update an user, use this code:

```shell
curl -X PUT "[backend_url]/customer_app/users/901c1d46-c3e0-4b67-8f1d-334716c41234" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{phone: "+44 7911 987654"}'
```
> Returns JSON structured like this:

```json
{
  "id": "901c1d46-c3e0-4b67-8f1d-334716c41234",
  "email": "jon.doe@gmail.com",
  "first_name": "Jon",
  "last_name": "Doe",
  "full_name": "Jon Doe",
  "phone": "+44 7911 987654",
  "roles": [...],
  "active": true,
  "language": "en",
  "organization_id": "68193f60-796a-451a-bc64-bfd0abe11234",
  "created_at": "2021-03-17T15:36:34.340Z"
}
```

### HTTP Request

`PUT [backend_url][user_service_path]/customer_app/users/{id}`

### Body parameters

Parameter | Description
--------- | -----------
email | The email bound to your account
first_name | First name
last_name | Last name
phone | Phone
language | Language value i.e "en", "pl"


## Request password reset

> To request password reset, use this code:

```shell
curl -X POST "[backend_url]/iot-core-public/passwords/reset_password" \
   -H 'Authorization: Bearer AUTH_TOKEN' \
   -H 'Content-Type: application/json' \
   -d '{"email": "jon.doe@gmail.coms"}'
```
> Returns http status 204


Requests reset password email with further instructions. The endpoint returns always http status 204 regardless of email existence.

### HTTP Request

`POST [backend_url]/iot-core-public/passwords/reset_password`

### Body parameters

Parameter | Description
--------- | -----------
email | The email bound to the account
