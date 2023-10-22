# EjabberdHttpClient::UnsubscribeFromRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User JID. | [optional] |
| **room** | **String** | The room to subscribe. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::UnsubscribeFromRoomRequest.new(
  user: null,
  room: null
)
```

