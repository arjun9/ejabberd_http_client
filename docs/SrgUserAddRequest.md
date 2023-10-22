# EjabberdHttpClient::SrgUserAddRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Username. | [optional] |
| **host** | **String** | User server name. | [optional] |
| **group** | **String** | Group identifier. | [optional] |
| **grouphost** | **String** | Group server name. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SrgUserAddRequest.new(
  user: null,
  host: null,
  group: null,
  grouphost: null
)
```

