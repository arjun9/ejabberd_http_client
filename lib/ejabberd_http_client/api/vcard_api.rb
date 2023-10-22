=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class VcardApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get content from a vCard field.
    # @param get_vcard_request [GetVcardRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetVcard200Response]
    def get_vcard(get_vcard_request, opts = {})
      data, _status_code, _headers = get_vcard_with_http_info(get_vcard_request, opts)
      data
    end

    # Get content from a vCard field.
    # @param get_vcard_request [GetVcardRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetVcard200Response, Integer, Hash)>] GetVcard200Response data, response status code and response headers
    def get_vcard_with_http_info(get_vcard_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.get_vcard ...'
      end
      # verify the required parameter 'get_vcard_request' is set
      if @api_client.config.client_side_validation && get_vcard_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_vcard_request' when calling VcardApi.get_vcard"
      end
      # resource path
      local_var_path = '/api/get_vcard'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_vcard_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetVcard200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.get_vcard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#get_vcard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get content from a vCard subfield.
    # @param get_vcard2_request [GetVcard2Request]
    # @param [Hash] opts the optional parameters
    # @return [GetVcard200Response]
    def get_vcard2(get_vcard2_request, opts = {})
      data, _status_code, _headers = get_vcard2_with_http_info(get_vcard2_request, opts)
      data
    end

    # Get content from a vCard subfield.
    # @param get_vcard2_request [GetVcard2Request]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetVcard200Response, Integer, Hash)>] GetVcard200Response data, response status code and response headers
    def get_vcard2_with_http_info(get_vcard2_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.get_vcard2 ...'
      end
      # verify the required parameter 'get_vcard2_request' is set
      if @api_client.config.client_side_validation && get_vcard2_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_vcard2_request' when calling VcardApi.get_vcard2"
      end
      # resource path
      local_var_path = '/api/get_vcard2'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_vcard2_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetVcard200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.get_vcard2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#get_vcard2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get multiple contents from a vCard field.
    # @param get_vcard2_multi_request [GetVcard2MultiRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_vcard2_multi(get_vcard2_multi_request, opts = {})
      data, _status_code, _headers = get_vcard2_multi_with_http_info(get_vcard2_multi_request, opts)
      data
    end

    # Get multiple contents from a vCard field.
    # @param get_vcard2_multi_request [GetVcard2MultiRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def get_vcard2_multi_with_http_info(get_vcard2_multi_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.get_vcard2_multi ...'
      end
      # verify the required parameter 'get_vcard2_multi_request' is set
      if @api_client.config.client_side_validation && get_vcard2_multi_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_vcard2_multi_request' when calling VcardApi.get_vcard2_multi"
      end
      # resource path
      local_var_path = '/api/get_vcard2_multi'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_vcard2_multi_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.get_vcard2_multi",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#get_vcard2_multi\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set nickname in a user's vCard.
    # @param [Hash] opts the optional parameters
    # @option opts [SetNicknameRequest] :set_nickname_request
    # @return [Integer]
    def set_nickname(opts = {})
      data, _status_code, _headers = set_nickname_with_http_info(opts)
      data
    end

    # Set nickname in a user&#39;s vCard.
    # @param [Hash] opts the optional parameters
    # @option opts [SetNicknameRequest] :set_nickname_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_nickname_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.set_nickname ...'
      end
      # resource path
      local_var_path = '/api/set_nickname'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_nickname_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.set_nickname",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#set_nickname\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set content in a vCard field.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcardRequest] :set_vcard_request
    # @return [Integer]
    def set_vcard(opts = {})
      data, _status_code, _headers = set_vcard_with_http_info(opts)
      data
    end

    # Set content in a vCard field.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcardRequest] :set_vcard_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_vcard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.set_vcard ...'
      end
      # resource path
      local_var_path = '/api/set_vcard'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_vcard_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.set_vcard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#set_vcard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set content in a vCard subfield.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcard2Request] :set_vcard2_request
    # @return [Integer]
    def set_vcard2(opts = {})
      data, _status_code, _headers = set_vcard2_with_http_info(opts)
      data
    end

    # Set content in a vCard subfield.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcard2Request] :set_vcard2_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_vcard2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.set_vcard2 ...'
      end
      # resource path
      local_var_path = '/api/set_vcard2'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_vcard2_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.set_vcard2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#set_vcard2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set multiple contents in a vCard subfield.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcard2MultiRequest] :set_vcard2_multi_request
    # @return [Integer]
    def set_vcard2_multi(opts = {})
      data, _status_code, _headers = set_vcard2_multi_with_http_info(opts)
      data
    end

    # Set multiple contents in a vCard subfield.
    # @param [Hash] opts the optional parameters
    # @option opts [SetVcard2MultiRequest] :set_vcard2_multi_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_vcard2_multi_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VcardApi.set_vcard2_multi ...'
      end
      # resource path
      local_var_path = '/api/set_vcard2_multi'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_vcard2_multi_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"VcardApi.set_vcard2_multi",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VcardApi#set_vcard2_multi\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
