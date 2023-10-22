# EjabberdHttpClient::GetRoster200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jid** | **String** |  | [optional] |
| **nick** | **String** |  | [optional] |
| **subscription** | **String** |  | [optional] |
| **pending** | **String** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GetRoster200ResponseInner.new(
  jid: null,
  nick: null,
  subscription: null,
  pending: null,
  groups: null
)
```

