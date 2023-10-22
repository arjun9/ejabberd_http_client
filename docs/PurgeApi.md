# EjabberdHttpClient::PurgeApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abort_delete_old_mam_messages**](PurgeApi.md#abort_delete_old_mam_messages) | **POST** /api/abort_delete_old_mam_messages | Abort currently running delete old MAM messages operation. |
| [**abort_delete_old_messages**](PurgeApi.md#abort_delete_old_messages) | **POST** /api/abort_delete_old_messages | Abort currently running delete old offline messages operation. |
| [**delete_expired_messages**](PurgeApi.md#delete_expired_messages) | **POST** /api/delete_expired_messages | Delete expired offline messages from database. |
| [**delete_expired_pubsub_items**](PurgeApi.md#delete_expired_pubsub_items) | **POST** /api/delete_expired_pubsub_items | Delete expired PubSub items. |
| [**delete_old_mam_messages**](PurgeApi.md#delete_old_mam_messages) | **POST** /api/delete_old_mam_messages | Delete MAM messages older than DAYS. |
| [**delete_old_mam_messages_batch**](PurgeApi.md#delete_old_mam_messages_batch) | **POST** /api/delete_old_mam_messages_batch | Delete MAM messages older than DAYS in batches. |
| [**delete_old_mam_messages_status**](PurgeApi.md#delete_old_mam_messages_status) | **POST** /api/delete_old_mam_messages_status | Status of delete old MAM messages operation. |
| [**delete_old_messages**](PurgeApi.md#delete_old_messages) | **POST** /api/delete_old_messages | Delete offline messages older than DAYS. |
| [**delete_old_messages_batch**](PurgeApi.md#delete_old_messages_batch) | **POST** /api/delete_old_messages_batch | Delete offline messages older than DAYS. |
| [**delete_old_messages_status**](PurgeApi.md#delete_old_messages_status) | **POST** /api/delete_old_messages_status | Status of delete old offline messages operation. |
| [**delete_old_pubsub_items**](PurgeApi.md#delete_old_pubsub_items) | **POST** /api/delete_old_pubsub_items | Keep only NUMBER of PubSub items per node. |
| [**delete_old_push_sessions**](PurgeApi.md#delete_old_push_sessions) | **POST** /api/delete_old_push_sessions | Remove push sessions older than DAYS. |
| [**delete_old_users**](PurgeApi.md#delete_old_users) | **POST** /api/delete_old_users | Delete users that didn&#39;t log in last days, or that never logged. |


## abort_delete_old_mam_messages

> <AbortDeleteOldMamMessages200Response> abort_delete_old_mam_messages(abort_delete_old_mam_messages_request)

Abort currently running delete old MAM messages operation.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
abort_delete_old_mam_messages_request = EjabberdHttpClient::AbortDeleteOldMamMessagesRequest.new # AbortDeleteOldMamMessagesRequest |

begin
  # Abort currently running delete old MAM messages operation.
  result = api_instance.abort_delete_old_mam_messages(abort_delete_old_mam_messages_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->abort_delete_old_mam_messages: #{e}"
end
```

#### Using the abort_delete_old_mam_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbortDeleteOldMamMessages200Response>, Integer, Hash)> abort_delete_old_mam_messages_with_http_info(abort_delete_old_mam_messages_request)

```ruby
begin
  # Abort currently running delete old MAM messages operation.
  data, status_code, headers = api_instance.abort_delete_old_mam_messages_with_http_info(abort_delete_old_mam_messages_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbortDeleteOldMamMessages200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->abort_delete_old_mam_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abort_delete_old_mam_messages_request** | [**AbortDeleteOldMamMessagesRequest**](AbortDeleteOldMamMessagesRequest.md) |  |  |

### Return type

[**AbortDeleteOldMamMessages200Response**](AbortDeleteOldMamMessages200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## abort_delete_old_messages

> <AbortDeleteOldMamMessages200Response> abort_delete_old_messages(abort_delete_old_mam_messages_request)

Abort currently running delete old offline messages operation.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
abort_delete_old_mam_messages_request = EjabberdHttpClient::AbortDeleteOldMamMessagesRequest.new # AbortDeleteOldMamMessagesRequest |

begin
  # Abort currently running delete old offline messages operation.
  result = api_instance.abort_delete_old_messages(abort_delete_old_mam_messages_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->abort_delete_old_messages: #{e}"
end
```

#### Using the abort_delete_old_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbortDeleteOldMamMessages200Response>, Integer, Hash)> abort_delete_old_messages_with_http_info(abort_delete_old_mam_messages_request)

```ruby
begin
  # Abort currently running delete old offline messages operation.
  data, status_code, headers = api_instance.abort_delete_old_messages_with_http_info(abort_delete_old_mam_messages_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbortDeleteOldMamMessages200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->abort_delete_old_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abort_delete_old_mam_messages_request** | [**AbortDeleteOldMamMessagesRequest**](AbortDeleteOldMamMessagesRequest.md) |  |  |

### Return type

[**AbortDeleteOldMamMessages200Response**](AbortDeleteOldMamMessages200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_expired_messages

> delete_expired_messages

Delete expired offline messages from database.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new

begin
  # Delete expired offline messages from database.
  api_instance.delete_expired_messages
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_expired_messages: #{e}"
end
```

#### Using the delete_expired_messages_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_expired_messages_with_http_info

```ruby
begin
  # Delete expired offline messages from database.
  data, status_code, headers = api_instance.delete_expired_messages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_expired_messages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_expired_pubsub_items

> delete_expired_pubsub_items

Delete expired PubSub items.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new

begin
  # Delete expired PubSub items.
  api_instance.delete_expired_pubsub_items
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_expired_pubsub_items: #{e}"
end
```

#### Using the delete_expired_pubsub_items_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_expired_pubsub_items_with_http_info

```ruby
begin
  # Delete expired PubSub items.
  data, status_code, headers = api_instance.delete_expired_pubsub_items_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_expired_pubsub_items_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_old_mam_messages

> delete_old_mam_messages(delete_old_mam_messages_request)

Delete MAM messages older than DAYS.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_mam_messages_request = EjabberdHttpClient::DeleteOldMAMMessagesRequest.new # DeleteOldMAMMessagesRequest |

begin
  # Delete MAM messages older than DAYS.
  api_instance.delete_old_mam_messages(delete_old_mam_messages_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages: #{e}"
end
```

#### Using the delete_old_mam_messages_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_old_mam_messages_with_http_info(delete_old_mam_messages_request)

```ruby
begin
  # Delete MAM messages older than DAYS.
  data, status_code, headers = api_instance.delete_old_mam_messages_with_http_info(delete_old_mam_messages_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_mam_messages_request** | [**DeleteOldMAMMessagesRequest**](DeleteOldMAMMessagesRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_old_mam_messages_batch

> delete_old_mam_messages_batch(delete_old_mam_messages_batch_request)

Delete MAM messages older than DAYS in batches.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_mam_messages_batch_request = EjabberdHttpClient::DeleteOldMAMMessagesBatchRequest.new # DeleteOldMAMMessagesBatchRequest |

begin
  # Delete MAM messages older than DAYS in batches.
  api_instance.delete_old_mam_messages_batch(delete_old_mam_messages_batch_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages_batch: #{e}"
end
```

#### Using the delete_old_mam_messages_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_old_mam_messages_batch_with_http_info(delete_old_mam_messages_batch_request)

```ruby
begin
  # Delete MAM messages older than DAYS in batches.
  data, status_code, headers = api_instance.delete_old_mam_messages_batch_with_http_info(delete_old_mam_messages_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_mam_messages_batch_request** | [**DeleteOldMAMMessagesBatchRequest**](DeleteOldMAMMessagesBatchRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_old_mam_messages_status

> <AbortDeleteOldMamMessages200Response> delete_old_mam_messages_status(delete_old_mam_messages_status_request)

Status of delete old MAM messages operation.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_mam_messages_status_request = EjabberdHttpClient::DeleteOldMAMMessagesStatusRequest.new # DeleteOldMAMMessagesStatusRequest |

begin
  # Status of delete old MAM messages operation.
  result = api_instance.delete_old_mam_messages_status(delete_old_mam_messages_status_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages_status: #{e}"
end
```

#### Using the delete_old_mam_messages_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbortDeleteOldMamMessages200Response>, Integer, Hash)> delete_old_mam_messages_status_with_http_info(delete_old_mam_messages_status_request)

```ruby
begin
  # Status of delete old MAM messages operation.
  data, status_code, headers = api_instance.delete_old_mam_messages_status_with_http_info(delete_old_mam_messages_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbortDeleteOldMamMessages200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_mam_messages_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_mam_messages_status_request** | [**DeleteOldMAMMessagesStatusRequest**](DeleteOldMAMMessagesStatusRequest.md) |  |  |

### Return type

[**AbortDeleteOldMamMessages200Response**](AbortDeleteOldMamMessages200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_old_messages

> delete_old_messages(delete_old_messages_request)

Delete offline messages older than DAYS.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_messages_request = EjabberdHttpClient::DeleteOldMessagesRequest.new # DeleteOldMessagesRequest |

begin
  # Delete offline messages older than DAYS.
  api_instance.delete_old_messages(delete_old_messages_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages: #{e}"
end
```

#### Using the delete_old_messages_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_old_messages_with_http_info(delete_old_messages_request)

```ruby
begin
  # Delete offline messages older than DAYS.
  data, status_code, headers = api_instance.delete_old_messages_with_http_info(delete_old_messages_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_messages_request** | [**DeleteOldMessagesRequest**](DeleteOldMessagesRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_old_messages_batch

> String delete_old_messages_batch(delete_old_messages_batch_request)

Delete offline messages older than DAYS.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_messages_batch_request = EjabberdHttpClient::DeleteOldMessagesBatchRequest.new # DeleteOldMessagesBatchRequest |

begin
  # Delete offline messages older than DAYS.
  result = api_instance.delete_old_messages_batch(delete_old_messages_batch_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages_batch: #{e}"
end
```

#### Using the delete_old_messages_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_old_messages_batch_with_http_info(delete_old_messages_batch_request)

```ruby
begin
  # Delete offline messages older than DAYS.
  data, status_code, headers = api_instance.delete_old_messages_batch_with_http_info(delete_old_messages_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_messages_batch_request** | [**DeleteOldMessagesBatchRequest**](DeleteOldMessagesBatchRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_old_messages_status

> <AbortDeleteOldMamMessages200Response> delete_old_messages_status(delete_old_mam_messages_status_request)

Status of delete old offline messages operation.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_mam_messages_status_request = EjabberdHttpClient::DeleteOldMAMMessagesStatusRequest.new # DeleteOldMAMMessagesStatusRequest |

begin
  # Status of delete old offline messages operation.
  result = api_instance.delete_old_messages_status(delete_old_mam_messages_status_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages_status: #{e}"
end
```

#### Using the delete_old_messages_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbortDeleteOldMamMessages200Response>, Integer, Hash)> delete_old_messages_status_with_http_info(delete_old_mam_messages_status_request)

```ruby
begin
  # Status of delete old offline messages operation.
  data, status_code, headers = api_instance.delete_old_messages_status_with_http_info(delete_old_mam_messages_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbortDeleteOldMamMessages200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_messages_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_mam_messages_status_request** | [**DeleteOldMAMMessagesStatusRequest**](DeleteOldMAMMessagesStatusRequest.md) |  |  |

### Return type

[**AbortDeleteOldMamMessages200Response**](AbortDeleteOldMamMessages200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_old_pubsub_items

> Integer delete_old_pubsub_items(delete_old_pubsub_items_request)

Keep only NUMBER of PubSub items per node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_pubsub_items_request = EjabberdHttpClient::DeleteOldPubsubItemsRequest.new # DeleteOldPubsubItemsRequest |

begin
  # Keep only NUMBER of PubSub items per node.
  result = api_instance.delete_old_pubsub_items(delete_old_pubsub_items_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_pubsub_items: #{e}"
end
```

#### Using the delete_old_pubsub_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> delete_old_pubsub_items_with_http_info(delete_old_pubsub_items_request)

```ruby
begin
  # Keep only NUMBER of PubSub items per node.
  data, status_code, headers = api_instance.delete_old_pubsub_items_with_http_info(delete_old_pubsub_items_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_pubsub_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_pubsub_items_request** | [**DeleteOldPubsubItemsRequest**](DeleteOldPubsubItemsRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_old_push_sessions

> Integer delete_old_push_sessions(delete_old_messages_request)

Remove push sessions older than DAYS.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_messages_request = EjabberdHttpClient::DeleteOldMessagesRequest.new # DeleteOldMessagesRequest |

begin
  # Remove push sessions older than DAYS.
  result = api_instance.delete_old_push_sessions(delete_old_messages_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_push_sessions: #{e}"
end
```

#### Using the delete_old_push_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> delete_old_push_sessions_with_http_info(delete_old_messages_request)

```ruby
begin
  # Remove push sessions older than DAYS.
  data, status_code, headers = api_instance.delete_old_push_sessions_with_http_info(delete_old_messages_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_push_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_messages_request** | [**DeleteOldMessagesRequest**](DeleteOldMessagesRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_old_users

> String delete_old_users(delete_old_users_request)

Delete users that didn't log in last days, or that never logged.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PurgeApi.new
delete_old_users_request = EjabberdHttpClient::DeleteOldUsersRequest.new # DeleteOldUsersRequest |

begin
  # Delete users that didn't log in last days, or that never logged.
  result = api_instance.delete_old_users(delete_old_users_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_users: #{e}"
end
```

#### Using the delete_old_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_old_users_with_http_info(delete_old_users_request)

```ruby
begin
  # Delete users that didn't log in last days, or that never logged.
  data, status_code, headers = api_instance.delete_old_users_with_http_info(delete_old_users_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PurgeApi->delete_old_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_users_request** | [**DeleteOldUsersRequest**](DeleteOldUsersRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

