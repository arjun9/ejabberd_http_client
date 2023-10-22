# EjabberdHttpClient::GenHtmlDocForCommandsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Path to file where generated documentation should be stored. | [optional] |
| **regexp** | **String** | Regexp matching names of commands or modules that will be included inside generated document. | [optional] |
| **examples** | **String** | Comma separated list of languages (chosen from java, perl, xmlrpc, json) that will have example invocation include in markdown document. | [optional] |

## Example

```ruby
require 'ejabberd_http_client'

instance = EjabberdHttpClient::GenHtmlDocForCommandsRequest.new(
  file: null,
  regexp: null,
  examples: null
)
```

