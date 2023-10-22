# EjabberdHttpClient::SetRoomAffiliationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **jid** | **String** | User JID. | [optional] |
| **affiliation** | **String** | Affiliation to set. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetRoomAffiliationRequest.new(
  name: null,
  service: null,
  jid: null,
  affiliation: null
)
```

