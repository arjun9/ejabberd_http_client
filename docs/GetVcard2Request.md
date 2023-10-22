# EjabberdHttpClient::GetVcard2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **name** | **String** | Field name. | [optional] |
| **subname** | **String** | Subfield name. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetVcard2Request.new(
  user: null,
  host: null,
  name: null,
  subname: null
)
```

