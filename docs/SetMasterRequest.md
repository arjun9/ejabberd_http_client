# EjabberdHttpClient::SetMasterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nodename** | **String** | Name of the erlang node that will be considered master of this node. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SetMasterRequest.new(
  nodename: null
)
```

