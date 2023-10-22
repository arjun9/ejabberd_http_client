# EjabberdHttpClient::RoomsUnusedDestroyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | MUC service or global for all. | [optional] |
| **days** | **Integer** | Number of days. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::RoomsUnusedDestroyRequest.new(
  service: null,
  days: null
)
```

