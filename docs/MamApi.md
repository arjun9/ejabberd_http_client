# EjabberdHttpClient::MamApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**remove_mam_for_user**](MamApi.md#remove_mam_for_user) | **POST** /api/remove_mam_for_user | Remove mam archive for user. |
| [**remove_mam_for_user_with_peer**](MamApi.md#remove_mam_for_user_with_peer) | **POST** /api/remove_mam_for_user_with_peer | Remove mam archive for user with peer. |


## remove_mam_for_user

> String remove_mam_for_user(opts)

Remove mam archive for user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MamApi.new
opts = {
  get_offline_count_request: EjabberdHttpClient::GetOfflineCountRequest.new # GetOfflineCountRequest |
}

begin
  # Remove mam archive for user.
  result = api_instance.remove_mam_for_user(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MamApi->remove_mam_for_user: #{e}"
end
```

#### Using the remove_mam_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> remove_mam_for_user_with_http_info(opts)

```ruby
begin
  # Remove mam archive for user.
  data, status_code, headers = api_instance.remove_mam_for_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MamApi->remove_mam_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_offline_count_request** | [**GetOfflineCountRequest**](GetOfflineCountRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_mam_for_user_with_peer

> String remove_mam_for_user_with_peer(opts)

Remove mam archive for user with peer.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MamApi.new
opts = {
  remove_mam_for_user_with_peer_request: EjabberdHttpClient::RemoveMamForUserWithPeerRequest.new # RemoveMamForUserWithPeerRequest |
}

begin
  # Remove mam archive for user with peer.
  result = api_instance.remove_mam_for_user_with_peer(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MamApi->remove_mam_for_user_with_peer: #{e}"
end
```

#### Using the remove_mam_for_user_with_peer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> remove_mam_for_user_with_peer_with_http_info(opts)

```ruby
begin
  # Remove mam archive for user with peer.
  data, status_code, headers = api_instance.remove_mam_for_user_with_peer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MamApi->remove_mam_for_user_with_peer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remove_mam_for_user_with_peer_request** | [**RemoveMamForUserWithPeerRequest**](RemoveMamForUserWithPeerRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

