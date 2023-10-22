# EjabberdHttpClient::SharedRosterGroupApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**srg_create**](SharedRosterGroupApi.md#srg_create) | **POST** /api/srg_create | Create a Shared Roster Group. |
| [**srg_delete**](SharedRosterGroupApi.md#srg_delete) | **POST** /api/srg_delete | Delete a Shared Roster Group. |
| [**srg_get_info**](SharedRosterGroupApi.md#srg_get_info) | **POST** /api/srg_get_info | Get info of a Shared Roster Group. |
| [**srg_get_members**](SharedRosterGroupApi.md#srg_get_members) | **POST** /api/srg_get_members | Get members of a Shared Roster Group. |
| [**srg_list**](SharedRosterGroupApi.md#srg_list) | **POST** /api/srg_list | List the Shared Roster Groups in a host. |
| [**srg_user_add**](SharedRosterGroupApi.md#srg_user_add) | **POST** /api/srg_user_add | Add the JID user@host to a Shared Roster Group. |
| [**srg_user_del**](SharedRosterGroupApi.md#srg_user_del) | **POST** /api/srg_user_del | Delete the JID user@host from a Shared Roster Group. |


## srg_create

> Integer srg_create(opts)

Create a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_create_request: EjabberdHttpClient::SrgCreateRequest.new # SrgCreateRequest |
}

begin
  # Create a Shared Roster Group.
  result = api_instance.srg_create(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_create: #{e}"
end
```

#### Using the srg_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> srg_create_with_http_info(opts)

```ruby
begin
  # Create a Shared Roster Group.
  data, status_code, headers = api_instance.srg_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_create_request** | [**SrgCreateRequest**](SrgCreateRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_delete

> Integer srg_delete(opts)

Delete a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_delete_request: EjabberdHttpClient::SrgDeleteRequest.new # SrgDeleteRequest |
}

begin
  # Delete a Shared Roster Group.
  result = api_instance.srg_delete(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_delete: #{e}"
end
```

#### Using the srg_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> srg_delete_with_http_info(opts)

```ruby
begin
  # Delete a Shared Roster Group.
  data, status_code, headers = api_instance.srg_delete_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_delete_request** | [**SrgDeleteRequest**](SrgDeleteRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_get_info

> <Array<SrgGetInfo200ResponseInner>> srg_get_info(opts)

Get info of a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_delete_request: EjabberdHttpClient::SrgDeleteRequest.new # SrgDeleteRequest |
}

begin
  # Get info of a Shared Roster Group.
  result = api_instance.srg_get_info(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_get_info: #{e}"
end
```

#### Using the srg_get_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SrgGetInfo200ResponseInner>>, Integer, Hash)> srg_get_info_with_http_info(opts)

```ruby
begin
  # Get info of a Shared Roster Group.
  data, status_code, headers = api_instance.srg_get_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SrgGetInfo200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_get_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_delete_request** | [**SrgDeleteRequest**](SrgDeleteRequest.md) |  | [optional] |

### Return type

[**Array&lt;SrgGetInfo200ResponseInner&gt;**](SrgGetInfo200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_get_members

> Array&lt;String&gt; srg_get_members(opts)

Get members of a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_delete_request: EjabberdHttpClient::SrgDeleteRequest.new # SrgDeleteRequest |
}

begin
  # Get members of a Shared Roster Group.
  result = api_instance.srg_get_members(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_get_members: #{e}"
end
```

#### Using the srg_get_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> srg_get_members_with_http_info(opts)

```ruby
begin
  # Get members of a Shared Roster Group.
  data, status_code, headers = api_instance.srg_get_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_get_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_delete_request** | [**SrgDeleteRequest**](SrgDeleteRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_list

> Array&lt;String&gt; srg_list(opts)

List the Shared Roster Groups in a host.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  connected_users_v_host_request: EjabberdHttpClient::ConnectedUsersVHostRequest.new # ConnectedUsersVHostRequest |
}

begin
  # List the Shared Roster Groups in a host.
  result = api_instance.srg_list(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_list: #{e}"
end
```

#### Using the srg_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> srg_list_with_http_info(opts)

```ruby
begin
  # List the Shared Roster Groups in a host.
  data, status_code, headers = api_instance.srg_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connected_users_v_host_request** | [**ConnectedUsersVHostRequest**](ConnectedUsersVHostRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_user_add

> Integer srg_user_add(opts)

Add the JID user@host to a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_user_add_request: EjabberdHttpClient::SrgUserAddRequest.new # SrgUserAddRequest |
}

begin
  # Add the JID user@host to a Shared Roster Group.
  result = api_instance.srg_user_add(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_user_add: #{e}"
end
```

#### Using the srg_user_add_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> srg_user_add_with_http_info(opts)

```ruby
begin
  # Add the JID user@host to a Shared Roster Group.
  data, status_code, headers = api_instance.srg_user_add_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_user_add_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_user_add_request** | [**SrgUserAddRequest**](SrgUserAddRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## srg_user_del

> Integer srg_user_del(opts)

Delete the JID user@host from a Shared Roster Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SharedRosterGroupApi.new
opts = {
  srg_user_add_request: EjabberdHttpClient::SrgUserAddRequest.new # SrgUserAddRequest |
}

begin
  # Delete the JID user@host from a Shared Roster Group.
  result = api_instance.srg_user_del(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_user_del: #{e}"
end
```

#### Using the srg_user_del_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> srg_user_del_with_http_info(opts)

```ruby
begin
  # Delete the JID user@host from a Shared Roster Group.
  data, status_code, headers = api_instance.srg_user_del_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SharedRosterGroupApi->srg_user_del_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **srg_user_add_request** | [**SrgUserAddRequest**](SrgUserAddRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

