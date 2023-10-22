# EjabberdHttpClient::GetStatsHostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Statistic name. | [optional] |
| **host** | **String** | Server JID. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetStatsHostRequest.new(
  name: null,
  host: null
)
```

