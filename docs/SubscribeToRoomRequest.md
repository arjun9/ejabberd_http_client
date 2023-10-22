# EjabberdHttpClient::SubscribeToRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User JID. | [optional] |
| **nick** | **String** | User&#39;s nick. | [optional] |
| **room** | **String** | The room to subscribe. | [optional] |
| **nodes** | **String** | Nodes separated by commas. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SubscribeToRoomRequest.new(
  user: null,
  nick: null,
  room: null,
  nodes: null
)
```

