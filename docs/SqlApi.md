# EjabberdHttpClient::SqlApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_to_scram**](SqlApi.md#convert_to_scram) | **POST** /api/convert_to_scram | Convert the passwords of users to SCRAM for a given vhost. |
| [**import_prosody**](SqlApi.md#import_prosody) | **POST** /api/import_prosody | Import data from Prosody. |
| [**update_sql**](SqlApi.md#update_sql) | **POST** /api/update_sql | Convert MS SQL, MySQL, or PostgreSQL DB to the new format. |


## convert_to_scram

> convert_to_scram(convert_to_scram_request)

Convert the passwords of users to SCRAM for a given vhost.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SqlApi.new
convert_to_scram_request = EjabberdHttpClient::ConvertToScramRequest.new # ConvertToScramRequest |

begin
  # Convert the passwords of users to SCRAM for a given vhost.
  api_instance.convert_to_scram(convert_to_scram_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->convert_to_scram: #{e}"
end
```

#### Using the convert_to_scram_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> convert_to_scram_with_http_info(convert_to_scram_request)

```ruby
begin
  # Convert the passwords of users to SCRAM for a given vhost.
  data, status_code, headers = api_instance.convert_to_scram_with_http_info(convert_to_scram_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->convert_to_scram_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_to_scram_request** | [**ConvertToScramRequest**](ConvertToScramRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## import_prosody

> import_prosody(import_prosody_request)

Import data from Prosody.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SqlApi.new
import_prosody_request = EjabberdHttpClient::ImportProsodyRequest.new # ImportProsodyRequest |

begin
  # Import data from Prosody.
  api_instance.import_prosody(import_prosody_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->import_prosody: #{e}"
end
```

#### Using the import_prosody_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> import_prosody_with_http_info(import_prosody_request)

```ruby
begin
  # Import data from Prosody.
  data, status_code, headers = api_instance.import_prosody_with_http_info(import_prosody_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->import_prosody_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_prosody_request** | [**ImportProsodyRequest**](ImportProsodyRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_sql

> Integer update_sql

Convert MS SQL, MySQL, or PostgreSQL DB to the new format.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::SqlApi.new

begin
  # Convert MS SQL, MySQL, or PostgreSQL DB to the new format.
  result = api_instance.update_sql
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->update_sql: #{e}"
end
```

#### Using the update_sql_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> update_sql_with_http_info

```ruby
begin
  # Convert MS SQL, MySQL, or PostgreSQL DB to the new format.
  data, status_code, headers = api_instance.update_sql_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling SqlApi->update_sql_with_http_info: #{e}"
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

