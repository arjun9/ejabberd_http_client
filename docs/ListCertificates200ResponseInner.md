# EjabberdHttpClient::ListCertificates200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain name. | [optional] |
| **file** | **String** | File path. | [optional] |
| **used** | **String** | Usage status. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::ListCertificates200ResponseInner.new(
  domain: null,
  file: null,
  used: null
)
```

