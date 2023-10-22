# EjabberdHttpClient::AcmeApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_certificates**](AcmeApi.md#list_certificates) | **POST** /api/list_certificates | Lists all ACME certificates. |
| [**request_certificate**](AcmeApi.md#request_certificate) | **POST** /api/request_certificate | Requests certificates for specified domains. |
| [**revoke_certificate**](AcmeApi.md#revoke_certificate) | **POST** /api/revoke_certificate | Revokes the selected ACME certificate. |


## list_certificates

> <Array<ListCertificates200ResponseInner>> list_certificates

Lists all ACME certificates.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AcmeApi.new

begin
  # Lists all ACME certificates.
  result = api_instance.list_certificates
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->list_certificates: #{e}"
end
```

#### Using the list_certificates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListCertificates200ResponseInner>>, Integer, Hash)> list_certificates_with_http_info

```ruby
begin
  # Lists all ACME certificates.
  data, status_code, headers = api_instance.list_certificates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListCertificates200ResponseInner>>
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->list_certificates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ListCertificates200ResponseInner&gt;**](ListCertificates200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_certificate

> String request_certificate(opts)

Requests certificates for specified domains.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AcmeApi.new
opts = {
  request_certificate_request: EjabberdHttpClient::RequestCertificateRequest.new # RequestCertificateRequest |
}

begin
  # Requests certificates for specified domains.
  result = api_instance.request_certificate(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->request_certificate: #{e}"
end
```

#### Using the request_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> request_certificate_with_http_info(opts)

```ruby
begin
  # Requests certificates for specified domains.
  data, status_code, headers = api_instance.request_certificate_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->request_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_certificate_request** | [**RequestCertificateRequest**](RequestCertificateRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_certificate

> String revoke_certificate(opts)

Revokes the selected ACME certificate.

### Examples

```ruby
require 'time'
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AcmeApi.new
opts = {
  revoke_certificate_request: EjabberdHttpClient::RevokeCertificateRequest.new # RevokeCertificateRequest |
}

begin
  # Revokes the selected ACME certificate.
  result = api_instance.revoke_certificate(opts)
  p result
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->revoke_certificate: #{e}"
end
```

#### Using the revoke_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> revoke_certificate_with_http_info(opts)

```ruby
begin
  # Revokes the selected ACME certificate.
  data, status_code, headers = api_instance.revoke_certificate_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue EjabberdHttpClient::ApiError => e
  puts "Error when calling AcmeApi->revoke_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revoke_certificate_request** | [**RevokeCertificateRequest**](RevokeCertificateRequest.md) |  | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

