# EjabberdHttpClient::S2sApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_outgoing_s2s_number**](S2sApi.md#get_outgoing_s2s_number) | **POST** /api/outgoing_s2s_number | Number of outgoing s2s connections on the node. |
| [**incoming_s2s_number**](S2sApi.md#incoming_s2s_number) | **POST** /api/incoming_s2s_number | Number of incoming s2s connections on the node. |
| [**stop_s2s_connections**](S2sApi.md#stop_s2s_connections) | **POST** /api/stop_s2s_connections | Stop all s2s outgoing and incoming connections. |


## get_outgoing_s2s_number

> <GetOutgoingS2sNumber200Response> get_outgoing_s2s_number

Number of outgoing s2s connections on the node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::S2sApi.new

begin
  # Number of outgoing s2s connections on the node.
  result = api_instance.get_outgoing_s2s_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->get_outgoing_s2s_number: #{e}"
end
```

#### Using the get_outgoing_s2s_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOutgoingS2sNumber200Response>, Integer, Hash)> get_outgoing_s2s_number_with_http_info

```ruby
begin
  # Number of outgoing s2s connections on the node.
  data, status_code, headers = api_instance.get_outgoing_s2s_number_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOutgoingS2sNumber200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->get_outgoing_s2s_number_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetOutgoingS2sNumber200Response**](GetOutgoingS2sNumber200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## incoming_s2s_number

> <IncomingS2sNumber200Response> incoming_s2s_number

Number of incoming s2s connections on the node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::S2sApi.new

begin
  # Number of incoming s2s connections on the node.
  result = api_instance.incoming_s2s_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->incoming_s2s_number: #{e}"
end
```

#### Using the incoming_s2s_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingS2sNumber200Response>, Integer, Hash)> incoming_s2s_number_with_http_info

```ruby
begin
  # Number of incoming s2s connections on the node.
  data, status_code, headers = api_instance.incoming_s2s_number_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingS2sNumber200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->incoming_s2s_number_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncomingS2sNumber200Response**](IncomingS2sNumber200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_s2s_connections

> Integer stop_s2s_connections

Stop all s2s outgoing and incoming connections.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::S2sApi.new

begin
  # Stop all s2s outgoing and incoming connections.
  result = api_instance.stop_s2s_connections
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->stop_s2s_connections: #{e}"
end
```

#### Using the stop_s2s_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> stop_s2s_connections_with_http_info

```ruby
begin
  # Stop all s2s outgoing and incoming connections.
  data, status_code, headers = api_instance.stop_s2s_connections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling S2sApi->stop_s2s_connections_with_http_info: #{e}"
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

