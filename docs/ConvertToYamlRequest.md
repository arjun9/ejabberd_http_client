# EjabberdHttpClient::ConvertToYamlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_in** | **String** | Full path to the original configuration file. | [optional] |
| **out** | **String** | Full path to the final YAML configuration file. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ConvertToYamlRequest.new(
  _in: null,
  out: null
)
```

