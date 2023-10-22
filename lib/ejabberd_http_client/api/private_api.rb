=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class PrivateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export private XML storage bookmarks to PEP.
    # @param bookmarks_to_pep_request [BookmarksToPepRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def bookmarks_to_pep(bookmarks_to_pep_request, opts = {})
      bookmarks_to_pep_with_http_info(bookmarks_to_pep_request, opts)
      nil
    end

    # Export private XML storage bookmarks to PEP.
    # @param bookmarks_to_pep_request [BookmarksToPepRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def bookmarks_to_pep_with_http_info(bookmarks_to_pep_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.bookmarks_to_pep ...'
      end
      # verify the required parameter 'bookmarks_to_pep_request' is set
      if @api_client.config.client_side_validation && bookmarks_to_pep_request.nil?
        fail ArgumentError, "Missing the required parameter 'bookmarks_to_pep_request' when calling PrivateApi.bookmarks_to_pep"
      end
      # resource path
      local_var_path = '/api/bookmarks_to_pep'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bookmarks_to_pep_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PrivateApi.bookmarks_to_pep",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#bookmarks_to_pep\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get some information from a user private storage.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateGetRequest] :private_get_request
    # @return [ImportDir200Response]
    def private_get(opts = {})
      data, _status_code, _headers = private_get_with_http_info(opts)
      data
    end

    # Get some information from a user private storage.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateGetRequest] :private_get_request
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def private_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.private_get ...'
      end
      # resource path
      local_var_path = '/api/private_get'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'private_get_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PrivateApi.private_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#private_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set to the user private storage.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateSetRequest] :private_set_request
    # @return [Integer]
    def private_set(opts = {})
      data, _status_code, _headers = private_set_with_http_info(opts)
      data
    end

    # Set to the user private storage.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateSetRequest] :private_set_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def private_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.private_set ...'
      end
      # resource path
      local_var_path = '/api/private_set'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'private_set_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PrivateApi.private_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#private_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
