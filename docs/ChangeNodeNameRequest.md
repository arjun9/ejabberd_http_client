# EjabberdHttpClient::ChangeNodeNameRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oldnodename** | **String** | Name of the old erlang node. | [optional] |
| **newnodename** | **String** | Name of the new node. | [optional] |
| **oldbackup** | **String** | Path to old backup file. | [optional] |
| **newbackup** | **String** | Path to the new backup file. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ChangeNodeNameRequest.new(
  oldnodename: null,
  newnodename: null,
  oldbackup: null,
  newbackup: null
)
```

