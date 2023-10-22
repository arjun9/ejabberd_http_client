# EjabberdHttpClient::OfflineApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_offline_count**](OfflineApi.md#get_offline_count) | **POST** /api/get_offline_count | Get the number of unread offline messages. |


## get_offline_count

> <GetOfflineCount200Response> get_offline_count(get_offline_count_request)

Get the number of unread offline messages.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OfflineApi.new
get_offline_count_request = EjabberdHttpClient::GetOfflineCountRequest.new # GetOfflineCountRequest |

begin
  # Get the number of unread offline messages.
  result = api_instance.get_offline_count(get_offline_count_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OfflineApi->get_offline_count: #{e}"
end
```

#### Using the get_offline_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOfflineCount200Response>, Integer, Hash)> get_offline_count_with_http_info(get_offline_count_request)

```ruby
begin
  # Get the number of unread offline messages.
  data, status_code, headers = api_instance.get_offline_count_with_http_info(get_offline_count_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOfflineCount200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OfflineApi->get_offline_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_offline_count_request** | [**GetOfflineCountRequest**](GetOfflineCountRequest.md) |  |  |

### Return type

[**GetOfflineCount200Response**](GetOfflineCount200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

