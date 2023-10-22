# EjabberdHttpClient::ClusterApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**join_cluster**](ClusterApi.md#join_cluster) | **POST** /api/join_cluster | Join this node into the cluster handled by Node. |
| [**leave_cluster**](ClusterApi.md#leave_cluster) | **POST** /api/leave_cluster | Remove and shutdown Node from the running cluster. |
| [**list_cluster**](ClusterApi.md#list_cluster) | **POST** /api/list_cluster | List nodes that are part of the cluster handled by Node. |
| [**set_master**](ClusterApi.md#set_master) | **POST** /api/set_master | Set master node of the clustered Mnesia tables. |


## join_cluster

> join_cluster(join_cluster_request)

Join this node into the cluster handled by Node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ClusterApi.new
join_cluster_request = EjabberdHttpClient::JoinClusterRequest.new # JoinClusterRequest |

begin
  # Join this node into the cluster handled by Node.
  api_instance.join_cluster(join_cluster_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->join_cluster: #{e}"
end
```

#### Using the join_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> join_cluster_with_http_info(join_cluster_request)

```ruby
begin
  # Join this node into the cluster handled by Node.
  data, status_code, headers = api_instance.join_cluster_with_http_info(join_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->join_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **join_cluster_request** | [**JoinClusterRequest**](JoinClusterRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## leave_cluster

> leave_cluster(leave_cluster_request)

Remove and shutdown Node from the running cluster.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ClusterApi.new
leave_cluster_request = EjabberdHttpClient::LeaveClusterRequest.new # LeaveClusterRequest |

begin
  # Remove and shutdown Node from the running cluster.
  api_instance.leave_cluster(leave_cluster_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->leave_cluster: #{e}"
end
```

#### Using the leave_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> leave_cluster_with_http_info(leave_cluster_request)

```ruby
begin
  # Remove and shutdown Node from the running cluster.
  data, status_code, headers = api_instance.leave_cluster_with_http_info(leave_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->leave_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **leave_cluster_request** | [**LeaveClusterRequest**](LeaveClusterRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## list_cluster

> Array&lt;String&gt; list_cluster

List nodes that are part of the cluster handled by Node.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ClusterApi.new

begin
  # List nodes that are part of the cluster handled by Node.
  result = api_instance.list_cluster
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->list_cluster: #{e}"
end
```

#### Using the list_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_cluster_with_http_info

```ruby
begin
  # List nodes that are part of the cluster handled by Node.
  data, status_code, headers = api_instance.list_cluster_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->list_cluster_with_http_info: #{e}"
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


## set_master

> String set_master(opts)

Set master node of the clustered Mnesia tables.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ClusterApi.new
opts = {
  set_master_request: EjabberdHttpClient::SetMasterRequest.new # SetMasterRequest |
}

begin
  # Set master node of the clustered Mnesia tables.
  result = api_instance.set_master(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->set_master: #{e}"
end
```

#### Using the set_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> set_master_with_http_info(opts)

```ruby
begin
  # Set master node of the clustered Mnesia tables.
  data, status_code, headers = api_instance.set_master_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ClusterApi->set_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_master_request** | [**SetMasterRequest**](SetMasterRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

