# EjabberdHttpClient::RosterApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_roster_item**](RosterApi.md#add_roster_item) | **POST** /api/add_rosteritem | Add an item to a user&#39;s roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3). |
| [**get_roster**](RosterApi.md#get_roster) | **POST** /api/get_roster | Get list of contacts in a local user roster. |
| [**process_roster_items**](RosterApi.md#process_roster_items) | **POST** /api/process_rosteritems | List/delete rosteritems that match filter. |
| [**push_all_to_all**](RosterApi.md#push_all_to_all) | **POST** /api/push_alltoall | Add all the users to all the users of Host in Group. |
| [**push_roster**](RosterApi.md#push_roster) | **POST** /api/push_roster | Push template roster from file to a user. |
| [**push_roster_all**](RosterApi.md#push_roster_all) | **POST** /api/push_roster_all | Push template roster from file to all those users. |


## add_roster_item

> add_roster_item(add_roster_item_request)

Add an item to a user's roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
add_roster_item_request = EjabberdHttpClient::AddRosterItemRequest.new # AddRosterItemRequest |

begin
  # Add an item to a user's roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).
  api_instance.add_roster_item(add_roster_item_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->add_roster_item: #{e}"
end
```

#### Using the add_roster_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_roster_item_with_http_info(add_roster_item_request)

```ruby
begin
  # Add an item to a user's roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).
  data, status_code, headers = api_instance.add_roster_item_with_http_info(add_roster_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->add_roster_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_roster_item_request** | [**AddRosterItemRequest**](AddRosterItemRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_roster

> <Array<GetRoster200ResponseInner>> get_roster(get_offline_count_request)

Get list of contacts in a local user roster.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
get_offline_count_request = EjabberdHttpClient::GetOfflineCountRequest.new # GetOfflineCountRequest |

begin
  # Get list of contacts in a local user roster.
  result = api_instance.get_roster(get_offline_count_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->get_roster: #{e}"
end
```

#### Using the get_roster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRoster200ResponseInner>>, Integer, Hash)> get_roster_with_http_info(get_offline_count_request)

```ruby
begin
  # Get list of contacts in a local user roster.
  data, status_code, headers = api_instance.get_roster_with_http_info(get_offline_count_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRoster200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->get_roster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_offline_count_request** | [**GetOfflineCountRequest**](GetOfflineCountRequest.md) |  |  |

### Return type

[**Array&lt;GetRoster200ResponseInner&gt;**](GetRoster200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## process_roster_items

> <Array<ProcessRosterItems200ResponseInner>> process_roster_items(opts)

List/delete rosteritems that match filter.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
opts = {
  process_roster_items_request: EjabberdHttpClient::ProcessRosterItemsRequest.new # ProcessRosterItemsRequest |
}

begin
  # List/delete rosteritems that match filter.
  result = api_instance.process_roster_items(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->process_roster_items: #{e}"
end
```

#### Using the process_roster_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProcessRosterItems200ResponseInner>>, Integer, Hash)> process_roster_items_with_http_info(opts)

```ruby
begin
  # List/delete rosteritems that match filter.
  data, status_code, headers = api_instance.process_roster_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProcessRosterItems200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->process_roster_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **process_roster_items_request** | [**ProcessRosterItemsRequest**](ProcessRosterItemsRequest.md) |  | [optional] |

### Return type

[**Array&lt;ProcessRosterItems200ResponseInner&gt;**](ProcessRosterItems200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## push_all_to_all

> Integer push_all_to_all(opts)

Add all the users to all the users of Host in Group.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
opts = {
  push_all_to_all_request: EjabberdHttpClient::PushAllToAllRequest.new # PushAllToAllRequest |
}

begin
  # Add all the users to all the users of Host in Group.
  result = api_instance.push_all_to_all(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_all_to_all: #{e}"
end
```

#### Using the push_all_to_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> push_all_to_all_with_http_info(opts)

```ruby
begin
  # Add all the users to all the users of Host in Group.
  data, status_code, headers = api_instance.push_all_to_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_all_to_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **push_all_to_all_request** | [**PushAllToAllRequest**](PushAllToAllRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## push_roster

> Integer push_roster(opts)

Push template roster from file to a user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
opts = {
  push_roster_request: EjabberdHttpClient::PushRosterRequest.new # PushRosterRequest |
}

begin
  # Push template roster from file to a user.
  result = api_instance.push_roster(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_roster: #{e}"
end
```

#### Using the push_roster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> push_roster_with_http_info(opts)

```ruby
begin
  # Push template roster from file to a user.
  data, status_code, headers = api_instance.push_roster_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_roster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **push_roster_request** | [**PushRosterRequest**](PushRosterRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## push_roster_all

> Integer push_roster_all(opts)

Push template roster from file to all those users.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::RosterApi.new
opts = {
  push_roster_all_request: EjabberdHttpClient::PushRosterAllRequest.new # PushRosterAllRequest |
}

begin
  # Push template roster from file to all those users.
  result = api_instance.push_roster_all(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_roster_all: #{e}"
end
```

#### Using the push_roster_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> push_roster_all_with_http_info(opts)

```ruby
begin
  # Push template roster from file to all those users.
  data, status_code, headers = api_instance.push_roster_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling RosterApi->push_roster_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **push_roster_all_request** | [**PushRosterAllRequest**](PushRosterAllRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

