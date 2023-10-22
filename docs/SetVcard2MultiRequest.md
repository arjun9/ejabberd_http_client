# EjabberdHttpClient::SetVcard2MultiRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | User name. | [optional] |
| **host** | **String** | Server name. | [optional] |
| **name** | **String** | Field name. | [optional] |
| **subname** | **String** | Subfield name. | [optional] |
| **contents** | **Array&lt;String&gt;** | List of values to set in the vCard subfield. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetVcard2MultiRequest.new(
  user: null,
  host: null,
  name: null,
  subname: null,
  contents: null
)
```

