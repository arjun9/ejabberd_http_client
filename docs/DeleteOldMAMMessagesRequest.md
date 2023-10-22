# EjabberdHttpClient::DeleteOldMAMMessagesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of messages to delete (chat, groupchat, all). | [optional] |
| **days** | **Integer** | Days to keep messages. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::DeleteOldMAMMessagesRequest.new(
  type: null,
  days: null
)
```

