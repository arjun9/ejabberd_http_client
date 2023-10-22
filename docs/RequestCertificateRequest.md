# EjabberdHttpClient::RequestCertificateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | **String** | Domains for which to acquire a certificate. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::RequestCertificateRequest.new(
  domains: null
)
```

