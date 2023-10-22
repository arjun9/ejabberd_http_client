# EjabberdHttpClient::UnregisterUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Username. | [optional] |
| **host** | **String** | Local vhost served by ejabberd. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::UnregisterUserRequest.new(
  user: null,
  host: null
)
```

