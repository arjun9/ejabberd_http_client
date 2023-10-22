# EjabberdHttpClient::DeleteOldUsersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Last login age in days of accounts that should be removed. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::DeleteOldUsersRequest.new(
  days: null
)
```

