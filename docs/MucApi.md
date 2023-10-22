# EjabberdHttpClient::MucApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rooms_file**](MucApi.md#create_rooms_file) | **POST** /api/create_rooms_file | Create the rooms indicated in file. |
| [**get_user_rooms**](MucApi.md#get_user_rooms) | **POST** /api/get_user_rooms | Get the list of rooms where this user is occupant. |
| [**get_user_subscriptions**](MucApi.md#get_user_subscriptions) | **POST** /api/get_user_subscriptions | Get the list of rooms where this user is subscribed. |
| [**list_muc_online_rooms**](MucApi.md#list_muc_online_rooms) | **POST** /api/muc_online_rooms | List existing rooms (&#39;global&#39; to get all vhosts). |
| [**list_muc_online_rooms_by_regex**](MucApi.md#list_muc_online_rooms_by_regex) | **POST** /api/muc_online_rooms_by_regex | List existing rooms (&#39;global&#39; to get all vhosts) by regex. |
| [**register_muc_nick**](MucApi.md#register_muc_nick) | **POST** /api/muc_register_nick | Register a nick to a User JID in a MUC service. |
| [**rooms_empty_destroy**](MucApi.md#rooms_empty_destroy) | **POST** /api/rooms_empty_destroy | Destroy the rooms that have no messages in archive. |
| [**rooms_empty_list**](MucApi.md#rooms_empty_list) | **POST** /api/rooms_empty_list | List the rooms that have no messages in archive. |
| [**rooms_unused_destroy**](MucApi.md#rooms_unused_destroy) | **POST** /api/rooms_unused_destroy | Destroy the rooms that are unused for many days in the service. |
| [**rooms_unused_list**](MucApi.md#rooms_unused_list) | **POST** /api/rooms_unused_list | List the rooms that are unused for many days in the service. |
| [**unregister_muc_nick**](MucApi.md#unregister_muc_nick) | **POST** /api/muc_unregister_nick | Unregister the nick registered by that account in the MUC service. |


## create_rooms_file

> create_rooms_file(create_rooms_file_request)

Create the rooms indicated in file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
create_rooms_file_request = EjabberdHttpClient::CreateRoomsFileRequest.new # CreateRoomsFileRequest |

begin
  # Create the rooms indicated in file.
  api_instance.create_rooms_file(create_rooms_file_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->create_rooms_file: #{e}"
end
```

#### Using the create_rooms_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_rooms_file_with_http_info(create_rooms_file_request)

```ruby
begin
  # Create the rooms indicated in file.
  data, status_code, headers = api_instance.create_rooms_file_with_http_info(create_rooms_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->create_rooms_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_rooms_file_request** | [**CreateRoomsFileRequest**](CreateRoomsFileRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_user_rooms

> Array&lt;String&gt; get_user_rooms(get_user_rooms_request)

Get the list of rooms where this user is occupant.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
get_user_rooms_request = EjabberdHttpClient::GetUserRoomsRequest.new # GetUserRoomsRequest |

begin
  # Get the list of rooms where this user is occupant.
  result = api_instance.get_user_rooms(get_user_rooms_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->get_user_rooms: #{e}"
end
```

#### Using the get_user_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_user_rooms_with_http_info(get_user_rooms_request)

```ruby
begin
  # Get the list of rooms where this user is occupant.
  data, status_code, headers = api_instance.get_user_rooms_with_http_info(get_user_rooms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->get_user_rooms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_user_rooms_request** | [**GetUserRoomsRequest**](GetUserRoomsRequest.md) |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_subscriptions

> <Array<GetUserSubscriptions200ResponseInner>> get_user_subscriptions(get_user_rooms_request)

Get the list of rooms where this user is subscribed.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
get_user_rooms_request = EjabberdHttpClient::GetUserRoomsRequest.new # GetUserRoomsRequest |

begin
  # Get the list of rooms where this user is subscribed.
  result = api_instance.get_user_subscriptions(get_user_rooms_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->get_user_subscriptions: #{e}"
end
```

#### Using the get_user_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUserSubscriptions200ResponseInner>>, Integer, Hash)> get_user_subscriptions_with_http_info(get_user_rooms_request)

```ruby
begin
  # Get the list of rooms where this user is subscribed.
  data, status_code, headers = api_instance.get_user_subscriptions_with_http_info(get_user_rooms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUserSubscriptions200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->get_user_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_user_rooms_request** | [**GetUserRoomsRequest**](GetUserRoomsRequest.md) |  |  |

### Return type

[**Array&lt;GetUserSubscriptions200ResponseInner&gt;**](GetUserSubscriptions200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_muc_online_rooms

> Array&lt;String&gt; list_muc_online_rooms(list_muc_online_rooms_request)

List existing rooms ('global' to get all vhosts).

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
list_muc_online_rooms_request = EjabberdHttpClient::ListMucOnlineRoomsRequest.new # ListMucOnlineRoomsRequest |

begin
  # List existing rooms ('global' to get all vhosts).
  result = api_instance.list_muc_online_rooms(list_muc_online_rooms_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->list_muc_online_rooms: #{e}"
end
```

#### Using the list_muc_online_rooms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_muc_online_rooms_with_http_info(list_muc_online_rooms_request)

```ruby
begin
  # List existing rooms ('global' to get all vhosts).
  data, status_code, headers = api_instance.list_muc_online_rooms_with_http_info(list_muc_online_rooms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->list_muc_online_rooms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_muc_online_rooms_request** | [**ListMucOnlineRoomsRequest**](ListMucOnlineRoomsRequest.md) |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_muc_online_rooms_by_regex

> <Array<ListMucOnlineRoomsByRegex200ResponseInner>> list_muc_online_rooms_by_regex(list_muc_online_rooms_by_regex_request)

List existing rooms ('global' to get all vhosts) by regex.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
list_muc_online_rooms_by_regex_request = EjabberdHttpClient::ListMucOnlineRoomsByRegexRequest.new # ListMucOnlineRoomsByRegexRequest |

begin
  # List existing rooms ('global' to get all vhosts) by regex.
  result = api_instance.list_muc_online_rooms_by_regex(list_muc_online_rooms_by_regex_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->list_muc_online_rooms_by_regex: #{e}"
end
```

#### Using the list_muc_online_rooms_by_regex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListMucOnlineRoomsByRegex200ResponseInner>>, Integer, Hash)> list_muc_online_rooms_by_regex_with_http_info(list_muc_online_rooms_by_regex_request)

```ruby
begin
  # List existing rooms ('global' to get all vhosts) by regex.
  data, status_code, headers = api_instance.list_muc_online_rooms_by_regex_with_http_info(list_muc_online_rooms_by_regex_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListMucOnlineRoomsByRegex200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->list_muc_online_rooms_by_regex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_muc_online_rooms_by_regex_request** | [**ListMucOnlineRoomsByRegexRequest**](ListMucOnlineRoomsByRegexRequest.md) |  |  |

### Return type

[**Array&lt;ListMucOnlineRoomsByRegex200ResponseInner&gt;**](ListMucOnlineRoomsByRegex200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## register_muc_nick

> register_muc_nick(register_muc_nick_request)

Register a nick to a User JID in a MUC service.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
register_muc_nick_request = EjabberdHttpClient::RegisterMucNickRequest.new # RegisterMucNickRequest |

begin
  # Register a nick to a User JID in a MUC service.
  api_instance.register_muc_nick(register_muc_nick_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->register_muc_nick: #{e}"
end
```

#### Using the register_muc_nick_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_muc_nick_with_http_info(register_muc_nick_request)

```ruby
begin
  # Register a nick to a User JID in a MUC service.
  data, status_code, headers = api_instance.register_muc_nick_with_http_info(register_muc_nick_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->register_muc_nick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_muc_nick_request** | [**RegisterMucNickRequest**](RegisterMucNickRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## rooms_empty_destroy

> Array&lt;String&gt; rooms_empty_destroy(opts)

Destroy the rooms that have no messages in archive.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
opts = {
  rooms_empty_destroy_request: EjabberdHttpClient::RoomsEmptyDestroyRequest.new # RoomsEmptyDestroyRequest |
}

begin
  # Destroy the rooms that have no messages in archive.
  result = api_instance.rooms_empty_destroy(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_empty_destroy: #{e}"
end
```

#### Using the rooms_empty_destroy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> rooms_empty_destroy_with_http_info(opts)

```ruby
begin
  # Destroy the rooms that have no messages in archive.
  data, status_code, headers = api_instance.rooms_empty_destroy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_empty_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_empty_destroy_request** | [**RoomsEmptyDestroyRequest**](RoomsEmptyDestroyRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rooms_empty_list

> Array&lt;String&gt; rooms_empty_list(opts)

List the rooms that have no messages in archive.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
opts = {
  rooms_empty_destroy_request: EjabberdHttpClient::RoomsEmptyDestroyRequest.new # RoomsEmptyDestroyRequest |
}

begin
  # List the rooms that have no messages in archive.
  result = api_instance.rooms_empty_list(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_empty_list: #{e}"
end
```

#### Using the rooms_empty_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> rooms_empty_list_with_http_info(opts)

```ruby
begin
  # List the rooms that have no messages in archive.
  data, status_code, headers = api_instance.rooms_empty_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_empty_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_empty_destroy_request** | [**RoomsEmptyDestroyRequest**](RoomsEmptyDestroyRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rooms_unused_destroy

> Array&lt;String&gt; rooms_unused_destroy(opts)

Destroy the rooms that are unused for many days in the service.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
opts = {
  rooms_unused_destroy_request: EjabberdHttpClient::RoomsUnusedDestroyRequest.new # RoomsUnusedDestroyRequest |
}

begin
  # Destroy the rooms that are unused for many days in the service.
  result = api_instance.rooms_unused_destroy(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_unused_destroy: #{e}"
end
```

#### Using the rooms_unused_destroy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> rooms_unused_destroy_with_http_info(opts)

```ruby
begin
  # Destroy the rooms that are unused for many days in the service.
  data, status_code, headers = api_instance.rooms_unused_destroy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_unused_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_unused_destroy_request** | [**RoomsUnusedDestroyRequest**](RoomsUnusedDestroyRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rooms_unused_list

> Array&lt;String&gt; rooms_unused_list(opts)

List the rooms that are unused for many days in the service.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
opts = {
  rooms_unused_destroy_request: EjabberdHttpClient::RoomsUnusedDestroyRequest.new # RoomsUnusedDestroyRequest |
}

begin
  # List the rooms that are unused for many days in the service.
  result = api_instance.rooms_unused_list(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_unused_list: #{e}"
end
```

#### Using the rooms_unused_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> rooms_unused_list_with_http_info(opts)

```ruby
begin
  # List the rooms that are unused for many days in the service.
  data, status_code, headers = api_instance.rooms_unused_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->rooms_unused_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_unused_destroy_request** | [**RoomsUnusedDestroyRequest**](RoomsUnusedDestroyRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_muc_nick

> unregister_muc_nick(unregister_muc_nick_request)

Unregister the nick registered by that account in the MUC service.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucApi.new
unregister_muc_nick_request = EjabberdHttpClient::UnregisterMucNickRequest.new # UnregisterMucNickRequest |

begin
  # Unregister the nick registered by that account in the MUC service.
  api_instance.unregister_muc_nick(unregister_muc_nick_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->unregister_muc_nick: #{e}"
end
```

#### Using the unregister_muc_nick_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unregister_muc_nick_with_http_info(unregister_muc_nick_request)

```ruby
begin
  # Unregister the nick registered by that account in the MUC service.
  data, status_code, headers = api_instance.unregister_muc_nick_with_http_info(unregister_muc_nick_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucApi->unregister_muc_nick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unregister_muc_nick_request** | [**UnregisterMucNickRequest**](UnregisterMucNickRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

