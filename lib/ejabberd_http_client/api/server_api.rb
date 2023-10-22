=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class ServerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear database cache on all nodes.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def clear_cache(opts = {})
      clear_cache_with_http_info(opts)
      nil
    end

    # Clear database cache on all nodes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def clear_cache_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.clear_cache ...'
      end
      # resource path
      local_var_path = '/api/clear_cache'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.clear_cache",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#clear_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Force full garbage collection.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def gc(opts = {})
      data, _status_code, _headers = gc_with_http_info(opts)
      data
    end

    # Force full garbage collection.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def gc_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.gc ...'
      end
      # resource path
      local_var_path = '/api/gc'

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
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.gc",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#gc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get status of the ejabberd server.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_status(opts = {})
      data, _status_code, _headers = get_status_with_http_info(opts)
      data
    end

    # Get status of the ejabberd server.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.get_status ...'
      end
      # resource path
      local_var_path = '/api/status'

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
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.get_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#get_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Halt ejabberd abruptly with status code 1.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def halt(opts = {})
      halt_with_http_info(opts)
      nil
    end

    # Halt ejabberd abruptly with status code 1.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def halt_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.halt ...'
      end
      # resource path
      local_var_path = '/api/halt'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.halt",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#halt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all registered vhosts in SERVER.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def registered_vhosts(opts = {})
      data, _status_code, _headers = registered_vhosts_with_http_info(opts)
      data
    end

    # List all registered vhosts in SERVER.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def registered_vhosts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.registered_vhosts ...'
      end
      # resource path
      local_var_path = '/api/registered_vhosts'

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
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.registered_vhosts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#registered_vhosts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restart ejabberd gracefully.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def restart(opts = {})
      data, _status_code, _headers = restart_with_http_info(opts)
      data
    end

    # Restart ejabberd gracefully.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def restart_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.restart ...'
      end
      # resource path
      local_var_path = '/api/restart'

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
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.restart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#restart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop Ejabberd gracefully.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def stop_ejabberd(opts = {})
      data, _status_code, _headers = stop_ejabberd_with_http_info(opts)
      data
    end

    # Stop Ejabberd gracefully.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def stop_ejabberd_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.stop_ejabberd ...'
      end
      # resource path
      local_var_path = '/api/stop'

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
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.stop_ejabberd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#stop_ejabberd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Inform users and rooms, wait, and stop the server.
    # @param [Hash] opts the optional parameters
    # @option opts [StopKindlyRequest] :stop_kindly_request
    # @return [Integer]
    def stop_kindly(opts = {})
      data, _status_code, _headers = stop_kindly_with_http_info(opts)
      data
    end

    # Inform users and rooms, wait, and stop the server.
    # @param [Hash] opts the optional parameters
    # @option opts [StopKindlyRequest] :stop_kindly_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def stop_kindly_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.stop_kindly ...'
      end
      # resource path
      local_var_path = '/api/stop_kindly'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'stop_kindly_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.stop_kindly",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#stop_kindly\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List modified modules that can be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def update_list(opts = {})
      data, _status_code, _headers = update_list_with_http_info(opts)
      data
    end

    # List modified modules that can be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def update_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.update_list ...'
      end
      # resource path
      local_var_path = '/api/update_list'

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
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.update_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#update_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the given module or use the keyword 'all'.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckModuleRequest] :check_module_request
    # @return [String]
    def update_module(opts = {})
      data, _status_code, _headers = update_module_with_http_info(opts)
      data
    end

    # Update the given module or use the keyword &#39;all&#39;.
    # @param [Hash] opts the optional parameters
    # @option opts [CheckModuleRequest] :check_module_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def update_module_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.update_module ...'
      end
      # resource path
      local_var_path = '/api/update'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'check_module_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ServerApi.update_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#update_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
