# EjabberdHttpClient::ServerApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_cache**](ServerApi.md#clear_cache) | **POST** /api/clear_cache | Clear database cache on all nodes. |
| [**gc**](ServerApi.md#gc) | **POST** /api/gc | Force full garbage collection. |
| [**get_status**](ServerApi.md#get_status) | **POST** /api/status | Get status of the ejabberd server. |
| [**halt**](ServerApi.md#halt) | **POST** /api/halt | Halt ejabberd abruptly with status code 1. |
| [**registered_vhosts**](ServerApi.md#registered_vhosts) | **POST** /api/registered_vhosts | List all registered vhosts in SERVER. |
| [**restart**](ServerApi.md#restart) | **POST** /api/restart | Restart ejabberd gracefully. |
| [**stop_ejabberd**](ServerApi.md#stop_ejabberd) | **POST** /api/stop | Stop Ejabberd gracefully. |
| [**stop_kindly**](ServerApi.md#stop_kindly) | **POST** /api/stop_kindly | Inform users and rooms, wait, and stop the server. |
| [**update_list**](ServerApi.md#update_list) | **POST** /api/update_list | List modified modules that can be updated. |
| [**update_module**](ServerApi.md#update_module) | **POST** /api/update | Update the given module or use the keyword &#39;all&#39;. |


## clear_cache

> clear_cache

Clear database cache on all nodes.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Clear database cache on all nodes.
  api_instance.clear_cache
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->clear_cache: #{e}"
end
```

#### Using the clear_cache_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clear_cache_with_http_info

```ruby
begin
  # Clear database cache on all nodes.
  data, status_code, headers = api_instance.clear_cache_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->clear_cache_with_http_info: #{e}"
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


## gc

> Integer gc

Force full garbage collection.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Force full garbage collection.
  result = api_instance.gc
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->gc: #{e}"
end
```

#### Using the gc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> gc_with_http_info

```ruby
begin
  # Force full garbage collection.
  data, status_code, headers = api_instance.gc_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->gc_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status

> String get_status

Get status of the ejabberd server.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Get status of the ejabberd server.
  result = api_instance.get_status
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Get status of the ejabberd server.
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## halt

> halt

Halt ejabberd abruptly with status code 1.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Halt ejabberd abruptly with status code 1.
  api_instance.halt
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->halt: #{e}"
end
```

#### Using the halt_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> halt_with_http_info

```ruby
begin
  # Halt ejabberd abruptly with status code 1.
  data, status_code, headers = api_instance.halt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->halt_with_http_info: #{e}"
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


## registered_vhosts

> Array&lt;String&gt; registered_vhosts

List all registered vhosts in SERVER.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # List all registered vhosts in SERVER.
  result = api_instance.registered_vhosts
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->registered_vhosts: #{e}"
end
```

#### Using the registered_vhosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> registered_vhosts_with_http_info

```ruby
begin
  # List all registered vhosts in SERVER.
  data, status_code, headers = api_instance.registered_vhosts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->registered_vhosts_with_http_info: #{e}"
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


## restart

> Integer restart

Restart ejabberd gracefully.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Restart ejabberd gracefully.
  result = api_instance.restart
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->restart: #{e}"
end
```

#### Using the restart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> restart_with_http_info

```ruby
begin
  # Restart ejabberd gracefully.
  data, status_code, headers = api_instance.restart_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->restart_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_ejabberd

> Integer stop_ejabberd

Stop Ejabberd gracefully.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # Stop Ejabberd gracefully.
  result = api_instance.stop_ejabberd
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->stop_ejabberd: #{e}"
end
```

#### Using the stop_ejabberd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> stop_ejabberd_with_http_info

```ruby
begin
  # Stop Ejabberd gracefully.
  data, status_code, headers = api_instance.stop_ejabberd_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->stop_ejabberd_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_kindly

> Integer stop_kindly(opts)

Inform users and rooms, wait, and stop the server.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new
opts = {
  stop_kindly_request: EjabberdHttpClient::StopKindlyRequest.new # StopKindlyRequest |
}

begin
  # Inform users and rooms, wait, and stop the server.
  result = api_instance.stop_kindly(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->stop_kindly: #{e}"
end
```

#### Using the stop_kindly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> stop_kindly_with_http_info(opts)

```ruby
begin
  # Inform users and rooms, wait, and stop the server.
  data, status_code, headers = api_instance.stop_kindly_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->stop_kindly_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stop_kindly_request** | [**StopKindlyRequest**](StopKindlyRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_list

> Array&lt;String&gt; update_list

List modified modules that can be updated.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new

begin
  # List modified modules that can be updated.
  result = api_instance.update_list
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> update_list_with_http_info

```ruby
begin
  # List modified modules that can be updated.
  data, status_code, headers = api_instance.update_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->update_list_with_http_info: #{e}"
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


## update_module

> String update_module(opts)

Update the given module or use the keyword 'all'.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ServerApi.new
opts = {
  check_module_request: EjabberdHttpClient::CheckModuleRequest.new # CheckModuleRequest |
}

begin
  # Update the given module or use the keyword 'all'.
  result = api_instance.update_module(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->update_module: #{e}"
end
```

#### Using the update_module_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> update_module_with_http_info(opts)

```ruby
begin
  # Update the given module or use the keyword 'all'.
  data, status_code, headers = api_instance.update_module_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ServerApi->update_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_module_request** | [**CheckModuleRequest**](CheckModuleRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

