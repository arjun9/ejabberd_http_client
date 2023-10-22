# EjabberdHttpClient::BanAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name to ban. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **reason** | **String** | Reason for banning user. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::BanAccountRequest.new(
  user: null,
  host: null,
  reason: null
)
```

