# EjabberdHttpClient::AddOAuthClientPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Client ID. | [optional] |
| **client_name** | **String** | Client Name. | [optional] |
| **secret** | **String** | Secret. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::AddOAuthClientPasswordRequest.new(
  client_id: null,
  client_name: null,
  secret: null
)
```

