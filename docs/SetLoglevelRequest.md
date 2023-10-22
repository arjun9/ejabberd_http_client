# EjabberdHttpClient::SetLoglevelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loglevel** | **String** | Desired logging level - none | emergency | alert | critical | error | warning | notice | info | debug. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetLoglevelRequest.new(
  loglevel: null
)
```

