# EjabberdHttpClient::SessionApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**connected_users**](SessionApi.md#connected_users) | **POST** /api/connected_users | List all established user sessions. |
| [**connected_users_info**](SessionApi.md#connected_users_info) | **POST** /api/connected_users_info | List all established sessions and their information. |
| [**connected_users_number**](SessionApi.md#connected_users_number) | **POST** /api/connected_users_number | Get the number of established sessions. |
| [**connected_users_v_host**](SessionApi.md#connected_users_v_host) | **POST** /api/connected_users_vhost | Get the list of established sessions in a vhost. |
| [**get_num_resources**](SessionApi.md#get_num_resources) | **POST** /api/num_resources | Get the number of resources of a user. |
| [**get_presence**](SessionApi.md#get_presence) | **POST** /api/get_presence | Retrieve the resource with highest priority, and its presence for a given user. |
| [**get_status_list**](SessionApi.md#get_status_list) | **POST** /api/status_list | List of logged users with this status. |
| [**get_status_list_host**](SessionApi.md#get_status_list_host) | **POST** /api/status_list_host | List of users logged in host with their statuses. |
| [**get_status_num**](SessionApi.md#get_status_num) | **POST** /api/status_num | Number of logged users with a specific status. |
| [**get_status_num_host**](SessionApi.md#get_status_num_host) | **POST** /api/status_num_host | Number of logged users with a specific status in a host. |
| [**get_user_sessions_info**](SessionApi.md#get_user_sessions_info) | **POST** /api/user_sessions_info | Get information about all sessions of a user. |
| [**kick_session**](SessionApi.md#kick_session) | **POST** /api/kick_session | Kick a user session. |
| [**kick_user**](SessionApi.md#kick_user) | **POST** /api/kick_user | Disconnect user&#39;s active sessions. |
| [**list_user_resources**](SessionApi.md#list_user_resources) | **POST** /api/user_resources | List a user&#39;s connected resources. |
| [**resource_num**](SessionApi.md#resource_num) | **POST** /api/resource_num | Resource string of a session number. |
| [**set_presence**](SessionApi.md#set_presence) | **POST** /api/set_presence | Set presence of a session. |


## connected_users

> Array&lt;String&gt; connected_users

List all established user sessions.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new

begin
  # List all established user sessions.
  result = api_instance.connected_users
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users: #{e}"
end
```

#### Using the connected_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> connected_users_with_http_info

```ruby
begin
  # List all established user sessions.
  data, status_code, headers = api_instance.connected_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connected_users_info

> <Array<ConnectedUsersInfo200ResponseInner>> connected_users_info

List all established sessions and their information.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new

begin
  # List all established sessions and their information.
  result = api_instance.connected_users_info
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_info: #{e}"
end
```

#### Using the connected_users_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConnectedUsersInfo200ResponseInner>>, Integer, Hash)> connected_users_info_with_http_info

```ruby
begin
  # List all established sessions and their information.
  data, status_code, headers = api_instance.connected_users_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConnectedUsersInfo200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ConnectedUsersInfo200ResponseInner&gt;**](ConnectedUsersInfo200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connected_users_number

> <ConnectedUsersNumber200Response> connected_users_number

Get the number of established sessions.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new

begin
  # Get the number of established sessions.
  result = api_instance.connected_users_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_number: #{e}"
end
```

#### Using the connected_users_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectedUsersNumber200Response>, Integer, Hash)> connected_users_number_with_http_info

```ruby
begin
  # Get the number of established sessions.
  data, status_code, headers = api_instance.connected_users_number_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectedUsersNumber200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_number_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ConnectedUsersNumber200Response**](ConnectedUsersNumber200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connected_users_v_host

> Array&lt;String&gt; connected_users_v_host(connected_users_v_host_request)

Get the list of established sessions in a vhost.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
connected_users_v_host_request = EjabberdHttpClient::ConnectedUsersVHostRequest.new # ConnectedUsersVHostRequest |

begin
  # Get the list of established sessions in a vhost.
  result = api_instance.connected_users_v_host(connected_users_v_host_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_v_host: #{e}"
end
```

#### Using the connected_users_v_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> connected_users_v_host_with_http_info(connected_users_v_host_request)

```ruby
begin
  # Get the list of established sessions in a vhost.
  data, status_code, headers = api_instance.connected_users_v_host_with_http_info(connected_users_v_host_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->connected_users_v_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connected_users_v_host_request** | [**ConnectedUsersVHostRequest**](ConnectedUsersVHostRequest.md) |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_num_resources

> <GetNumResources200Response> get_num_resources(get_last_request)

Get the number of resources of a user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
get_last_request = EjabberdHttpClient::GetLastRequest.new # GetLastRequest |

begin
  # Get the number of resources of a user.
  result = api_instance.get_num_resources(get_last_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_num_resources: #{e}"
end
```

#### Using the get_num_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNumResources200Response>, Integer, Hash)> get_num_resources_with_http_info(get_last_request)

```ruby
begin
  # Get the number of resources of a user.
  data, status_code, headers = api_instance.get_num_resources_with_http_info(get_last_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNumResources200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_num_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  |  |

### Return type

[**GetNumResources200Response**](GetNumResources200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_presence

> <GetPresence200Response> get_presence(get_last_request)

Retrieve the resource with highest priority, and its presence for a given user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
get_last_request = EjabberdHttpClient::GetLastRequest.new # GetLastRequest |

begin
  # Retrieve the resource with highest priority, and its presence for a given user.
  result = api_instance.get_presence(get_last_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_presence: #{e}"
end
```

#### Using the get_presence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPresence200Response>, Integer, Hash)> get_presence_with_http_info(get_last_request)

```ruby
begin
  # Retrieve the resource with highest priority, and its presence for a given user.
  data, status_code, headers = api_instance.get_presence_with_http_info(get_last_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPresence200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_presence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  |  |

### Return type

[**GetPresence200Response**](GetPresence200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_status_list

> <Array<GetStatusList200ResponseInner>> get_status_list(opts)

List of logged users with this status.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_status_list_request: EjabberdHttpClient::GetStatusListRequest.new # GetStatusListRequest |
}

begin
  # List of logged users with this status.
  result = api_instance.get_status_list(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_list: #{e}"
end
```

#### Using the get_status_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetStatusList200ResponseInner>>, Integer, Hash)> get_status_list_with_http_info(opts)

```ruby
begin
  # List of logged users with this status.
  data, status_code, headers = api_instance.get_status_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetStatusList200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_status_list_request** | [**GetStatusListRequest**](GetStatusListRequest.md) |  | [optional] |

### Return type

[**Array&lt;GetStatusList200ResponseInner&gt;**](GetStatusList200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_status_list_host

> <Array<GetStatusList200ResponseInner>> get_status_list_host(opts)

List of users logged in host with their statuses.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_status_list_host_request: EjabberdHttpClient::GetStatusListHostRequest.new # GetStatusListHostRequest |
}

begin
  # List of users logged in host with their statuses.
  result = api_instance.get_status_list_host(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_list_host: #{e}"
end
```

#### Using the get_status_list_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetStatusList200ResponseInner>>, Integer, Hash)> get_status_list_host_with_http_info(opts)

```ruby
begin
  # List of users logged in host with their statuses.
  data, status_code, headers = api_instance.get_status_list_host_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetStatusList200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_list_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_status_list_host_request** | [**GetStatusListHostRequest**](GetStatusListHostRequest.md) |  | [optional] |

### Return type

[**Array&lt;GetStatusList200ResponseInner&gt;**](GetStatusList200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_status_num

> <GetStatusNum200Response> get_status_num(opts)

Number of logged users with a specific status.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_status_list_request: EjabberdHttpClient::GetStatusListRequest.new # GetStatusListRequest |
}

begin
  # Number of logged users with a specific status.
  result = api_instance.get_status_num(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_num: #{e}"
end
```

#### Using the get_status_num_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusNum200Response>, Integer, Hash)> get_status_num_with_http_info(opts)

```ruby
begin
  # Number of logged users with a specific status.
  data, status_code, headers = api_instance.get_status_num_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusNum200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_num_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_status_list_request** | [**GetStatusListRequest**](GetStatusListRequest.md) |  | [optional] |

### Return type

[**GetStatusNum200Response**](GetStatusNum200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_status_num_host

> <GetStatusNum200Response> get_status_num_host(opts)

Number of logged users with a specific status in a host.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_status_list_host_request: EjabberdHttpClient::GetStatusListHostRequest.new # GetStatusListHostRequest |
}

begin
  # Number of logged users with a specific status in a host.
  result = api_instance.get_status_num_host(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_num_host: #{e}"
end
```

#### Using the get_status_num_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusNum200Response>, Integer, Hash)> get_status_num_host_with_http_info(opts)

```ruby
begin
  # Number of logged users with a specific status in a host.
  data, status_code, headers = api_instance.get_status_num_host_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusNum200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_status_num_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_status_list_host_request** | [**GetStatusListHostRequest**](GetStatusListHostRequest.md) |  | [optional] |

### Return type

[**GetStatusNum200Response**](GetStatusNum200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_sessions_info

> <Array<GetUserSessionsInfo200ResponseInner>> get_user_sessions_info(opts)

Get information about all sessions of a user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_last_request: EjabberdHttpClient::GetLastRequest.new # GetLastRequest |
}

begin
  # Get information about all sessions of a user.
  result = api_instance.get_user_sessions_info(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_user_sessions_info: #{e}"
end
```

#### Using the get_user_sessions_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUserSessionsInfo200ResponseInner>>, Integer, Hash)> get_user_sessions_info_with_http_info(opts)

```ruby
begin
  # Get information about all sessions of a user.
  data, status_code, headers = api_instance.get_user_sessions_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUserSessionsInfo200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->get_user_sessions_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  | [optional] |

### Return type

[**Array&lt;GetUserSessionsInfo200ResponseInner&gt;**](GetUserSessionsInfo200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## kick_session

> kick_session(kick_session_request)

Kick a user session.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
kick_session_request = EjabberdHttpClient::KickSessionRequest.new # KickSessionRequest |

begin
  # Kick a user session.
  api_instance.kick_session(kick_session_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->kick_session: #{e}"
end
```

#### Using the kick_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> kick_session_with_http_info(kick_session_request)

```ruby
begin
  # Kick a user session.
  data, status_code, headers = api_instance.kick_session_with_http_info(kick_session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->kick_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kick_session_request** | [**KickSessionRequest**](KickSessionRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## kick_user

> <KickUser200Response> kick_user(get_last_request)

Disconnect user's active sessions.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
get_last_request = EjabberdHttpClient::GetLastRequest.new # GetLastRequest |

begin
  # Disconnect user's active sessions.
  result = api_instance.kick_user(get_last_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->kick_user: #{e}"
end
```

#### Using the kick_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KickUser200Response>, Integer, Hash)> kick_user_with_http_info(get_last_request)

```ruby
begin
  # Disconnect user's active sessions.
  data, status_code, headers = api_instance.kick_user_with_http_info(get_last_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KickUser200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->kick_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  |  |

### Return type

[**KickUser200Response**](KickUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_resources

> Array&lt;String&gt; list_user_resources(opts)

List a user's connected resources.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  get_last_request: EjabberdHttpClient::GetLastRequest.new # GetLastRequest |
}

begin
  # List a user's connected resources.
  result = api_instance.list_user_resources(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->list_user_resources: #{e}"
end
```

#### Using the list_user_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_user_resources_with_http_info(opts)

```ruby
begin
  # List a user's connected resources.
  data, status_code, headers = api_instance.list_user_resources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->list_user_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resource_num

> <ResourceNum200Response> resource_num(opts)

Resource string of a session number.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  resource_num_request: EjabberdHttpClient::ResourceNumRequest.new # ResourceNumRequest |
}

begin
  # Resource string of a session number.
  result = api_instance.resource_num(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->resource_num: #{e}"
end
```

#### Using the resource_num_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceNum200Response>, Integer, Hash)> resource_num_with_http_info(opts)

```ruby
begin
  # Resource string of a session number.
  data, status_code, headers = api_instance.resource_num_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceNum200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->resource_num_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_num_request** | [**ResourceNumRequest**](ResourceNumRequest.md) |  | [optional] |

### Return type

[**ResourceNum200Response**](ResourceNum200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_presence

> Integer set_presence(opts)

Set presence of a session.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SessionApi.new
opts = {
  set_presence_request: EjabberdHttpClient::SetPresenceRequest.new # SetPresenceRequest |
}

begin
  # Set presence of a session.
  result = api_instance.set_presence(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->set_presence: #{e}"
end
```

#### Using the set_presence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_presence_with_http_info(opts)

```ruby
begin
  # Set presence of a session.
  data, status_code, headers = api_instance.set_presence_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SessionApi->set_presence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_presence_request** | [**SetPresenceRequest**](SetPresenceRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

