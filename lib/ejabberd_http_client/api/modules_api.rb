=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class ModulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check the contributed module repository compliance.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def check_module(check_module_request, opts = {})
      check_module_with_http_info(check_module_request, opts)
      nil
    end

    # Check the contributed module repository compliance.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def check_module_with_http_info(check_module_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.check_module ...'
      end
      # verify the required parameter 'check_module_request' is set
      if @api_client.config.client_side_validation && check_module_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_module_request' when calling ModulesApi.check_module"
      end
      # resource path
      local_var_path = '/api/module_check'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_module_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.check_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#check_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Compile, install and start an available contributed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def install_module(check_module_request, opts = {})
      install_module_with_http_info(check_module_request, opts)
      nil
    end

    # Compile, install and start an available contributed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def install_module_with_http_info(check_module_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.install_module ...'
      end
      # verify the required parameter 'check_module_request' is set
      if @api_client.config.client_side_validation && check_module_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_module_request' when calling ModulesApi.install_module"
      end
      # resource path
      local_var_path = '/api/module_install'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_module_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.install_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#install_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the contributed modules available to install.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, String>]
    def list_available_modules(opts = {})
      data, _status_code, _headers = list_available_modules_with_http_info(opts)
      data
    end

    # List the contributed modules available to install.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, String>, Integer, Hash)>] Hash<String, String> data, response status code and response headers
    def list_available_modules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.list_available_modules ...'
      end
      # resource path
      local_var_path = '/api/modules_available'

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
      return_type = opts[:debug_return_type] || 'Hash<String, String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.list_available_modules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#list_available_modules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the contributed modules already installed.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, String>]
    def list_installed_modules(opts = {})
      data, _status_code, _headers = list_installed_modules_with_http_info(opts)
      data
    end

    # List the contributed modules already installed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, String>, Integer, Hash)>] Hash<String, String> data, response status code and response headers
    def list_installed_modules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.list_installed_modules ...'
      end
      # resource path
      local_var_path = '/api/modules_installed'

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
      return_type = opts[:debug_return_type] || 'Hash<String, String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.list_installed_modules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#list_installed_modules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Uninstall a contributed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def uninstall_module(check_module_request, opts = {})
      uninstall_module_with_http_info(check_module_request, opts)
      nil
    end

    # Uninstall a contributed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def uninstall_module_with_http_info(check_module_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.uninstall_module ...'
      end
      # verify the required parameter 'check_module_request' is set
      if @api_client.config.client_side_validation && check_module_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_module_request' when calling ModulesApi.uninstall_module"
      end
      # resource path
      local_var_path = '/api/module_uninstall'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_module_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.uninstall_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#uninstall_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the module source code from Git.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_module_specs(opts = {})
      update_module_specs_with_http_info(opts)
      nil
    end

    # Update the module source code from Git.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_module_specs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.update_module_specs ...'
      end
      # resource path
      local_var_path = '/api/modules_update_specs'

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
        :operation => :"ModulesApi.update_module_specs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#update_module_specs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upgrade the running code of an installed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def upgrade_module(check_module_request, opts = {})
      upgrade_module_with_http_info(check_module_request, opts)
      nil
    end

    # Upgrade the running code of an installed module.
    # @param check_module_request [CheckModuleRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def upgrade_module_with_http_info(check_module_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModulesApi.upgrade_module ...'
      end
      # verify the required parameter 'check_module_request' is set
      if @api_client.config.client_side_validation && check_module_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_module_request' when calling ModulesApi.upgrade_module"
      end
      # resource path
      local_var_path = '/api/module_upgrade'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_module_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ModulesApi.upgrade_module",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModulesApi#upgrade_module\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
