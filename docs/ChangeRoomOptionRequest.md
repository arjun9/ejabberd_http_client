# EjabberdHttpClient::ChangeRoomOptionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **option** | **String** | Option name. | [optional] |
| **value** | **String** | Value to assign. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ChangeRoomOptionRequest.new(
  name: null,
  service: null,
  option: null,
  value: null
)
```

