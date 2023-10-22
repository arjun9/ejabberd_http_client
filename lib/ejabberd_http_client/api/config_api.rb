=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class ConfigApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Convert the input configuration file from Erlang to YAML format.
    # @param convert_to_yaml_request [ConvertToYamlRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def convert_to_yaml(convert_to_yaml_request, opts = {})
      convert_to_yaml_with_http_info(convert_to_yaml_request, opts)
      nil
    end

    # Convert the input configuration file from Erlang to YAML format.
    # @param convert_to_yaml_request [ConvertToYamlRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def convert_to_yaml_with_http_info(convert_to_yaml_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigApi.convert_to_yaml ...'
      end
      # verify the required parameter 'convert_to_yaml_request' is set
      if @api_client.config.client_side_validation && convert_to_yaml_request.nil?
        fail ArgumentError, "Missing the required parameter 'convert_to_yaml_request' when calling ConfigApi.convert_to_yaml"
      end
      # resource path
      local_var_path = '/api/convert_to_yaml'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(convert_to_yaml_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConfigApi.convert_to_yaml",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigApi#convert_to_yaml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dump configuration in YAML format as seen by ejabberd.
    # @param dump_config_request [DumpConfigRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def dump_config(dump_config_request, opts = {})
      data, _status_code, _headers = dump_config_with_http_info(dump_config_request, opts)
      data
    end

    # Dump configuration in YAML format as seen by ejabberd.
    # @param dump_config_request [DumpConfigRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def dump_config_with_http_info(dump_config_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigApi.dump_config ...'
      end
      # verify the required parameter 'dump_config_request' is set
      if @api_client.config.client_side_validation && dump_config_request.nil?
        fail ArgumentError, "Missing the required parameter 'dump_config_request' when calling ConfigApi.dump_config"
      end
      # resource path
      local_var_path = '/api/dump_config'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(dump_config_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ConfigApi.dump_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigApi#dump_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reload config file in memory.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def reload_config(opts = {})
      data, _status_code, _headers = reload_config_with_http_info(opts)
      data
    end

    # Reload config file in memory.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def reload_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigApi.reload_config ...'
      end
      # resource path
      local_var_path = '/api/reload_config'

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
        :operation => :"ConfigApi.reload_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigApi#reload_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
