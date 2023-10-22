# EjabberdHttpClient::CreateRoomsFileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Path to the text file with one room JID per line. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::CreateRoomsFileRequest.new(
  file: null
)
```

