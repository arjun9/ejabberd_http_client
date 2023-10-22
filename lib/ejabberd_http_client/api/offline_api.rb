=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class OfflineApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the number of unread offline messages.
    # @param get_offline_count_request [GetOfflineCountRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetOfflineCount200Response]
    def get_offline_count(get_offline_count_request, opts = {})
      data, _status_code, _headers = get_offline_count_with_http_info(get_offline_count_request, opts)
      data
    end

    # Get the number of unread offline messages.
    # @param get_offline_count_request [GetOfflineCountRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOfflineCount200Response, Integer, Hash)>] GetOfflineCount200Response data, response status code and response headers
    def get_offline_count_with_http_info(get_offline_count_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OfflineApi.get_offline_count ...'
      end
      # verify the required parameter 'get_offline_count_request' is set
      if @api_client.config.client_side_validation && get_offline_count_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_offline_count_request' when calling OfflineApi.get_offline_count"
      end
      # resource path
      local_var_path = '/api/get_offline_count'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_offline_count_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetOfflineCount200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OfflineApi.get_offline_count",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OfflineApi#get_offline_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
