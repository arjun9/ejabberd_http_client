# EjabberdHttpClient::GetPresence200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jid** | **String** | User JID with resource. | [optional] |
| **show** | **String** | User presence flag. | [optional] |
| **status** | **String** | Free text defined by the user client. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetPresence200Response.new(
  jid: null,
  show: null,
  status: null
)
```

