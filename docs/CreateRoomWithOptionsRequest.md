# EjabberdHttpClient::CreateRoomWithOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **host** | **String** | Server host. | [optional] |
| **options** | [**Array&lt;CreateRoomWithOptionsRequestOptionsInner&gt;**](CreateRoomWithOptionsRequestOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::CreateRoomWithOptionsRequest.new(
  name: null,
  service: null,
  host: null,
  options: null
)
```

