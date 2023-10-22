# EjabberdHttpClient::MucRoomApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_room_option**](MucRoomApi.md#change_room_option) | **POST** /api/change_room_option | Change an option in a MUC room. |
| [**create_room**](MucRoomApi.md#create_room) | **POST** /api/create_room | Create a MUC room using name@service in the given host. |
| [**create_room_with_options**](MucRoomApi.md#create_room_with_options) | **POST** /api/create_room_with_opts | Create a MUC room using name@service in the given host with specific options. |
| [**get_room_affiliation**](MucRoomApi.md#get_room_affiliation) | **POST** /api/get_room_affiliation | Get affiliation of a user in MUC room. |
| [**get_room_affiliations**](MucRoomApi.md#get_room_affiliations) | **POST** /api/get_room_affiliations | Get the list of affiliations of a MUC room. |
| [**get_room_history**](MucRoomApi.md#get_room_history) | **POST** /api/get_room_history | Get history of messages stored inside MUC room state. |
| [**get_room_occupants**](MucRoomApi.md#get_room_occupants) | **POST** /api/get_room_occupants | Get the list of occupants of a MUC room. |
| [**get_room_occupants_number**](MucRoomApi.md#get_room_occupants_number) | **POST** /api/get_room_occupants_number | Get the number of occupants of a MUC room. |
| [**get_room_options**](MucRoomApi.md#get_room_options) | **POST** /api/get_room_options | Get options from a MUC room. |
| [**get_subscribers**](MucRoomApi.md#get_subscribers) | **POST** /api/get_subscribers | List subscribers of a MUC conference. |
| [**send_direct_invitation**](MucRoomApi.md#send_direct_invitation) | **POST** /api/send_direct_invitation | Send a direct invitation to several destinations. |
| [**set_room_affiliation**](MucRoomApi.md#set_room_affiliation) | **POST** /api/set_room_affiliation | Change an affiliation in a MUC room. |
| [**subscribe_to_room**](MucRoomApi.md#subscribe_to_room) | **POST** /api/subscribe_room | Subscribe to a MUC conference. |
| [**subscribe_to_room_many**](MucRoomApi.md#subscribe_to_room_many) | **POST** /api/subscribe_room_many | Subscribe several users to a MUC conference. |
| [**unsubscribe_from_room**](MucRoomApi.md#unsubscribe_from_room) | **POST** /api/unsubscribe_room | Unsubscribe from a MUC conference. |


## change_room_option

> change_room_option(change_room_option_request)

Change an option in a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
change_room_option_request = EjabberdHttpClient::ChangeRoomOptionRequest.new # ChangeRoomOptionRequest |

begin
  # Change an option in a MUC room.
  api_instance.change_room_option(change_room_option_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->change_room_option: #{e}"
end
```

#### Using the change_room_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_room_option_with_http_info(change_room_option_request)

```ruby
begin
  # Change an option in a MUC room.
  data, status_code, headers = api_instance.change_room_option_with_http_info(change_room_option_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->change_room_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_room_option_request** | [**ChangeRoomOptionRequest**](ChangeRoomOptionRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_room

> create_room(create_room_request)

Create a MUC room using name@service in the given host.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
create_room_request = EjabberdHttpClient::CreateRoomRequest.new # CreateRoomRequest |

begin
  # Create a MUC room using name@service in the given host.
  api_instance.create_room(create_room_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->create_room: #{e}"
end
```

#### Using the create_room_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_room_with_http_info(create_room_request)

```ruby
begin
  # Create a MUC room using name@service in the given host.
  data, status_code, headers = api_instance.create_room_with_http_info(create_room_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->create_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_room_request** | [**CreateRoomRequest**](CreateRoomRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_room_with_options

> create_room_with_options(create_room_with_options_request)

Create a MUC room using name@service in the given host with specific options.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
create_room_with_options_request = EjabberdHttpClient::CreateRoomWithOptionsRequest.new # CreateRoomWithOptionsRequest |

begin
  # Create a MUC room using name@service in the given host with specific options.
  api_instance.create_room_with_options(create_room_with_options_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->create_room_with_options: #{e}"
end
```

#### Using the create_room_with_options_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_room_with_options_with_http_info(create_room_with_options_request)

```ruby
begin
  # Create a MUC room using name@service in the given host with specific options.
  data, status_code, headers = api_instance.create_room_with_options_with_http_info(create_room_with_options_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->create_room_with_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_room_with_options_request** | [**CreateRoomWithOptionsRequest**](CreateRoomWithOptionsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_room_affiliation

> <GetRoomAffiliation200Response> get_room_affiliation(get_room_affiliation_request)

Get affiliation of a user in MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliation_request = EjabberdHttpClient::GetRoomAffiliationRequest.new # GetRoomAffiliationRequest |

begin
  # Get affiliation of a user in MUC room.
  result = api_instance.get_room_affiliation(get_room_affiliation_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_affiliation: #{e}"
end
```

#### Using the get_room_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoomAffiliation200Response>, Integer, Hash)> get_room_affiliation_with_http_info(get_room_affiliation_request)

```ruby
begin
  # Get affiliation of a user in MUC room.
  data, status_code, headers = api_instance.get_room_affiliation_with_http_info(get_room_affiliation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoomAffiliation200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliation_request** | [**GetRoomAffiliationRequest**](GetRoomAffiliationRequest.md) |  |  |

### Return type

[**GetRoomAffiliation200Response**](GetRoomAffiliation200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_affiliations

> <Array<GetRoomAffiliations200ResponseInner>> get_room_affiliations(get_room_affiliations_request)

Get the list of affiliations of a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # Get the list of affiliations of a MUC room.
  result = api_instance.get_room_affiliations(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_affiliations: #{e}"
end
```

#### Using the get_room_affiliations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRoomAffiliations200ResponseInner>>, Integer, Hash)> get_room_affiliations_with_http_info(get_room_affiliations_request)

```ruby
begin
  # Get the list of affiliations of a MUC room.
  data, status_code, headers = api_instance.get_room_affiliations_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRoomAffiliations200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_affiliations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

[**Array&lt;GetRoomAffiliations200ResponseInner&gt;**](GetRoomAffiliations200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_history

> <Array<GetRoomHistory200ResponseInner>> get_room_history(get_room_affiliations_request)

Get history of messages stored inside MUC room state.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # Get history of messages stored inside MUC room state.
  result = api_instance.get_room_history(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_history: #{e}"
end
```

#### Using the get_room_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRoomHistory200ResponseInner>>, Integer, Hash)> get_room_history_with_http_info(get_room_affiliations_request)

```ruby
begin
  # Get history of messages stored inside MUC room state.
  data, status_code, headers = api_instance.get_room_history_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRoomHistory200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

[**Array&lt;GetRoomHistory200ResponseInner&gt;**](GetRoomHistory200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_occupants

> <Array<GetRoomOccupants200ResponseInner>> get_room_occupants(get_room_affiliations_request)

Get the list of occupants of a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # Get the list of occupants of a MUC room.
  result = api_instance.get_room_occupants(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_occupants: #{e}"
end
```

#### Using the get_room_occupants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRoomOccupants200ResponseInner>>, Integer, Hash)> get_room_occupants_with_http_info(get_room_affiliations_request)

```ruby
begin
  # Get the list of occupants of a MUC room.
  data, status_code, headers = api_instance.get_room_occupants_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRoomOccupants200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_occupants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

[**Array&lt;GetRoomOccupants200ResponseInner&gt;**](GetRoomOccupants200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_occupants_number

> <GetRoomOccupantsNumber200Response> get_room_occupants_number(get_room_affiliations_request)

Get the number of occupants of a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # Get the number of occupants of a MUC room.
  result = api_instance.get_room_occupants_number(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_occupants_number: #{e}"
end
```

#### Using the get_room_occupants_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoomOccupantsNumber200Response>, Integer, Hash)> get_room_occupants_number_with_http_info(get_room_affiliations_request)

```ruby
begin
  # Get the number of occupants of a MUC room.
  data, status_code, headers = api_instance.get_room_occupants_number_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoomOccupantsNumber200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_occupants_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

[**GetRoomOccupantsNumber200Response**](GetRoomOccupantsNumber200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_room_options

> <Array<GetRoomOptions200ResponseInner>> get_room_options(get_room_affiliations_request)

Get options from a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # Get options from a MUC room.
  result = api_instance.get_room_options(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_options: #{e}"
end
```

#### Using the get_room_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRoomOptions200ResponseInner>>, Integer, Hash)> get_room_options_with_http_info(get_room_affiliations_request)

```ruby
begin
  # Get options from a MUC room.
  data, status_code, headers = api_instance.get_room_options_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRoomOptions200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_room_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

[**Array&lt;GetRoomOptions200ResponseInner&gt;**](GetRoomOptions200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_subscribers

> Array&lt;String&gt; get_subscribers(get_room_affiliations_request)

List subscribers of a MUC conference.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
get_room_affiliations_request = EjabberdHttpClient::GetRoomAffiliationsRequest.new # GetRoomAffiliationsRequest |

begin
  # List subscribers of a MUC conference.
  result = api_instance.get_subscribers(get_room_affiliations_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_subscribers: #{e}"
end
```

#### Using the get_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> get_subscribers_with_http_info(get_room_affiliations_request)

```ruby
begin
  # List subscribers of a MUC conference.
  data, status_code, headers = api_instance.get_subscribers_with_http_info(get_room_affiliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->get_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_room_affiliations_request** | [**GetRoomAffiliationsRequest**](GetRoomAffiliationsRequest.md) |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_direct_invitation

> Integer send_direct_invitation(opts)

Send a direct invitation to several destinations.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
opts = {
  send_direct_invitation_request: EjabberdHttpClient::SendDirectInvitationRequest.new # SendDirectInvitationRequest |
}

begin
  # Send a direct invitation to several destinations.
  result = api_instance.send_direct_invitation(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->send_direct_invitation: #{e}"
end
```

#### Using the send_direct_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> send_direct_invitation_with_http_info(opts)

```ruby
begin
  # Send a direct invitation to several destinations.
  data, status_code, headers = api_instance.send_direct_invitation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->send_direct_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_direct_invitation_request** | [**SendDirectInvitationRequest**](SendDirectInvitationRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_room_affiliation

> Integer set_room_affiliation(opts)

Change an affiliation in a MUC room.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
opts = {
  set_room_affiliation_request: EjabberdHttpClient::SetRoomAffiliationRequest.new # SetRoomAffiliationRequest |
}

begin
  # Change an affiliation in a MUC room.
  result = api_instance.set_room_affiliation(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->set_room_affiliation: #{e}"
end
```

#### Using the set_room_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> set_room_affiliation_with_http_info(opts)

```ruby
begin
  # Change an affiliation in a MUC room.
  data, status_code, headers = api_instance.set_room_affiliation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->set_room_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_room_affiliation_request** | [**SetRoomAffiliationRequest**](SetRoomAffiliationRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subscribe_to_room

> Array&lt;String&gt; subscribe_to_room(opts)

Subscribe to a MUC conference.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
opts = {
  subscribe_to_room_request: EjabberdHttpClient::SubscribeToRoomRequest.new # SubscribeToRoomRequest |
}

begin
  # Subscribe to a MUC conference.
  result = api_instance.subscribe_to_room(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->subscribe_to_room: #{e}"
end
```

#### Using the subscribe_to_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> subscribe_to_room_with_http_info(opts)

```ruby
begin
  # Subscribe to a MUC conference.
  data, status_code, headers = api_instance.subscribe_to_room_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->subscribe_to_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscribe_to_room_request** | [**SubscribeToRoomRequest**](SubscribeToRoomRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subscribe_to_room_many

> Integer subscribe_to_room_many(opts)

Subscribe several users to a MUC conference.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
opts = {
  subscribe_to_room_many_request: EjabberdHttpClient::SubscribeToRoomManyRequest.new # SubscribeToRoomManyRequest |
}

begin
  # Subscribe several users to a MUC conference.
  result = api_instance.subscribe_to_room_many(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->subscribe_to_room_many: #{e}"
end
```

#### Using the subscribe_to_room_many_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> subscribe_to_room_many_with_http_info(opts)

```ruby
begin
  # Subscribe several users to a MUC conference.
  data, status_code, headers = api_instance.subscribe_to_room_many_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->subscribe_to_room_many_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscribe_to_room_many_request** | [**SubscribeToRoomManyRequest**](SubscribeToRoomManyRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unsubscribe_from_room

> Integer unsubscribe_from_room(opts)

Unsubscribe from a MUC conference.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MucRoomApi.new
opts = {
  unsubscribe_from_room_request: EjabberdHttpClient::UnsubscribeFromRoomRequest.new # UnsubscribeFromRoomRequest |
}

begin
  # Unsubscribe from a MUC conference.
  result = api_instance.unsubscribe_from_room(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->unsubscribe_from_room: #{e}"
end
```

#### Using the unsubscribe_from_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> unsubscribe_from_room_with_http_info(opts)

```ruby
begin
  # Unsubscribe from a MUC conference.
  data, status_code, headers = api_instance.unsubscribe_from_room_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MucRoomApi->unsubscribe_from_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsubscribe_from_room_request** | [**UnsubscribeFromRoomRequest**](UnsubscribeFromRoomRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

