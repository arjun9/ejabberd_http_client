=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class S2sApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Number of outgoing s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [GetOutgoingS2sNumber200Response]
    def get_outgoing_s2s_number(opts = {})
      data, _status_code, _headers = get_outgoing_s2s_number_with_http_info(opts)
      data
    end

    # Number of outgoing s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOutgoingS2sNumber200Response, Integer, Hash)>] GetOutgoingS2sNumber200Response data, response status code and response headers
    def get_outgoing_s2s_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: S2sApi.get_outgoing_s2s_number ...'
      end
      # resource path
      local_var_path = '/api/outgoing_s2s_number'

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
      return_type = opts[:debug_return_type] || 'GetOutgoingS2sNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"S2sApi.get_outgoing_s2s_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: S2sApi#get_outgoing_s2s_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Number of incoming s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [IncomingS2sNumber200Response]
    def incoming_s2s_number(opts = {})
      data, _status_code, _headers = incoming_s2s_number_with_http_info(opts)
      data
    end

    # Number of incoming s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncomingS2sNumber200Response, Integer, Hash)>] IncomingS2sNumber200Response data, response status code and response headers
    def incoming_s2s_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: S2sApi.incoming_s2s_number ...'
      end
      # resource path
      local_var_path = '/api/incoming_s2s_number'

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
      return_type = opts[:debug_return_type] || 'IncomingS2sNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"S2sApi.incoming_s2s_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: S2sApi#incoming_s2s_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop all s2s outgoing and incoming connections.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def stop_s2s_connections(opts = {})
      data, _status_code, _headers = stop_s2s_connections_with_http_info(opts)
      data
    end

    # Stop all s2s outgoing and incoming connections.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def stop_s2s_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: S2sApi.stop_s2s_connections ...'
      end
      # resource path
      local_var_path = '/api/stop_s2s_connections'

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
        :operation => :"S2sApi.stop_s2s_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: S2sApi#stop_s2s_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
