# EjabberdHttpClient::ListMucOnlineRoomsByRegexRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | MUC service, or &#39;global&#39; for all. | [optional] |
| **regex** | **String** | Regex pattern for room name. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ListMucOnlineRoomsByRegexRequest.new(
  service: null,
  regex: null
)
```

