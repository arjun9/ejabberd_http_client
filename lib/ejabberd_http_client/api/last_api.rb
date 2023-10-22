=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class LastApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get last activity information.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetLast200Response]
    def get_last(get_last_request, opts = {})
      data, _status_code, _headers = get_last_with_http_info(get_last_request, opts)
      data
    end

    # Get last activity information.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetLast200Response, Integer, Hash)>] GetLast200Response data, response status code and response headers
    def get_last_with_http_info(get_last_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LastApi.get_last ...'
      end
      # verify the required parameter 'get_last_request' is set
      if @api_client.config.client_side_validation && get_last_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_last_request' when calling LastApi.get_last"
      end
      # resource path
      local_var_path = '/api/get_last'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_last_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetLast200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LastApi.get_last",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LastApi#get_last\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set last activity information.
    # @param [Hash] opts the optional parameters
    # @option opts [SetLastRequest] :set_last_request
    # @return [Integer]
    def set_last(opts = {})
      data, _status_code, _headers = set_last_with_http_info(opts)
      data
    end

    # Set last activity information.
    # @param [Hash] opts the optional parameters
    # @option opts [SetLastRequest] :set_last_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_last_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LastApi.set_last ...'
      end
      # resource path
      local_var_path = '/api/set_last'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_last_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"LastApi.set_last",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LastApi#set_last\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
