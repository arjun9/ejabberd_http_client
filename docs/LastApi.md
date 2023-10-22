# EjabberdHttpClient::LastApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_last**](LastApi.md#get_last) | **POST** /api/get_last | Get last activity information. |
| [**set_last**](LastApi.md#set_last) | **POST** /api/set_last | Set last activity information. |


## get_last

> <GetLast200Response> get_last(get_last_request)

Get last activity information.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LastApi.new
get_last_request = EjabberdHttpClient::GetLastRequest.new # GetLastRequest |

begin
  # Get last activity information.
  result = api_instance.get_last(get_last_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LastApi->get_last: #{e}"
end
```

#### Using the get_last_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLast200Response>, Integer, Hash)> get_last_with_http_info(get_last_request)

```ruby
begin
  # Get last activity information.
  data, status_code, headers = api_instance.get_last_with_http_info(get_last_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLast200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LastApi->get_last_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_last_request** | [**GetLastRequest**](GetLastRequest.md) |  |  |

### Return type

[**GetLast200Response**](GetLast200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_last

> Integer set_last(opts)

Set last activity information.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::LastApi.new
opts = {
  set_last_request: EjabberdHttpClient::SetLastRequest.new # SetLastRequest |
}

begin
  # Set last activity information.
  result = api_instance.set_last(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LastApi->set_last: #{e}"
end
```

#### Using the set_last_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_last_with_http_info(opts)

```ruby
begin
  # Set last activity information.
  data, status_code, headers = api_instance.set_last_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling LastApi->set_last_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_last_request** | [**SetLastRequest**](SetLastRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

