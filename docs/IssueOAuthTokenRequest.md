# EjabberdHttpClient::IssueOAuthTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jid** | **String** | JID for which to issue token. | [optional] |
| **ttl** | **Integer** | Time to live of generated token in seconds. | [optional] |
| **scopes** | **String** | List of scopes to allow, separated by &#39;;&#39;. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::IssueOAuthTokenRequest.new(
  jid: null,
  ttl: null,
  scopes: null
)
```

