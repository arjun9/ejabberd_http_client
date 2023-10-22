# EjabberdHttpClient::CreateRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **host** | **String** | Server host. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::CreateRoomRequest.new(
  name: null,
  service: null,
  host: null
)
```

