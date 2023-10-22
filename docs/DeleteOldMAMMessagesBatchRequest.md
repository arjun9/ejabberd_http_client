# EjabberdHttpClient::DeleteOldMAMMessagesBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Name of host where messages should be deleted. | [optional] |
| **type** | **String** | Type of messages to delete (chat, groupchat, all). | [optional] |
| **days** | **Integer** | Days to keep messages. | [optional] |
| **batch_size** | **Integer** | Number of messages to delete per batch. | [optional] |
| **rate** | **Integer** | Desired rate of messages to delete per minute. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::DeleteOldMAMMessagesBatchRequest.new(
  host: null,
  type: null,
  days: null,
  batch_size: null,
  rate: null
)
```

