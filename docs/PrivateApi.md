# EjabberdHttpClient::PrivateApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bookmarks_to_pep**](PrivateApi.md#bookmarks_to_pep) | **POST** /api/bookmarks_to_pep | Export private XML storage bookmarks to PEP. |
| [**private_get**](PrivateApi.md#private_get) | **POST** /api/private_get | Get some information from a user private storage. |
| [**private_set**](PrivateApi.md#private_set) | **POST** /api/private_set | Set to the user private storage. |


## bookmarks_to_pep

> bookmarks_to_pep(bookmarks_to_pep_request)

Export private XML storage bookmarks to PEP.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PrivateApi.new
bookmarks_to_pep_request = EjabberdHttpClient::BookmarksToPepRequest.new # BookmarksToPepRequest |

begin
  # Export private XML storage bookmarks to PEP.
  api_instance.bookmarks_to_pep(bookmarks_to_pep_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->bookmarks_to_pep: #{e}"
end
```

#### Using the bookmarks_to_pep_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> bookmarks_to_pep_with_http_info(bookmarks_to_pep_request)

```ruby
begin
  # Export private XML storage bookmarks to PEP.
  data, status_code, headers = api_instance.bookmarks_to_pep_with_http_info(bookmarks_to_pep_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->bookmarks_to_pep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmarks_to_pep_request** | [**BookmarksToPepRequest**](BookmarksToPepRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain


## private_get

> <ImportDir200Response> private_get(opts)

Get some information from a user private storage.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PrivateApi.new
opts = {
  private_get_request: EjabberdHttpClient::PrivateGetRequest.new # PrivateGetRequest |
}

begin
  # Get some information from a user private storage.
  result = api_instance.private_get(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->private_get: #{e}"
end
```

#### Using the private_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> private_get_with_http_info(opts)

```ruby
begin
  # Get some information from a user private storage.
  data, status_code, headers = api_instance.private_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->private_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_get_request** | [**PrivateGetRequest**](PrivateGetRequest.md) |  | [optional] |

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_set

> Integer private_set(opts)

Set to the user private storage.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::PrivateApi.new
opts = {
  private_set_request: EjabberdHttpClient::PrivateSetRequest.new # PrivateSetRequest |
}

begin
  # Set to the user private storage.
  result = api_instance.private_set(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->private_set: #{e}"
end
```

#### Using the private_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> private_set_with_http_info(opts)

```ruby
begin
  # Set to the user private storage.
  data, status_code, headers = api_instance.private_set_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling PrivateApi->private_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_set_request** | [**PrivateSetRequest**](PrivateSetRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

