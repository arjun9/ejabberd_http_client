# EjabberdHttpClient::CheckPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name to check. | [optional] |
| **host** | **String** | Server to check. | [optional] |
| **password** | **String** | Password to check. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::CheckPasswordRequest.new(
  user: null,
  host: null,
  password: null
)
```

