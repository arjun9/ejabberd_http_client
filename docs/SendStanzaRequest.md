# EjabberdHttpClient::SendStanzaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Sender JID. | [optional] |
| **to** | **String** | Destination JID. | [optional] |
| **stanza** | **String** | Stanza. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SendStanzaRequest.new(
  from: null,
  to: null,
  stanza: null
)
```

