# EjabberdHttpClient::MnesiaApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backup**](MnesiaApi.md#backup) | **POST** /api/backup | Backup the Mnesia database to a binary file. |
| [**change_node_name**](MnesiaApi.md#change_node_name) | **POST** /api/mnesia_change_nodename | Change the erlang node name in a backup file. |
| [**delete_mnesia**](MnesiaApi.md#delete_mnesia) | **POST** /api/delete_mnesia | Delete elements in Mnesia database for a given vhost. |
| [**dump**](MnesiaApi.md#dump) | **POST** /api/dump | Dump the Mnesia database to a text file. |
| [**dump_table**](MnesiaApi.md#dump_table) | **POST** /api/dump_table | Dump a Mnesia table to a text file. |
| [**export2sql**](MnesiaApi.md#export2sql) | **POST** /api/export2sql | Export virtual host information from Mnesia tables to SQL file. |
| [**export_piefxis**](MnesiaApi.md#export_piefxis) | **POST** /api/export_piefxis | Export data of all users in the server to PIEFXIS files (XEP-0227). |
| [**export_piefxis_host**](MnesiaApi.md#export_piefxis_host) | **POST** /api/export_piefxis_host | Export data of users in a host to PIEFXIS files (XEP-0227). |
| [**global_mnesia_info**](MnesiaApi.md#global_mnesia_info) | **POST** /api/mnesia_info | Dump info on global Mnesia state. |
| [**import_dir**](MnesiaApi.md#import_dir) | **POST** /api/import_dir | Import users data from jabberd14 spool dir. |
| [**import_file**](MnesiaApi.md#import_file) | **POST** /api/import_file | Import user data from jabberd14 spool file. |
| [**import_piefxis**](MnesiaApi.md#import_piefxis) | **POST** /api/import_piefxis | Import users data from a PIEFXIS file (XEP-0227). |
| [**import_prosody**](MnesiaApi.md#import_prosody) | **POST** /api/import_prosody | Import data from Prosody. |
| [**install_fallback**](MnesiaApi.md#install_fallback) | **POST** /api/install_fallback | Install Mnesia database from a binary backup file. |
| [**load_database**](MnesiaApi.md#load_database) | **POST** /api/load | Restore Mnesia database from a text dump file. |
| [**restore**](MnesiaApi.md#restore) | **POST** /api/restore | Restore the Mnesia database from a binary backup file. |
| [**table_mnesia_info**](MnesiaApi.md#table_mnesia_info) | **POST** /api/mnesia_table_info | Dump info on Mnesia table state. |


## backup

> backup(backup_request)

Backup the Mnesia database to a binary file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
backup_request = EjabberdHttpClient::BackupRequest.new # BackupRequest |

begin
  # Backup the Mnesia database to a binary file.
  api_instance.backup(backup_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->backup: #{e}"
end
```

#### Using the backup_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backup_with_http_info(backup_request)

```ruby
begin
  # Backup the Mnesia database to a binary file.
  data, status_code, headers = api_instance.backup_with_http_info(backup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_request** | [**BackupRequest**](BackupRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain


## change_node_name

> change_node_name(change_node_name_request)

Change the erlang node name in a backup file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
change_node_name_request = EjabberdHttpClient::ChangeNodeNameRequest.new # ChangeNodeNameRequest |

begin
  # Change the erlang node name in a backup file.
  api_instance.change_node_name(change_node_name_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->change_node_name: #{e}"
end
```

#### Using the change_node_name_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_node_name_with_http_info(change_node_name_request)

```ruby
begin
  # Change the erlang node name in a backup file.
  data, status_code, headers = api_instance.change_node_name_with_http_info(change_node_name_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->change_node_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_node_name_request** | [**ChangeNodeNameRequest**](ChangeNodeNameRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_mnesia

> delete_mnesia(delete_mnesia_request)

Delete elements in Mnesia database for a given vhost.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
delete_mnesia_request = EjabberdHttpClient::DeleteMnesiaRequest.new # DeleteMnesiaRequest |

begin
  # Delete elements in Mnesia database for a given vhost.
  api_instance.delete_mnesia(delete_mnesia_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->delete_mnesia: #{e}"
end
```

#### Using the delete_mnesia_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_mnesia_with_http_info(delete_mnesia_request)

```ruby
begin
  # Delete elements in Mnesia database for a given vhost.
  data, status_code, headers = api_instance.delete_mnesia_with_http_info(delete_mnesia_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->delete_mnesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_mnesia_request** | [**DeleteMnesiaRequest**](DeleteMnesiaRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## dump

> String dump(dump_request)

Dump the Mnesia database to a text file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
dump_request = EjabberdHttpClient::DumpRequest.new # DumpRequest |

begin
  # Dump the Mnesia database to a text file.
  result = api_instance.dump(dump_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->dump: #{e}"
end
```

#### Using the dump_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> dump_with_http_info(dump_request)

```ruby
begin
  # Dump the Mnesia database to a text file.
  data, status_code, headers = api_instance.dump_with_http_info(dump_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->dump_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump_request** | [**DumpRequest**](DumpRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## dump_table

> String dump_table(dump_table_request)

Dump a Mnesia table to a text file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
dump_table_request = EjabberdHttpClient::DumpTableRequest.new # DumpTableRequest |

begin
  # Dump a Mnesia table to a text file.
  result = api_instance.dump_table(dump_table_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->dump_table: #{e}"
end
```

#### Using the dump_table_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> dump_table_with_http_info(dump_table_request)

```ruby
begin
  # Dump a Mnesia table to a text file.
  data, status_code, headers = api_instance.dump_table_with_http_info(dump_table_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->dump_table_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump_table_request** | [**DumpTableRequest**](DumpTableRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## export2sql

> Integer export2sql(export2sql_request)

Export virtual host information from Mnesia tables to SQL file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
export2sql_request = EjabberdHttpClient::Export2sqlRequest.new # Export2sqlRequest |

begin
  # Export virtual host information from Mnesia tables to SQL file.
  result = api_instance.export2sql(export2sql_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export2sql: #{e}"
end
```

#### Using the export2sql_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> export2sql_with_http_info(export2sql_request)

```ruby
begin
  # Export virtual host information from Mnesia tables to SQL file.
  data, status_code, headers = api_instance.export2sql_with_http_info(export2sql_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export2sql_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export2sql_request** | [**Export2sqlRequest**](Export2sqlRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## export_piefxis

> Integer export_piefxis(export_piefxis_request)

Export data of all users in the server to PIEFXIS files (XEP-0227).

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
export_piefxis_request = EjabberdHttpClient::ExportPiefxisRequest.new # ExportPiefxisRequest |

begin
  # Export data of all users in the server to PIEFXIS files (XEP-0227).
  result = api_instance.export_piefxis(export_piefxis_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export_piefxis: #{e}"
end
```

#### Using the export_piefxis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> export_piefxis_with_http_info(export_piefxis_request)

```ruby
begin
  # Export data of all users in the server to PIEFXIS files (XEP-0227).
  data, status_code, headers = api_instance.export_piefxis_with_http_info(export_piefxis_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export_piefxis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_piefxis_request** | [**ExportPiefxisRequest**](ExportPiefxisRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## export_piefxis_host

> Integer export_piefxis_host(export_piefxis_host_request)

Export data of users in a host to PIEFXIS files (XEP-0227).

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
export_piefxis_host_request = EjabberdHttpClient::ExportPiefxisHostRequest.new # ExportPiefxisHostRequest |

begin
  # Export data of users in a host to PIEFXIS files (XEP-0227).
  result = api_instance.export_piefxis_host(export_piefxis_host_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export_piefxis_host: #{e}"
end
```

#### Using the export_piefxis_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> export_piefxis_host_with_http_info(export_piefxis_host_request)

```ruby
begin
  # Export data of users in a host to PIEFXIS files (XEP-0227).
  data, status_code, headers = api_instance.export_piefxis_host_with_http_info(export_piefxis_host_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->export_piefxis_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_piefxis_host_request** | [**ExportPiefxisHostRequest**](ExportPiefxisHostRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## global_mnesia_info

> <ImportDir200Response> global_mnesia_info

Dump info on global Mnesia state.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new

begin
  # Dump info on global Mnesia state.
  result = api_instance.global_mnesia_info
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->global_mnesia_info: #{e}"
end
```

#### Using the global_mnesia_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> global_mnesia_info_with_http_info

```ruby
begin
  # Dump info on global Mnesia state.
  data, status_code, headers = api_instance.global_mnesia_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->global_mnesia_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_dir

> <ImportDir200Response> import_dir(import_dir_request)

Import users data from jabberd14 spool dir.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
import_dir_request = EjabberdHttpClient::ImportDirRequest.new # ImportDirRequest |

begin
  # Import users data from jabberd14 spool dir.
  result = api_instance.import_dir(import_dir_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_dir: #{e}"
end
```

#### Using the import_dir_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> import_dir_with_http_info(import_dir_request)

```ruby
begin
  # Import users data from jabberd14 spool dir.
  data, status_code, headers = api_instance.import_dir_with_http_info(import_dir_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_dir_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_dir_request** | [**ImportDirRequest**](ImportDirRequest.md) |  |  |

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_file

> <ImportDir200Response> import_file(import_file_request)

Import user data from jabberd14 spool file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
import_file_request = EjabberdHttpClient::ImportFileRequest.new # ImportFileRequest |

begin
  # Import user data from jabberd14 spool file.
  result = api_instance.import_file(import_file_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_file: #{e}"
end
```

#### Using the import_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> import_file_with_http_info(import_file_request)

```ruby
begin
  # Import user data from jabberd14 spool file.
  data, status_code, headers = api_instance.import_file_with_http_info(import_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_file_request** | [**ImportFileRequest**](ImportFileRequest.md) |  |  |

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_piefxis

> import_piefxis(import_piefxis_request)

Import users data from a PIEFXIS file (XEP-0227).

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
import_piefxis_request = EjabberdHttpClient::ImportPiefxisRequest.new # ImportPiefxisRequest |

begin
  # Import users data from a PIEFXIS file (XEP-0227).
  api_instance.import_piefxis(import_piefxis_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_piefxis: #{e}"
end
```

#### Using the import_piefxis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> import_piefxis_with_http_info(import_piefxis_request)

```ruby
begin
  # Import users data from a PIEFXIS file (XEP-0227).
  data, status_code, headers = api_instance.import_piefxis_with_http_info(import_piefxis_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_piefxis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_piefxis_request** | [**ImportPiefxisRequest**](ImportPiefxisRequest.md) |  |  |

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

api_instance = EjabberdHttpClient::MnesiaApi.new
import_prosody_request = EjabberdHttpClient::ImportProsodyRequest.new # ImportProsodyRequest |

begin
  # Import data from Prosody.
  api_instance.import_prosody(import_prosody_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->import_prosody: #{e}"
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
  puts "Error when calling MnesiaApi->import_prosody_with_http_info: #{e}"
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


## install_fallback

> <ImportDir200Response> install_fallback(install_fallback_request)

Install Mnesia database from a binary backup file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
install_fallback_request = EjabberdHttpClient::InstallFallbackRequest.new # InstallFallbackRequest |

begin
  # Install Mnesia database from a binary backup file.
  result = api_instance.install_fallback(install_fallback_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->install_fallback: #{e}"
end
```

#### Using the install_fallback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> install_fallback_with_http_info(install_fallback_request)

```ruby
begin
  # Install Mnesia database from a binary backup file.
  data, status_code, headers = api_instance.install_fallback_with_http_info(install_fallback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->install_fallback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **install_fallback_request** | [**InstallFallbackRequest**](InstallFallbackRequest.md) |  |  |

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## load_database

> load_database(load_database_request)

Restore Mnesia database from a text dump file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
load_database_request = EjabberdHttpClient::LoadDatabaseRequest.new # LoadDatabaseRequest |

begin
  # Restore Mnesia database from a text dump file.
  api_instance.load_database(load_database_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->load_database: #{e}"
end
```

#### Using the load_database_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> load_database_with_http_info(load_database_request)

```ruby
begin
  # Restore Mnesia database from a text dump file.
  data, status_code, headers = api_instance.load_database_with_http_info(load_database_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->load_database_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_database_request** | [**LoadDatabaseRequest**](LoadDatabaseRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## restore

> String restore(opts)

Restore the Mnesia database from a binary backup file.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
opts = {
  restore_request: EjabberdHttpClient::RestoreRequest.new # RestoreRequest |
}

begin
  # Restore the Mnesia database from a binary backup file.
  result = api_instance.restore(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->restore: #{e}"
end
```

#### Using the restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> restore_with_http_info(opts)

```ruby
begin
  # Restore the Mnesia database from a binary backup file.
  data, status_code, headers = api_instance.restore_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restore_request** | [**RestoreRequest**](RestoreRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## table_mnesia_info

> <ImportDir200Response> table_mnesia_info(table_mnesia_info_request)

Dump info on Mnesia table state.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::MnesiaApi.new
table_mnesia_info_request = EjabberdHttpClient::TableMnesiaInfoRequest.new # TableMnesiaInfoRequest |

begin
  # Dump info on Mnesia table state.
  result = api_instance.table_mnesia_info(table_mnesia_info_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->table_mnesia_info: #{e}"
end
```

#### Using the table_mnesia_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportDir200Response>, Integer, Hash)> table_mnesia_info_with_http_info(table_mnesia_info_request)

```ruby
begin
  # Dump info on Mnesia table state.
  data, status_code, headers = api_instance.table_mnesia_info_with_http_info(table_mnesia_info_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportDir200Response>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling MnesiaApi->table_mnesia_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table_mnesia_info_request** | [**TableMnesiaInfoRequest**](TableMnesiaInfoRequest.md) |  |  |

### Return type

[**ImportDir200Response**](ImportDir200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

