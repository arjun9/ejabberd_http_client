# EjabberdHttpClient::AddOAuthClientImplicitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Client ID. | [optional] |
| **client_name** | **String** | Client Name. | [optional] |
| **redirect_uri** | **String** | Redirect URI. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::AddOAuthClientImplicitRequest.new(
  client_id: null,
  client_name: null,
  redirect_uri: null
)
```

