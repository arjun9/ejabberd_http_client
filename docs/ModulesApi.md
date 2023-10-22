# EjabberdHttpClient::ModulesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_module**](ModulesApi.md#check_module) | **POST** /api/module_check | Check the contributed module repository compliance. |
| [**install_module**](ModulesApi.md#install_module) | **POST** /api/module_install | Compile, install and start an available contributed module. |
| [**list_available_modules**](ModulesApi.md#list_available_modules) | **POST** /api/modules_available | List the contributed modules available to install. |
| [**list_installed_modules**](ModulesApi.md#list_installed_modules) | **POST** /api/modules_installed | List the contributed modules already installed. |
| [**uninstall_module**](ModulesApi.md#uninstall_module) | **POST** /api/module_uninstall | Uninstall a contributed module. |
| [**update_module_specs**](ModulesApi.md#update_module_specs) | **POST** /api/modules_update_specs | Update the module source code from Git. |
| [**upgrade_module**](ModulesApi.md#upgrade_module) | **POST** /api/module_upgrade | Upgrade the running code of an installed module. |


## check_module

> check_module(check_module_request)

Check the contributed module repository compliance.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new
check_module_request = EjabberdHttpClient::CheckModuleRequest.new # CheckModuleRequest |

begin
  # Check the contributed module repository compliance.
  api_instance.check_module(check_module_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->check_module: #{e}"
end
```

#### Using the check_module_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_module_with_http_info(check_module_request)

```ruby
begin
  # Check the contributed module repository compliance.
  data, status_code, headers = api_instance.check_module_with_http_info(check_module_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->check_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_module_request** | [**CheckModuleRequest**](CheckModuleRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## install_module

> install_module(check_module_request)

Compile, install and start an available contributed module.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new
check_module_request = EjabberdHttpClient::CheckModuleRequest.new # CheckModuleRequest |

begin
  # Compile, install and start an available contributed module.
  api_instance.install_module(check_module_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->install_module: #{e}"
end
```

#### Using the install_module_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> install_module_with_http_info(check_module_request)

```ruby
begin
  # Compile, install and start an available contributed module.
  data, status_code, headers = api_instance.install_module_with_http_info(check_module_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->install_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_module_request** | [**CheckModuleRequest**](CheckModuleRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## list_available_modules

> Hash&lt;String, String&gt; list_available_modules

List the contributed modules available to install.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new

begin
  # List the contributed modules available to install.
  result = api_instance.list_available_modules
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->list_available_modules: #{e}"
end
```

#### Using the list_available_modules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> list_available_modules_with_http_info

```ruby
begin
  # List the contributed modules available to install.
  data, status_code, headers = api_instance.list_available_modules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->list_available_modules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_installed_modules

> Hash&lt;String, String&gt; list_installed_modules

List the contributed modules already installed.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new

begin
  # List the contributed modules already installed.
  result = api_instance.list_installed_modules
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->list_installed_modules: #{e}"
end
```

#### Using the list_installed_modules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> list_installed_modules_with_http_info

```ruby
begin
  # List the contributed modules already installed.
  data, status_code, headers = api_instance.list_installed_modules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->list_installed_modules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## uninstall_module

> uninstall_module(check_module_request)

Uninstall a contributed module.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new
check_module_request = EjabberdHttpClient::CheckModuleRequest.new # CheckModuleRequest |

begin
  # Uninstall a contributed module.
  api_instance.uninstall_module(check_module_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->uninstall_module: #{e}"
end
```

#### Using the uninstall_module_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> uninstall_module_with_http_info(check_module_request)

```ruby
begin
  # Uninstall a contributed module.
  data, status_code, headers = api_instance.uninstall_module_with_http_info(check_module_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->uninstall_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_module_request** | [**CheckModuleRequest**](CheckModuleRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_module_specs

> update_module_specs

Update the module source code from Git.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new

begin
  # Update the module source code from Git.
  api_instance.update_module_specs
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->update_module_specs: #{e}"
end
```

#### Using the update_module_specs_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_module_specs_with_http_info

```ruby
begin
  # Update the module source code from Git.
  data, status_code, headers = api_instance.update_module_specs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->update_module_specs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## upgrade_module

> upgrade_module(check_module_request)

Upgrade the running code of an installed module.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ModulesApi.new
check_module_request = EjabberdHttpClient::CheckModuleRequest.new # CheckModuleRequest |

begin
  # Upgrade the running code of an installed module.
  api_instance.upgrade_module(check_module_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->upgrade_module: #{e}"
end
```

#### Using the upgrade_module_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upgrade_module_with_http_info(check_module_request)

```ruby
begin
  # Upgrade the running code of an installed module.
  data, status_code, headers = api_instance.upgrade_module_with_http_info(check_module_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ModulesApi->upgrade_module_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_module_request** | [**CheckModuleRequest**](CheckModuleRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

