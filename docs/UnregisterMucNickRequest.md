# EjabberdHttpClient::UnregisterMucNickRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jid** | **String** | User JID. | [optional] |
| **service** | **String** | MUC service. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::UnregisterMucNickRequest.new(
  jid: null,
  service: null
)
```

