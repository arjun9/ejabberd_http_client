# EjabberdHttpClient::LeaveClusterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** | Nodename of the node to kick from the cluster. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::LeaveClusterRequest.new(
  node: null
)
```

