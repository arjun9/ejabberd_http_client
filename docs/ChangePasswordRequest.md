# EjabberdHttpClient::ChangePasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **newpass** | **String** | New password for the user. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ChangePasswordRequest.new(
  user: null,
  host: null,
  newpass: null
)
```

