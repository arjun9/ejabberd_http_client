# EjabberdHttpClient::ConnectedUsersInfo200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jid** | **String** | User JID. | [optional] |
| **connection** | **String** | Connection type. | [optional] |
| **ip** | **String** | IP address. | [optional] |
| **port** | **Integer** | Port number. | [optional] |
| **priority** | **Integer** | Priority. | [optional] |
| **node** | **String** | Node. | [optional] |
| **uptime** | **Integer** | Uptime. | [optional] |
| **status** | **String** | Status. | [optional] |
| **resource** | **String** | Resource. | [optional] |
| **statustext** | **String** | Status text. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ConnectedUsersInfo200ResponseInner.new(
  jid: null,
  connection: null,
  ip: null,
  port: null,
  priority: null,
  node: null,
  uptime: null,
  status: null,
  resource: null,
  statustext: null
)
```

