# EjabberdHttpClient::ErlangApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**compile**](ErlangApi.md#compile) | **POST** /api/compile | Recompile and reload Erlang source code file. |
| [**get_cookie**](ErlangApi.md#get_cookie) | **POST** /api/get_cookie | Get the Erlang cookie of this node. |
| [**restart_module**](ErlangApi.md#restart_module) | **POST** /api/restart_module | Stop an ejabberd module, reload code, and start. |


## compile

> compile(compile_request)

Recompile and reload Erlang source code file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ErlangApi.new
compile_request = EjabberdHttpClient::CompileRequest.new # CompileRequest |

begin
  # Recompile and reload Erlang source code file.
  api_instance.compile(compile_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->compile: #{e}"
end
```

#### Using the compile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> compile_with_http_info(compile_request)

```ruby
begin
  # Recompile and reload Erlang source code file.
  data, status_code, headers = api_instance.compile_with_http_info(compile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->compile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compile_request** | [**CompileRequest**](CompileRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_cookie

> <GetCookie200Response> get_cookie

Get the Erlang cookie of this node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ErlangApi.new

begin
  # Get the Erlang cookie of this node.
  result = api_instance.get_cookie
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->get_cookie: #{e}"
end
```

#### Using the get_cookie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCookie200Response>, Integer, Hash)> get_cookie_with_http_info

```ruby
begin
  # Get the Erlang cookie of this node.
  data, status_code, headers = api_instance.get_cookie_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCookie200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->get_cookie_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCookie200Response**](GetCookie200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restart_module

> <RestartModule200Response> restart_module(opts)

Stop an ejabberd module, reload code, and start.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ErlangApi.new
opts = {
  restart_module_request: EjabberdHttpClient::RestartModuleRequest.new # RestartModuleRequest |
}

begin
  # Stop an ejabberd module, reload code, and start.
  result = api_instance.restart_module(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->restart_module: #{e}"
end
```

#### Using the restart_module_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestartModule200Response>, Integer, Hash)> restart_module_with_http_info(opts)

```ruby
begin
  # Stop an ejabberd module, reload code, and start.
  data, status_code, headers = api_instance.restart_module_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestartModule200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ErlangApi->restart_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restart_module_request** | [**RestartModuleRequest**](RestartModuleRequest.md) |  | [optional] |

### Return type

[**RestartModule200Response**](RestartModule200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

