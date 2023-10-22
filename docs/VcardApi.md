# EjabberdHttpClient::VcardApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vcard**](VcardApi.md#get_vcard) | **POST** /api/get_vcard | Get content from a vCard field. |
| [**get_vcard2**](VcardApi.md#get_vcard2) | **POST** /api/get_vcard2 | Get content from a vCard subfield. |
| [**get_vcard2_multi**](VcardApi.md#get_vcard2_multi) | **POST** /api/get_vcard2_multi | Get multiple contents from a vCard field. |
| [**set_nickname**](VcardApi.md#set_nickname) | **POST** /api/set_nickname | Set nickname in a user&#39;s vCard. |
| [**set_vcard**](VcardApi.md#set_vcard) | **POST** /api/set_vcard | Set content in a vCard field. |
| [**set_vcard2**](VcardApi.md#set_vcard2) | **POST** /api/set_vcard2 | Set content in a vCard subfield. |
| [**set_vcard2_multi**](VcardApi.md#set_vcard2_multi) | **POST** /api/set_vcard2_multi | Set multiple contents in a vCard subfield. |


## get_vcard

> <GetVcard200Response> get_vcard(get_vcard_request)

Get content from a vCard field.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
get_vcard_request = EjabberdHttpClient::GetVcardRequest.new # GetVcardRequest |

begin
  # Get content from a vCard field.
  result = api_instance.get_vcard(get_vcard_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard: #{e}"
end
```

#### Using the get_vcard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVcard200Response>, Integer, Hash)> get_vcard_with_http_info(get_vcard_request)

```ruby
begin
  # Get content from a vCard field.
  data, status_code, headers = api_instance.get_vcard_with_http_info(get_vcard_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVcard200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_vcard_request** | [**GetVcardRequest**](GetVcardRequest.md) |  |  |

### Return type

[**GetVcard200Response**](GetVcard200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_vcard2

> <GetVcard200Response> get_vcard2(get_vcard2_request)

Get content from a vCard subfield.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
get_vcard2_request = EjabberdHttpClient::GetVcard2Request.new # GetVcard2Request |

begin
  # Get content from a vCard subfield.
  result = api_instance.get_vcard2(get_vcard2_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard2: #{e}"
end
```

#### Using the get_vcard2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVcard200Response>, Integer, Hash)> get_vcard2_with_http_info(get_vcard2_request)

```ruby
begin
  # Get content from a vCard subfield.
  data, status_code, headers = api_instance.get_vcard2_with_http_info(get_vcard2_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVcard200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_vcard2_request** | [**GetVcard2Request**](GetVcard2Request.md) |  |  |

### Return type

[**GetVcard200Response**](GetVcard200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_vcard2_multi

> Array&lt;String&gt; get_vcard2_multi(get_vcard2_multi_request)

Get multiple contents from a vCard field.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
get_vcard2_multi_request = EjabberdHttpClient::GetVcard2MultiRequest.new # GetVcard2MultiRequest |

begin
  # Get multiple contents from a vCard field.
  result = api_instance.get_vcard2_multi(get_vcard2_multi_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard2_multi: #{e}"
end
```

#### Using the get_vcard2_multi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_vcard2_multi_with_http_info(get_vcard2_multi_request)

```ruby
begin
  # Get multiple contents from a vCard field.
  data, status_code, headers = api_instance.get_vcard2_multi_with_http_info(get_vcard2_multi_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->get_vcard2_multi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_vcard2_multi_request** | [**GetVcard2MultiRequest**](GetVcard2MultiRequest.md) |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_nickname

> Integer set_nickname(opts)

Set nickname in a user's vCard.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
opts = {
  set_nickname_request: EjabberdHttpClient::SetNicknameRequest.new # SetNicknameRequest |
}

begin
  # Set nickname in a user's vCard.
  result = api_instance.set_nickname(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_nickname: #{e}"
end
```

#### Using the set_nickname_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_nickname_with_http_info(opts)

```ruby
begin
  # Set nickname in a user's vCard.
  data, status_code, headers = api_instance.set_nickname_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_nickname_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_nickname_request** | [**SetNicknameRequest**](SetNicknameRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_vcard

> Integer set_vcard(opts)

Set content in a vCard field.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
opts = {
  set_vcard_request: EjabberdHttpClient::SetVcardRequest.new # SetVcardRequest |
}

begin
  # Set content in a vCard field.
  result = api_instance.set_vcard(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard: #{e}"
end
```

#### Using the set_vcard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_vcard_with_http_info(opts)

```ruby
begin
  # Set content in a vCard field.
  data, status_code, headers = api_instance.set_vcard_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_vcard_request** | [**SetVcardRequest**](SetVcardRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_vcard2

> Integer set_vcard2(opts)

Set content in a vCard subfield.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
opts = {
  set_vcard2_request: EjabberdHttpClient::SetVcard2Request.new # SetVcard2Request |
}

begin
  # Set content in a vCard subfield.
  result = api_instance.set_vcard2(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard2: #{e}"
end
```

#### Using the set_vcard2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_vcard2_with_http_info(opts)

```ruby
begin
  # Set content in a vCard subfield.
  data, status_code, headers = api_instance.set_vcard2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_vcard2_request** | [**SetVcard2Request**](SetVcard2Request.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_vcard2_multi

> Integer set_vcard2_multi(opts)

Set multiple contents in a vCard subfield.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::VcardApi.new
opts = {
  set_vcard2_multi_request: EjabberdHttpClient::SetVcard2MultiRequest.new # SetVcard2MultiRequest |
}

begin
  # Set multiple contents in a vCard subfield.
  result = api_instance.set_vcard2_multi(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard2_multi: #{e}"
end
```

#### Using the set_vcard2_multi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_vcard2_multi_with_http_info(opts)

```ruby
begin
  # Set multiple contents in a vCard subfield.
  data, status_code, headers = api_instance.set_vcard2_multi_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling VcardApi->set_vcard2_multi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_vcard2_multi_request** | [**SetVcard2MultiRequest**](SetVcard2MultiRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

