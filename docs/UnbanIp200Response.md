# EjabberdHttpClient::UnbanIp200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unbanned** | **Integer** | Amount of unbanned entries, or negative in case of error. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::UnbanIp200Response.new(
  unbanned: null
)
```

