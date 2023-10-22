# EjabberdHttpClient::Export2sqlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Vhost. | [optional] |
| **file** | **String** | Full path to the destination SQL file. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::Export2sqlRequest.new(
  host: null,
  file: null
)
```

