=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class StanzaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send a IQ set privacy stanza for a local account.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivacySetRequest] :privacy_set_request
    # @return [Integer]
    def privacy_set(opts = {})
      data, _status_code, _headers = privacy_set_with_http_info(opts)
      data
    end

    # Send a IQ set privacy stanza for a local account.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivacySetRequest] :privacy_set_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def privacy_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StanzaApi.privacy_set ...'
      end
      # resource path
      local_var_path = '/api/privacy_set'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'privacy_set_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StanzaApi.privacy_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StanzaApi#privacy_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a message to a local or remote bare of full JID.
    # @param [Hash] opts the optional parameters
    # @option opts [SendMessageRequest] :send_message_request
    # @return [Integer]
    def send_message(opts = {})
      data, _status_code, _headers = send_message_with_http_info(opts)
      data
    end

    # Send a message to a local or remote bare of full JID.
    # @param [Hash] opts the optional parameters
    # @option opts [SendMessageRequest] :send_message_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def send_message_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StanzaApi.send_message ...'
      end
      # resource path
      local_var_path = '/api/send_message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_message_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StanzaApi.send_message",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StanzaApi#send_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a stanza; provide From JID and valid To JID.
    # @param [Hash] opts the optional parameters
    # @option opts [SendStanzaRequest] :send_stanza_request
    # @return [Integer]
    def send_stanza(opts = {})
      data, _status_code, _headers = send_stanza_with_http_info(opts)
      data
    end

    # Send a stanza; provide From JID and valid To JID.
    # @param [Hash] opts the optional parameters
    # @option opts [SendStanzaRequest] :send_stanza_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def send_stanza_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StanzaApi.send_stanza ...'
      end
      # resource path
      local_var_path = '/api/send_stanza'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_stanza_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StanzaApi.send_stanza",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StanzaApi#send_stanza\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a stanza from an existing C2S session.
    # @param [Hash] opts the optional parameters
    # @option opts [SendStanzaC2SRequest] :send_stanza_c2_s_request
    # @return [Integer]
    def send_stanza_c2_s(opts = {})
      data, _status_code, _headers = send_stanza_c2_s_with_http_info(opts)
      data
    end

    # Send a stanza from an existing C2S session.
    # @param [Hash] opts the optional parameters
    # @option opts [SendStanzaC2SRequest] :send_stanza_c2_s_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def send_stanza_c2_s_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StanzaApi.send_stanza_c2_s ...'
      end
      # resource path
      local_var_path = '/api/send_stanza_c2s'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_stanza_c2_s_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StanzaApi.send_stanza_c2_s",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StanzaApi#send_stanza_c2_s\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
