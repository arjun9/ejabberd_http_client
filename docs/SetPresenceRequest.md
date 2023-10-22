# EjabberdHttpClient::SetPresenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **resource** | **String** | Resource. | [optional] |
| **type** | **String** | Type - available, error, probe... | [optional] |
| **show** | **String** | Show - away, chat, dnd, xa. | [optional] |
| **status** | **String** | Status text. | [optional] |
| **priority** | **String** | Priority, provide this value as an integer. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetPresenceRequest.new(
  user: null,
  host: null,
  resource: null,
  type: null,
  show: null,
  status: null,
  priority: null
)
```

