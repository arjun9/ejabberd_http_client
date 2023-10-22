=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class AcmeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Lists all ACME certificates.
    # @param [Hash] opts the optional parameters
    # @return [Array<ListCertificates200ResponseInner>]
    def list_certificates(opts = {})
      data, _status_code, _headers = list_certificates_with_http_info(opts)
      data
    end

    # Lists all ACME certificates.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ListCertificates200ResponseInner>, Integer, Hash)>] Array<ListCertificates200ResponseInner> data, response status code and response headers
    def list_certificates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AcmeApi.list_certificates ...'
      end
      # resource path
      local_var_path = '/api/list_certificates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ListCertificates200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AcmeApi.list_certificates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AcmeApi#list_certificates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Requests certificates for specified domains.
    # @param [Hash] opts the optional parameters
    # @option opts [RequestCertificateRequest] :request_certificate_request
    # @return [String]
    def request_certificate(opts = {})
      data, _status_code, _headers = request_certificate_with_http_info(opts)
      data
    end

    # Requests certificates for specified domains.
    # @param [Hash] opts the optional parameters
    # @option opts [RequestCertificateRequest] :request_certificate_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def request_certificate_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AcmeApi.request_certificate ...'
      end
      # resource path
      local_var_path = '/api/request_certificate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_certificate_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AcmeApi.request_certificate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AcmeApi#request_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revokes the selected ACME certificate.
    # @param [Hash] opts the optional parameters
    # @option opts [RevokeCertificateRequest] :revoke_certificate_request
    # @return [String]
    def revoke_certificate(opts = {})
      data, _status_code, _headers = revoke_certificate_with_http_info(opts)
      data
    end

    # Revokes the selected ACME certificate.
    # @param [Hash] opts the optional parameters
    # @option opts [RevokeCertificateRequest] :revoke_certificate_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def revoke_certificate_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AcmeApi.revoke_certificate ...'
      end
      # resource path
      local_var_path = '/api/revoke_certificate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'revoke_certificate_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AcmeApi.revoke_certificate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AcmeApi#revoke_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
