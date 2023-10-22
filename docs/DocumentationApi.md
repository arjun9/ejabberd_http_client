# EjabberdHttpClient::DocumentationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**gen_html_doc_for_commands**](DocumentationApi.md#gen_html_doc_for_commands) | **POST** /api/gen_html_doc_for_commands | Generates html documentation for ejabberd_commands. |
| [**gen_markdown_doc_for_commands**](DocumentationApi.md#gen_markdown_doc_for_commands) | **POST** /api/gen_markdown_doc_for_commands | Generates markdown documentation for ejabberd_commands. |
| [**gen_markdown_doc_for_tags**](DocumentationApi.md#gen_markdown_doc_for_tags) | **POST** /api/gen_markdown_doc_for_tags | Generates markdown documentation for ejabberd_commands. |
| [**generate_manpage**](DocumentationApi.md#generate_manpage) | **POST** /api/man | Generate Unix manpage for current ejabberd version. |


## gen_html_doc_for_commands

> Integer gen_html_doc_for_commands(gen_html_doc_for_commands_request)

Generates html documentation for ejabberd_commands.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::DocumentationApi.new
gen_html_doc_for_commands_request = EjabberdHttpClient::GenHtmlDocForCommandsRequest.new # GenHtmlDocForCommandsRequest |

begin
  # Generates html documentation for ejabberd_commands.
  result = api_instance.gen_html_doc_for_commands(gen_html_doc_for_commands_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_html_doc_for_commands: #{e}"
end
```

#### Using the gen_html_doc_for_commands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> gen_html_doc_for_commands_with_http_info(gen_html_doc_for_commands_request)

```ruby
begin
  # Generates html documentation for ejabberd_commands.
  data, status_code, headers = api_instance.gen_html_doc_for_commands_with_http_info(gen_html_doc_for_commands_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_html_doc_for_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gen_html_doc_for_commands_request** | [**GenHtmlDocForCommandsRequest**](GenHtmlDocForCommandsRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gen_markdown_doc_for_commands

> Integer gen_markdown_doc_for_commands(gen_html_doc_for_commands_request)

Generates markdown documentation for ejabberd_commands.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::DocumentationApi.new
gen_html_doc_for_commands_request = EjabberdHttpClient::GenHtmlDocForCommandsRequest.new # GenHtmlDocForCommandsRequest |

begin
  # Generates markdown documentation for ejabberd_commands.
  result = api_instance.gen_markdown_doc_for_commands(gen_html_doc_for_commands_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_markdown_doc_for_commands: #{e}"
end
```

#### Using the gen_markdown_doc_for_commands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> gen_markdown_doc_for_commands_with_http_info(gen_html_doc_for_commands_request)

```ruby
begin
  # Generates markdown documentation for ejabberd_commands.
  data, status_code, headers = api_instance.gen_markdown_doc_for_commands_with_http_info(gen_html_doc_for_commands_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_markdown_doc_for_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gen_html_doc_for_commands_request** | [**GenHtmlDocForCommandsRequest**](GenHtmlDocForCommandsRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gen_markdown_doc_for_tags

> Integer gen_markdown_doc_for_tags(gen_markdown_doc_for_tags_request)

Generates markdown documentation for ejabberd_commands.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::DocumentationApi.new
gen_markdown_doc_for_tags_request = EjabberdHttpClient::GenMarkdownDocForTagsRequest.new # GenMarkdownDocForTagsRequest |

begin
  # Generates markdown documentation for ejabberd_commands.
  result = api_instance.gen_markdown_doc_for_tags(gen_markdown_doc_for_tags_request)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_markdown_doc_for_tags: #{e}"
end
```

#### Using the gen_markdown_doc_for_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> gen_markdown_doc_for_tags_with_http_info(gen_markdown_doc_for_tags_request)

```ruby
begin
  # Generates markdown documentation for ejabberd_commands.
  data, status_code, headers = api_instance.gen_markdown_doc_for_tags_with_http_info(gen_markdown_doc_for_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->gen_markdown_doc_for_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gen_markdown_doc_for_tags_request** | [**GenMarkdownDocForTagsRequest**](GenMarkdownDocForTagsRequest.md) |  |  |

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_manpage

> generate_manpage

Generate Unix manpage for current ejabberd version.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::DocumentationApi.new

begin
  # Generate Unix manpage for current ejabberd version.
  api_instance.generate_manpage
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->generate_manpage: #{e}"
end
```

#### Using the generate_manpage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_manpage_with_http_info

```ruby
begin
  # Generate Unix manpage for current ejabberd version.
  data, status_code, headers = api_instance.generate_manpage_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling DocumentationApi->generate_manpage_with_http_info: #{e}"
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

