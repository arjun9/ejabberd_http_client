# EjabberdHttpClient::SendMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Message type. | [optional] |
| **from** | **String** | Sender JID. | [optional] |
| **to** | **String** | Receiver JID. | [optional] |
| **subject** | **String** | Subject. | [optional] |
| **body** | **String** | Body. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::SendMessageRequest.new(
  type: null,
  from: null,
  to: null,
  subject: null,
  body: null
)
```

