# EjabberdHttpClient::AddRosterItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **localuser** | **String** | User name. | [optional] |
| **localhost** | **String** | Server name. | [optional] |
| **user** | **String** | Contact user name. | [optional] |
| **host** | **String** | Contact server name. | [optional] |
| **nick** | **String** | Nickname. | [optional] |
| **group** | **String** | Group. | [optional] |
| **subs** | **String** | Subscription. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::AddRosterItemRequest.new(
  localuser: null,
  localhost: null,
  user: null,
  host: null,
  nick: null,
  group: null,
  subs: null
)
```

