# EjabberdHttpClient::SetLastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **timestamp** | **Integer** | Number of seconds since epoch. | [optional] |
| **status** | **String** | Status message. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetLastRequest.new(
  user: null,
  host: null,
  timestamp: null,
  status: null
)
```

