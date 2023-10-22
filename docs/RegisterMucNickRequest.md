# EjabberdHttpClient::RegisterMucNickRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nick** | **String** | Nick. | [optional] |
| **jid** | **String** | User JID. | [optional] |
| **service** | **String** | Service. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::RegisterMucNickRequest.new(
  nick: null,
  jid: null,
  service: null
)
```

