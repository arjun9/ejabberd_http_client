# EjabberdHttpClient::StopKindlyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delay** | **Integer** | Seconds to wait. | [optional] |
| **announcement** | **String** | Announcement to send, with quotes. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::StopKindlyRequest.new(
  delay: null,
  announcement: null
)
```

