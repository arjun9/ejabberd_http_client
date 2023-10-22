# EjabberdHttpClient::CheckPasswordHashRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name to check. | [optional] |
| **host** | **String** | Server to check. | [optional] |
| **passwordhash** | **String** | Password&#39;s hash value. | [optional] |
| **hashmethod** | **String** | Name of hash method. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::CheckPasswordHashRequest.new(
  user: null,
  host: null,
  passwordhash: null,
  hashmethod: null
)
```

