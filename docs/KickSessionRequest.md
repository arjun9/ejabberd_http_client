# EjabberdHttpClient::KickSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **resource** | **String** | User&#39;s resource. | [optional] |
| **reason** | **String** | Reason for closing session. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::KickSessionRequest.new(
  user: null,
  host: null,
  resource: null,
  reason: null
)
```

