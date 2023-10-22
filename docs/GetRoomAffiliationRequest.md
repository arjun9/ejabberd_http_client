# EjabberdHttpClient::GetRoomAffiliationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **jid** | **String** | User JID. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetRoomAffiliationRequest.new(
  name: null,
  service: null,
  jid: null
)
```

