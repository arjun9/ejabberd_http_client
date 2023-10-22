# EjabberdHttpClient::StatisticsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**connected_users_number**](StatisticsApi.md#connected_users_number) | **POST** /api/connected_users_number | Get the number of established sessions. |
| [**get_outgoing_s2s_number**](StatisticsApi.md#get_outgoing_s2s_number) | **POST** /api/outgoing_s2s_number | Number of outgoing s2s connections on the node. |
| [**get_stats**](StatisticsApi.md#get_stats) | **POST** /api/stats | Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes. |
| [**get_stats_host**](StatisticsApi.md#get_stats_host) | **POST** /api/stats_host | Get statistical value for this host - registeredusers, onlineusers. |
| [**get_status_num**](StatisticsApi.md#get_status_num) | **POST** /api/status_num | Number of logged users with a specific status. |
| [**get_status_num_host**](StatisticsApi.md#get_status_num_host) | **POST** /api/status_num_host | Number of logged users with a specific status in a host. |
| [**incoming_s2s_number**](StatisticsApi.md#incoming_s2s_number) | **POST** /api/incoming_s2s_number | Number of incoming s2s connections on the node. |


## connected_users_number

> <ConnectedUsersNumber200Response> connected_users_number

Get the number of established sessions.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StatisticsApi.new

begin
  # Get the number of established sessions.
  result = api_instance.connected_users_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->connected_users_number: #{e}"
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
  puts "Error when calling StatisticsApi->connected_users_number_with_http_info: #{e}"
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


## get_outgoing_s2s_number

> <GetOutgoingS2sNumber200Response> get_outgoing_s2s_number

Number of outgoing s2s connections on the node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StatisticsApi.new

begin
  # Number of outgoing s2s connections on the node.
  result = api_instance.get_outgoing_s2s_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_outgoing_s2s_number: #{e}"
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
  puts "Error when calling StatisticsApi->get_outgoing_s2s_number_with_http_info: #{e}"
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


## get_stats

> <GetStats200Response> get_stats(opts)

Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StatisticsApi.new
opts = {
  get_stats_request: EjabberdHttpClient::GetStatsRequest.new # GetStatsRequest |
}

begin
  # Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.
  result = api_instance.get_stats(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_stats: #{e}"
end
```

#### Using the get_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStats200Response>, Integer, Hash)> get_stats_with_http_info(opts)

```ruby
begin
  # Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.
  data, status_code, headers = api_instance.get_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStats200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_stats_request** | [**GetStatsRequest**](GetStatsRequest.md) |  | [optional] |

### Return type

[**GetStats200Response**](GetStats200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_stats_host

> <GetStats200Response> get_stats_host(opts)

Get statistical value for this host - registeredusers, onlineusers.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StatisticsApi.new
opts = {
  get_stats_host_request: EjabberdHttpClient::GetStatsHostRequest.new # GetStatsHostRequest |
}

begin
  # Get statistical value for this host - registeredusers, onlineusers.
  result = api_instance.get_stats_host(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_stats_host: #{e}"
end
```

#### Using the get_stats_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStats200Response>, Integer, Hash)> get_stats_host_with_http_info(opts)

```ruby
begin
  # Get statistical value for this host - registeredusers, onlineusers.
  data, status_code, headers = api_instance.get_stats_host_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStats200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_stats_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_stats_host_request** | [**GetStatsHostRequest**](GetStatsHostRequest.md) |  | [optional] |

### Return type

[**GetStats200Response**](GetStats200Response.md)

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

api_instance = EjabberdHttpClient::StatisticsApi.new
opts = {
  get_status_list_request: EjabberdHttpClient::GetStatusListRequest.new # GetStatusListRequest |
}

begin
  # Number of logged users with a specific status.
  result = api_instance.get_status_num(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_status_num: #{e}"
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
  puts "Error when calling StatisticsApi->get_status_num_with_http_info: #{e}"
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

api_instance = EjabberdHttpClient::StatisticsApi.new
opts = {
  get_status_list_host_request: EjabberdHttpClient::GetStatusListHostRequest.new # GetStatusListHostRequest |
}

begin
  # Number of logged users with a specific status in a host.
  result = api_instance.get_status_num_host(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->get_status_num_host: #{e}"
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
  puts "Error when calling StatisticsApi->get_status_num_host_with_http_info: #{e}"
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


## incoming_s2s_number

> <IncomingS2sNumber200Response> incoming_s2s_number

Number of incoming s2s connections on the node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StatisticsApi.new

begin
  # Number of incoming s2s connections on the node.
  result = api_instance.incoming_s2s_number
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StatisticsApi->incoming_s2s_number: #{e}"
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
  puts "Error when calling StatisticsApi->incoming_s2s_number_with_http_info: #{e}"
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

