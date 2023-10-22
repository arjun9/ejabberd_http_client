# EjabberdHttpClient::RestartModuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Server name. | [optional] |
| **_module** | **String** | Module to restart. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::RestartModuleRequest.new(
  host: null,
  _module: null
)
```

