# EjabberdHttpClient::ResourceNumRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **num** | **Integer** | ID of resource to return. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ResourceNumRequest.new(
  user: null,
  host: null,
  num: null
)
```

