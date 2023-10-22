# EjabberdHttpClient::LogsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_loglevel**](LogsApi.md#get_loglevel) | **POST** /api/get_loglevel | Get the current log level. |
| [**reopen_log**](LogsApi.md#reopen_log) | **POST** /api/reopen_log | Reopen the log files after being renamed. |
| [**rotate_log**](LogsApi.md#rotate_log) | **POST** /api/rotate_log | Rotate the log files. |
| [**set_loglevel**](LogsApi.md#set_loglevel) | **POST** /api/set_loglevel | Set the loglevel. |


## get_loglevel

> <GetLoglevel200Response> get_loglevel

Get the current log level.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LogsApi.new

begin
  # Get the current log level.
  result = api_instance.get_loglevel
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->get_loglevel: #{e}"
end
```

#### Using the get_loglevel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoglevel200Response>, Integer, Hash)> get_loglevel_with_http_info

```ruby
begin
  # Get the current log level.
  data, status_code, headers = api_instance.get_loglevel_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoglevel200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->get_loglevel_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLoglevel200Response**](GetLoglevel200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reopen_log

> Integer reopen_log

Reopen the log files after being renamed.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LogsApi.new

begin
  # Reopen the log files after being renamed.
  result = api_instance.reopen_log
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->reopen_log: #{e}"
end
```

#### Using the reopen_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> reopen_log_with_http_info

```ruby
begin
  # Reopen the log files after being renamed.
  data, status_code, headers = api_instance.reopen_log_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->reopen_log_with_http_info: #{e}"
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


## rotate_log

> Integer rotate_log

Rotate the log files.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LogsApi.new

begin
  # Rotate the log files.
  result = api_instance.rotate_log
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->rotate_log: #{e}"
end
```

#### Using the rotate_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> rotate_log_with_http_info

```ruby
begin
  # Rotate the log files.
  data, status_code, headers = api_instance.rotate_log_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->rotate_log_with_http_info: #{e}"
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


## set_loglevel

> Integer set_loglevel(opts)

Set the loglevel.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LogsApi.new
opts = {
  set_loglevel_request: EjabberdHttpClient::SetLoglevelRequest.new # SetLoglevelRequest |
}

begin
  # Set the loglevel.
  result = api_instance.set_loglevel(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->set_loglevel: #{e}"
end
```

#### Using the set_loglevel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_loglevel_with_http_info(opts)

```ruby
begin
  # Set the loglevel.
  data, status_code, headers = api_instance.set_loglevel_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LogsApi->set_loglevel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_loglevel_request** | [**SetLoglevelRequest**](SetLoglevelRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

