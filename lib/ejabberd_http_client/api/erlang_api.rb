=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class ErlangApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Recompile and reload Erlang source code file.
    # @param compile_request [CompileRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def compile(compile_request, opts = {})
      compile_with_http_info(compile_request, opts)
      nil
    end

    # Recompile and reload Erlang source code file.
    # @param compile_request [CompileRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def compile_with_http_info(compile_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErlangApi.compile ...'
      end
      # verify the required parameter 'compile_request' is set
      if @api_client.config.client_side_validation && compile_request.nil?
        fail ArgumentError, "Missing the required parameter 'compile_request' when calling ErlangApi.compile"
      end
      # resource path
      local_var_path = '/api/compile'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(compile_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ErlangApi.compile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErlangApi#compile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Erlang cookie of this node.
    # @param [Hash] opts the optional parameters
    # @return [GetCookie200Response]
    def get_cookie(opts = {})
      data, _status_code, _headers = get_cookie_with_http_info(opts)
      data
    end

    # Get the Erlang cookie of this node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCookie200Response, Integer, Hash)>] GetCookie200Response data, response status code and response headers
    def get_cookie_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErlangApi.get_cookie ...'
      end
      # resource path
      local_var_path = '/api/get_cookie'

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
      return_type = opts[:debug_return_type] || 'GetCookie200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ErlangApi.get_cookie",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErlangApi#get_cookie\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop an ejabberd module, reload code, and start.
    # @param [Hash] opts the optional parameters
    # @option opts [RestartModuleRequest] :restart_module_request
    # @return [RestartModule200Response]
    def restart_module(opts = {})
      data, _status_code, _headers = restart_module_with_http_info(opts)
      data
    end

    # Stop an ejabberd module, reload code, and start.
    # @param [Hash] opts the optional parameters
    # @option opts [RestartModuleRequest] :restart_module_request
    # @return [Array<(RestartModule200Response, Integer, Hash)>] RestartModule200Response data, response status code and response headers
    def restart_module_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ErlangApi.restart_module ...'
      end
      # resource path
      local_var_path = '/api/restart_module'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'restart_module_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RestartModule200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ErlangApi.restart_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ErlangApi#restart_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
