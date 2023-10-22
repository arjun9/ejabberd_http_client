# EjabberdHttpClient::ConfigApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_to_yaml**](ConfigApi.md#convert_to_yaml) | **POST** /api/convert_to_yaml | Convert the input configuration file from Erlang to YAML format. |
| [**dump_config**](ConfigApi.md#dump_config) | **POST** /api/dump_config | Dump configuration in YAML format as seen by ejabberd. |
| [**reload_config**](ConfigApi.md#reload_config) | **POST** /api/reload_config | Reload config file in memory. |


## convert_to_yaml

> convert_to_yaml(convert_to_yaml_request)

Convert the input configuration file from Erlang to YAML format.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ConfigApi.new
convert_to_yaml_request = EjabberdHttpClient::ConvertToYamlRequest.new # ConvertToYamlRequest |

begin
  # Convert the input configuration file from Erlang to YAML format.
  api_instance.convert_to_yaml(convert_to_yaml_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->convert_to_yaml: #{e}"
end
```

#### Using the convert_to_yaml_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> convert_to_yaml_with_http_info(convert_to_yaml_request)

```ruby
begin
  # Convert the input configuration file from Erlang to YAML format.
  data, status_code, headers = api_instance.convert_to_yaml_with_http_info(convert_to_yaml_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->convert_to_yaml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_to_yaml_request** | [**ConvertToYamlRequest**](ConvertToYamlRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## dump_config

> Integer dump_config(dump_config_request)

Dump configuration in YAML format as seen by ejabberd.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ConfigApi.new
dump_config_request = EjabberdHttpClient::DumpConfigRequest.new # DumpConfigRequest |

begin
  # Dump configuration in YAML format as seen by ejabberd.
  result = api_instance.dump_config(dump_config_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->dump_config: #{e}"
end
```

#### Using the dump_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> dump_config_with_http_info(dump_config_request)

```ruby
begin
  # Dump configuration in YAML format as seen by ejabberd.
  data, status_code, headers = api_instance.dump_config_with_http_info(dump_config_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->dump_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump_config_request** | [**DumpConfigRequest**](DumpConfigRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reload_config

> Integer reload_config

Reload config file in memory.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::ConfigApi.new

begin
  # Reload config file in memory.
  result = api_instance.reload_config
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->reload_config: #{e}"
end
```

#### Using the reload_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> reload_config_with_http_info

```ruby
begin
  # Reload config file in memory.
  data, status_code, headers = api_instance.reload_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling ConfigApi->reload_config_with_http_info: #{e}"
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

