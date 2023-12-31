=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class MamApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove mam archive for user.
    # @param [Hash] opts the optional parameters
    # @option opts [GetOfflineCountRequest] :get_offline_count_request
    # @return [String]
    def remove_mam_for_user(opts = {})
      data, _status_code, _headers = remove_mam_for_user_with_http_info(opts)
      data
    end

    # Remove mam archive for user.
    # @param [Hash] opts the optional parameters
    # @option opts [GetOfflineCountRequest] :get_offline_count_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def remove_mam_for_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MamApi.remove_mam_for_user ...'
      end
      # resource path
      local_var_path = '/api/remove_mam_for_user'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_offline_count_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MamApi.remove_mam_for_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MamApi#remove_mam_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove mam archive for user with peer.
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveMamForUserWithPeerRequest] :remove_mam_for_user_with_peer_request
    # @return [String]
    def remove_mam_for_user_with_peer(opts = {})
      data, _status_code, _headers = remove_mam_for_user_with_peer_with_http_info(opts)
      data
    end

    # Remove mam archive for user with peer.
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveMamForUserWithPeerRequest] :remove_mam_for_user_with_peer_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def remove_mam_for_user_with_peer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MamApi.remove_mam_for_user_with_peer ...'
      end
      # resource path
      local_var_path = '/api/remove_mam_for_user_with_peer'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'remove_mam_for_user_with_peer_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MamApi.remove_mam_for_user_with_peer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MamApi#remove_mam_for_user_with_peer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
