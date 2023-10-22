# EjabberdHttpClient::GetRoomAffiliationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetRoomAffiliationsRequest.new(
  name: null,
  service: null
)
```

