# EjabberdHttpClient::SetNicknameRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **nickname** | **String** | Nickname. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetNicknameRequest.new(
  user: null,
  host: null,
  nickname: null
)
```

