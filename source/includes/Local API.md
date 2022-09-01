# Local API

## Connect to Local API
Local API is used in local connections with custom assistants

Turning on Local API - Mobile App > Settings > Hero Signal > Local mode status. Username and password will appear.

### Authentication

Connection details 

URL | Scheme | Description |
----| ------ | ----------- |
host:443 | wss | Once the socket is open you can subscribe to channels by sending a subscribe request message.


### Messages

## ping

Request (sent by client)

Client can ping server to determine whether connection is alive, server responds with pong. This is an aplication level ping as opposed to default ping in websockets standard which is server initiated.

Payload

Name  |  Type  |
----- | ------ |
Event | String |

> Ping


```json
{ 
"event": "pong",
}
```

## pong 

Response (sent by server)

Server pong response to a ping to determine whether connection is alive. This is an application level pong as opposed to default pong in websockets standard which is sent by client in response to a ping

Payload 

Name  |  Type  |
----- | ------ |
Event | String |

> Pong

```json
{ 
"event": "pong",
}
```

## telemetry

Publication (sent by server)

Telemetry message

Name  |  Type  | Description |
----- | ------ | ----------- |
Event | String |
Data  | Object | 
╰ water_flow | float |	
╰ leak_status | string | "No Leaks", "Small Leak", "Major Leak"
╰ status | Array(string) | "OKAY", "AMBIENT_TEMP_FAILED", "BATTERY_FAILED", "PRESSURE_FAILED", "WATER_TEMP_FAILED", "WATERFLOW_FAILED"
╰ water_temp | float	
╰ ambient_temp | float
╰ abs_pressure | integer | Absolute pressure	
╰ battery_level | string | "okay" | "low" | "critical" | "none"	
╰ probed_at | integer | Unix epoch time in milliseconds
╰ units | object	
╰ water_flow | string | "gpm", "l/min"	
╰ water_temp | string | "C", "F"	
╰ ambient_temp | string | "C", "F"	
╰ abs_pressure | string | "mbar", "psi"

> Example of payload

```json
{
  "event": "telemetry",
  "data": {
    "water_flow": 63.621673583984375,
    "leak_status": "No Leaks",
    "status": ["OKAY"],
    "water_temp": 20.4375,
    "ambient_temp": 20.625,
    "abs_pressure": 4418,
    "battery_level": "okay",
    "probed_at": 1569369606308,
    "units": {
        "water_flow": "ml/min",
        "water_temp": "C",
        "ambient_temp": "C",
        "abs_pressure": "mbar"
    }
  }
}
```
## state

Publication (sent by server)

Name  |  Type  | Description |
----- | ------ | ----------- |
Event | String |
Data | Object |
╰ valve_state | string | "open" | "closed" | "opening" | "closing"	
╰ radio_state | string | "connected" | "disconnected"	
╰ siren | boolean	

> Example of payload

```json
{
  "event": "state",
  "data": {
    "valve_state": "open",
    "radio_state": "connected",
    "siren": true
  }
}
```

## changeState

Request (sent by client)

Change a state attribute

Name  |  Type  | Description |
----- | ------ | ----------- |
Event | String |
Data | Object |
╰ valve_state | string | "open", "closed"	
╰ led_brightness | integer | 0-100
╰ siren | boolean | true/false
╰ signal_reboot | boolean | true
╰ sonic_reboot | boolean | true

> Example of payload

```json
{
  "event": "changeState",
  "data": {
    "valve_state": "open",
    "led_brightness": 100,
    "siren": true,
    "signal_reboot": true,
    "sonic_reboot": true
  }
}
```
## requestTelemetry

Request (sent by client)

Request telemetry message

Name  |  Type  |
----- | ------ |
Event | String |

> Payload

```json
{
  "event": "requestTelemetry"
}
```

## requestState

Request (sent by client)

Request state message

Name  |  Type  |
----- | ------ |
Event | String |

> Payload

```json
{
  "event": "requestState"
}
```

## error

Request (sent by client)

Request state message

Name  |  Type  |
----- | ------ |
Event | String |
Code | String	
Message | String	

> Example of payload

```json
{
  "event": "error",
  "code": "S11",
  "message": "Invalid valve state: 'wrong_state'. Valid states: 'open', 'closed'"
}
```
Error codes:

### G10: Server error
### G11: Invalid request
### S10: Device unavailable
### S11: Invalid valve state


