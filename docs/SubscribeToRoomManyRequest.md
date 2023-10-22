# EjabberdHttpClient::SubscribeToRoomManyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Array&lt;SubscribeToRoomManyRequestUsersInner&gt;**](SubscribeToRoomManyRequestUsersInner.md) |  | [optional] |
| **room** | **String** | The room to subscribe. | [optional] |
| **nodes** | **String** | Nodes separated by commas. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SubscribeToRoomManyRequest.new(
  users: null,
  room: null,
  nodes: null
)
```

