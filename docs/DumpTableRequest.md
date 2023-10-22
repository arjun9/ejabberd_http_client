# EjabberdHttpClient::DumpTableRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Full path for the text file. | [optional] |
| **table** | **String** | Table name. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::DumpTableRequest.new(
  file: null,
  table: null
)
```

