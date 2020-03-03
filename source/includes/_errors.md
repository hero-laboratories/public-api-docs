# Errors

The Hero API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid. Check your parameters.
401 | Unauthorized -- Your API key is invalid. Most likely it has expired.
403 | Forbidden -- Not enough permissions for applied filters.
405 | Method Not Allowed -- Method not allowed due to missing membership.
412 | Precondition failed -- The pre condition given in the request evaluated to false by the server.
404 | Not Found -- The requested resource could not be found.
409 | Conflict -- The request could not be completed due to a conflict with the current state of the requested resource.
429 | Too Many Requests -- You're requesting too many resources! Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
