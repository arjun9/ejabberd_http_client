# EjabberdHttpClient::OauthApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_o_auth_client_implicit**](OauthApi.md#add_o_auth_client_implicit) | **POST** /api/oauth_add_client_implicit | Add OAUTH client_id with implicit grant type. |
| [**add_o_auth_client_password**](OauthApi.md#add_o_auth_client_password) | **POST** /api/oauth_add_client_password | Add OAUTH client_id with password grant type. |
| [**issue_o_auth_token**](OauthApi.md#issue_o_auth_token) | **POST** /api/oauth_issue_token | Issue an oauth token for the given jid. |
| [**list_o_auth_tokens**](OauthApi.md#list_o_auth_tokens) | **POST** /api/oauth_list_tokens | List OAuth tokens, their users and scopes, and their time until expiration. |
| [**remove_o_auth_client**](OauthApi.md#remove_o_auth_client) | **POST** /api/oauth_remove_client | Remove an OAuth client_id. |
| [**revoke_o_auth_token**](OauthApi.md#revoke_o_auth_token) | **POST** /api/oauth_revoke_token | Revoke an existing OAuth token. |


## add_o_auth_client_implicit

> add_o_auth_client_implicit(add_o_auth_client_implicit_request)

Add OAUTH client_id with implicit grant type.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new
add_o_auth_client_implicit_request = EjabberdHttpClient::AddOAuthClientImplicitRequest.new # AddOAuthClientImplicitRequest |

begin
  # Add OAUTH client_id with implicit grant type.
  api_instance.add_o_auth_client_implicit(add_o_auth_client_implicit_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->add_o_auth_client_implicit: #{e}"
end
```

#### Using the add_o_auth_client_implicit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_o_auth_client_implicit_with_http_info(add_o_auth_client_implicit_request)

```ruby
begin
  # Add OAUTH client_id with implicit grant type.
  data, status_code, headers = api_instance.add_o_auth_client_implicit_with_http_info(add_o_auth_client_implicit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->add_o_auth_client_implicit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_o_auth_client_implicit_request** | [**AddOAuthClientImplicitRequest**](AddOAuthClientImplicitRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_o_auth_client_password

> add_o_auth_client_password(add_o_auth_client_password_request)

Add OAUTH client_id with password grant type.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new
add_o_auth_client_password_request = EjabberdHttpClient::AddOAuthClientPasswordRequest.new # AddOAuthClientPasswordRequest |

begin
  # Add OAUTH client_id with password grant type.
  api_instance.add_o_auth_client_password(add_o_auth_client_password_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->add_o_auth_client_password: #{e}"
end
```

#### Using the add_o_auth_client_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_o_auth_client_password_with_http_info(add_o_auth_client_password_request)

```ruby
begin
  # Add OAUTH client_id with password grant type.
  data, status_code, headers = api_instance.add_o_auth_client_password_with_http_info(add_o_auth_client_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->add_o_auth_client_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_o_auth_client_password_request** | [**AddOAuthClientPasswordRequest**](AddOAuthClientPasswordRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## issue_o_auth_token

> <IssueOAuthToken200Response> issue_o_auth_token(issue_o_auth_token_request)

Issue an oauth token for the given jid.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new
issue_o_auth_token_request = EjabberdHttpClient::IssueOAuthTokenRequest.new # IssueOAuthTokenRequest |

begin
  # Issue an oauth token for the given jid.
  result = api_instance.issue_o_auth_token(issue_o_auth_token_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->issue_o_auth_token: #{e}"
end
```

#### Using the issue_o_auth_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueOAuthToken200Response>, Integer, Hash)> issue_o_auth_token_with_http_info(issue_o_auth_token_request)

```ruby
begin
  # Issue an oauth token for the given jid.
  data, status_code, headers = api_instance.issue_o_auth_token_with_http_info(issue_o_auth_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueOAuthToken200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->issue_o_auth_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_o_auth_token_request** | [**IssueOAuthTokenRequest**](IssueOAuthTokenRequest.md) |  |  |

### Return type

[**IssueOAuthToken200Response**](IssueOAuthToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_o_auth_tokens

> <Array<ListOAuthTokens200ResponseInner>> list_o_auth_tokens

List OAuth tokens, their users and scopes, and their time until expiration.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new

begin
  # List OAuth tokens, their users and scopes, and their time until expiration.
  result = api_instance.list_o_auth_tokens
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->list_o_auth_tokens: #{e}"
end
```

#### Using the list_o_auth_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListOAuthTokens200ResponseInner>>, Integer, Hash)> list_o_auth_tokens_with_http_info

```ruby
begin
  # List OAuth tokens, their users and scopes, and their time until expiration.
  data, status_code, headers = api_instance.list_o_auth_tokens_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListOAuthTokens200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->list_o_auth_tokens_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ListOAuthTokens200ResponseInner&gt;**](ListOAuthTokens200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_o_auth_client

> remove_o_auth_client(remove_o_auth_client_request)

Remove an OAuth client_id.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new
remove_o_auth_client_request = EjabberdHttpClient::RemoveOAuthClientRequest.new # RemoveOAuthClientRequest |

begin
  # Remove an OAuth client_id.
  api_instance.remove_o_auth_client(remove_o_auth_client_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->remove_o_auth_client: #{e}"
end
```

#### Using the remove_o_auth_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_o_auth_client_with_http_info(remove_o_auth_client_request)

```ruby
begin
  # Remove an OAuth client_id.
  data, status_code, headers = api_instance.remove_o_auth_client_with_http_info(remove_o_auth_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->remove_o_auth_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remove_o_auth_client_request** | [**RemoveOAuthClientRequest**](RemoveOAuthClientRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## revoke_o_auth_token

> revoke_o_auth_token(revoke_o_auth_token_request)

Revoke an existing OAuth token.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::OauthApi.new
revoke_o_auth_token_request = EjabberdHttpClient::RevokeOAuthTokenRequest.new # RevokeOAuthTokenRequest |

begin
  # Revoke an existing OAuth token.
  api_instance.revoke_o_auth_token(revoke_o_auth_token_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->revoke_o_auth_token: #{e}"
end
```

#### Using the revoke_o_auth_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_o_auth_token_with_http_info(revoke_o_auth_token_request)

```ruby
begin
  # Revoke an existing OAuth token.
  data, status_code, headers = api_instance.revoke_o_auth_token_with_http_info(revoke_o_auth_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling OauthApi->revoke_o_auth_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revoke_o_auth_token_request** | [**RevokeOAuthTokenRequest**](RevokeOAuthTokenRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

