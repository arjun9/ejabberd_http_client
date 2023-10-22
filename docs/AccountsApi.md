# EjabberdHttpClient::AccountsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ban_account**](AccountsApi.md#ban_account) | **POST** /api/ban_account | Ban an account by kicking sessions and setting a random password. |
| [**change_password**](AccountsApi.md#change_password) | **POST** /api/change_password | Change the password of an account. |
| [**check_account**](AccountsApi.md#check_account) | **POST** /api/check_account | Check if an account exists or not. |
| [**check_password**](AccountsApi.md#check_password) | **POST** /api/check_password | Check if a password is correct for a given user and host. |
| [**check_password_hash**](AccountsApi.md#check_password_hash) | **POST** /api/check_password_hash | Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application. |
| [**delete_old_users**](AccountsApi.md#delete_old_users) | **POST** /api/delete_old_users | Delete users that didn&#39;t log in last days, or that never logged. |
| [**register**](AccountsApi.md#register) | **POST** /api/register | Register a user. |
| [**registered_users**](AccountsApi.md#registered_users) | **POST** /api/registered_users | List all registered users in HOST. |
| [**unban_ip**](AccountsApi.md#unban_ip) | **POST** /api/unban_ip | Remove banned IP addresses from the fail2ban table. |
| [**unregister_user**](AccountsApi.md#unregister_user) | **POST** /api/unregister | Unregister a user. |


## ban_account

> ban_account(ban_account_request)

Ban an account by kicking sessions and setting a random password.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
ban_account_request = EjabberdHttpClient::BanAccountRequest.new # BanAccountRequest |

begin
  # Ban an account by kicking sessions and setting a random password.
  api_instance.ban_account(ban_account_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->ban_account: #{e}"
end
```

#### Using the ban_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ban_account_with_http_info(ban_account_request)

```ruby
begin
  # Ban an account by kicking sessions and setting a random password.
  data, status_code, headers = api_instance.ban_account_with_http_info(ban_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->ban_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ban_account_request** | [**BanAccountRequest**](BanAccountRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## change_password

> change_password(change_password_request)

Change the password of an account.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
change_password_request = EjabberdHttpClient::ChangePasswordRequest.new # ChangePasswordRequest |

begin
  # Change the password of an account.
  api_instance.change_password(change_password_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->change_password: #{e}"
end
```

#### Using the change_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_password_with_http_info(change_password_request)

```ruby
begin
  # Change the password of an account.
  data, status_code, headers = api_instance.change_password_with_http_info(change_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->change_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_password_request** | [**ChangePasswordRequest**](ChangePasswordRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## check_account

> check_account(check_account_request)

Check if an account exists or not.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
check_account_request = EjabberdHttpClient::CheckAccountRequest.new # CheckAccountRequest |

begin
  # Check if an account exists or not.
  api_instance.check_account(check_account_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_account: #{e}"
end
```

#### Using the check_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_account_with_http_info(check_account_request)

```ruby
begin
  # Check if an account exists or not.
  data, status_code, headers = api_instance.check_account_with_http_info(check_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_request** | [**CheckAccountRequest**](CheckAccountRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## check_password

> check_password(check_password_request)

Check if a password is correct for a given user and host.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
check_password_request = EjabberdHttpClient::CheckPasswordRequest.new # CheckPasswordRequest |

begin
  # Check if a password is correct for a given user and host.
  api_instance.check_password(check_password_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_password: #{e}"
end
```

#### Using the check_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_password_with_http_info(check_password_request)

```ruby
begin
  # Check if a password is correct for a given user and host.
  data, status_code, headers = api_instance.check_password_with_http_info(check_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_password_request** | [**CheckPasswordRequest**](CheckPasswordRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## check_password_hash

> check_password_hash(check_password_hash_request)

Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
check_password_hash_request = EjabberdHttpClient::CheckPasswordHashRequest.new # CheckPasswordHashRequest |

begin
  # Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.
  api_instance.check_password_hash(check_password_hash_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_password_hash: #{e}"
end
```

#### Using the check_password_hash_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_password_hash_with_http_info(check_password_hash_request)

```ruby
begin
  # Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.
  data, status_code, headers = api_instance.check_password_hash_with_http_info(check_password_hash_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->check_password_hash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_password_hash_request** | [**CheckPasswordHashRequest**](CheckPasswordHashRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_old_users

> String delete_old_users(delete_old_users_request)

Delete users that didn't log in last days, or that never logged.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
delete_old_users_request = EjabberdHttpClient::DeleteOldUsersRequest.new # DeleteOldUsersRequest |

begin
  # Delete users that didn't log in last days, or that never logged.
  result = api_instance.delete_old_users(delete_old_users_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->delete_old_users: #{e}"
end
```

#### Using the delete_old_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_old_users_with_http_info(delete_old_users_request)

```ruby
begin
  # Delete users that didn't log in last days, or that never logged.
  data, status_code, headers = api_instance.delete_old_users_with_http_info(delete_old_users_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->delete_old_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_old_users_request** | [**DeleteOldUsersRequest**](DeleteOldUsersRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## register

> String register(opts)

Register a user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
opts = {
  register_request: EjabberdHttpClient::RegisterRequest.new # RegisterRequest |
}

begin
  # Register a user.
  result = api_instance.register(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->register: #{e}"
end
```

#### Using the register_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> register_with_http_info(opts)

```ruby
begin
  # Register a user.
  data, status_code, headers = api_instance.register_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->register_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_request** | [**RegisterRequest**](RegisterRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## registered_users

> Array&lt;String&gt; registered_users(opts)

List all registered users in HOST.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
opts = {
  registered_users_request: EjabberdHttpClient::RegisteredUsersRequest.new # RegisteredUsersRequest |
}

begin
  # List all registered users in HOST.
  result = api_instance.registered_users(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->registered_users: #{e}"
end
```

#### Using the registered_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> registered_users_with_http_info(opts)

```ruby
begin
  # List all registered users in HOST.
  data, status_code, headers = api_instance.registered_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->registered_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registered_users_request** | [**RegisteredUsersRequest**](RegisteredUsersRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unban_ip

> <UnbanIp200Response> unban_ip(opts)

Remove banned IP addresses from the fail2ban table.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
opts = {
  unban_ip_request: EjabberdHttpClient::UnbanIpRequest.new # UnbanIpRequest |
}

begin
  # Remove banned IP addresses from the fail2ban table.
  result = api_instance.unban_ip(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->unban_ip: #{e}"
end
```

#### Using the unban_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnbanIp200Response>, Integer, Hash)> unban_ip_with_http_info(opts)

```ruby
begin
  # Remove banned IP addresses from the fail2ban table.
  data, status_code, headers = api_instance.unban_ip_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnbanIp200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->unban_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unban_ip_request** | [**UnbanIpRequest**](UnbanIpRequest.md) |  | [optional] |

### Return type

[**UnbanIp200Response**](UnbanIp200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_user

> String unregister_user(opts)

Unregister a user.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
opts = {
  unregister_user_request: EjabberdHttpClient::UnregisterUserRequest.new # UnregisterUserRequest |
}

begin
  # Unregister a user.
  result = api_instance.unregister_user(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->unregister_user: #{e}"
end
```

#### Using the unregister_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> unregister_user_with_http_info(opts)

```ruby
begin
  # Unregister a user.
  data, status_code, headers = api_instance.unregister_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AccountsApi->unregister_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unregister_user_request** | [**UnregisterUserRequest**](UnregisterUserRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

