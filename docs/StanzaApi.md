# EjabberdHttpClient::StanzaApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**privacy_set**](StanzaApi.md#privacy_set) | **POST** /api/privacy_set | Send a IQ set privacy stanza for a local account. |
| [**send_message**](StanzaApi.md#send_message) | **POST** /api/send_message | Send a message to a local or remote bare of full JID. |
| [**send_stanza**](StanzaApi.md#send_stanza) | **POST** /api/send_stanza | Send a stanza; provide From JID and valid To JID. |
| [**send_stanza_c2_s**](StanzaApi.md#send_stanza_c2_s) | **POST** /api/send_stanza_c2s | Send a stanza from an existing C2S session. |


## privacy_set

> Integer privacy_set(opts)

Send a IQ set privacy stanza for a local account.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StanzaApi.new
opts = {
  privacy_set_request: EjabberdHttpClient::PrivacySetRequest.new # PrivacySetRequest |
}

begin
  # Send a IQ set privacy stanza for a local account.
  result = api_instance.privacy_set(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->privacy_set: #{e}"
end
```

#### Using the privacy_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> privacy_set_with_http_info(opts)

```ruby
begin
  # Send a IQ set privacy stanza for a local account.
  data, status_code, headers = api_instance.privacy_set_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->privacy_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **privacy_set_request** | [**PrivacySetRequest**](PrivacySetRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_message

> Integer send_message(opts)

Send a message to a local or remote bare of full JID.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StanzaApi.new
opts = {
  send_message_request: EjabberdHttpClient::SendMessageRequest.new # SendMessageRequest |
}

begin
  # Send a message to a local or remote bare of full JID.
  result = api_instance.send_message(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_message: #{e}"
end
```

#### Using the send_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> send_message_with_http_info(opts)

```ruby
begin
  # Send a message to a local or remote bare of full JID.
  data, status_code, headers = api_instance.send_message_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_message_request** | [**SendMessageRequest**](SendMessageRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_stanza

> Integer send_stanza(opts)

Send a stanza; provide From JID and valid To JID.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StanzaApi.new
opts = {
  send_stanza_request: EjabberdHttpClient::SendStanzaRequest.new # SendStanzaRequest |
}

begin
  # Send a stanza; provide From JID and valid To JID.
  result = api_instance.send_stanza(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_stanza: #{e}"
end
```

#### Using the send_stanza_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> send_stanza_with_http_info(opts)

```ruby
begin
  # Send a stanza; provide From JID and valid To JID.
  data, status_code, headers = api_instance.send_stanza_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_stanza_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_stanza_request** | [**SendStanzaRequest**](SendStanzaRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_stanza_c2_s

> Integer send_stanza_c2_s(opts)

Send a stanza from an existing C2S session.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::StanzaApi.new
opts = {
  send_stanza_c2_s_request: EjabberdHttpClient::SendStanzaC2SRequest.new # SendStanzaC2SRequest |
}

begin
  # Send a stanza from an existing C2S session.
  result = api_instance.send_stanza_c2_s(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_stanza_c2_s: #{e}"
end
```

#### Using the send_stanza_c2_s_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> send_stanza_c2_s_with_http_info(opts)

```ruby
begin
  # Send a stanza from an existing C2S session.
  data, status_code, headers = api_instance.send_stanza_c2_s_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling StanzaApi->send_stanza_c2_s_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_stanza_c2_s_request** | [**SendStanzaC2SRequest**](SendStanzaC2SRequest.md) |  | [optional] |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

