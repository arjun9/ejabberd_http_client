# EjabberdHttpClient::SendStanzaC2SRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Username. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **resource** | **String** | Resource. | [optional] |
| **stanza** | **String** | Stanza. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SendStanzaC2SRequest.new(
  user: null,
  host: null,
  resource: null,
  stanza: null
)
```

