# EjabberdHttpClient::GetLast200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **String** | Last activity timestamp. | [optional] |
| **status** | **String** | User&#39;s last status. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetLast200Response.new(
  timestamp: null,
  status: null
)
```

