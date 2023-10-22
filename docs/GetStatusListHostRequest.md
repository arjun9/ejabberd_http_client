# EjabberdHttpClient::GetStatusListHostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Server name. | [optional] |
| **status** | **String** | Status type to check. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetStatusListHostRequest.new(
  host: null,
  status: null
)
```

