# EjabberdHttpClient::SrgCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Group identifier. | [optional] |
| **host** | **String** | Group server name. | [optional] |
| **label** | **String** | Group name. | [optional] |
| **description** | **String** | Group description. | [optional] |
| **display** | **String** | Groups to display. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SrgCreateRequest.new(
  group: null,
  host: null,
  label: null,
  description: null,
  display: null
)
```

