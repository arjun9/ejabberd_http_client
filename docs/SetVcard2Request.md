# EjabberdHttpClient::SetVcard2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **name** | **String** | Field name. | [optional] |
| **subname** | **String** | Subfield name. | [optional] |
| **content** | **String** | Value. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetVcard2Request.new(
  user: null,
  host: null,
  name: null,
  subname: null,
  content: null
)
```

