# EjabberdHttpClient::GetStatusList200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **resource** | **String** | Resource. | [optional] |
| **priority** | **Integer** | Priority. | [optional] |
| **status** | **String** | Status. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetStatusList200ResponseInner.new(
  user: null,
  host: null,
  resource: null,
  priority: null,
  status: null
)
```

