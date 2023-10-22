# EjabberdHttpClient::SendDirectInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Room name. | [optional] |
| **service** | **String** | MUC service. | [optional] |
| **password** | **String** | Password. | [optional] |
| **reason** | **String** | Reason text. | [optional] |
| **users** | **String** | Users JIDs separated with &#x60;:&#x60; characters. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SendDirectInvitationRequest.new(
  name: null,
  service: null,
  password: null,
  reason: null,
  users: null
)
```

