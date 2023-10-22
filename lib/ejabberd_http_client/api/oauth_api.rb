=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class OauthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add OAUTH client_id with implicit grant type.
    # @param add_o_auth_client_implicit_request [AddOAuthClientImplicitRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_o_auth_client_implicit(add_o_auth_client_implicit_request, opts = {})
      add_o_auth_client_implicit_with_http_info(add_o_auth_client_implicit_request, opts)
      nil
    end

    # Add OAUTH client_id with implicit grant type.
    # @param add_o_auth_client_implicit_request [AddOAuthClientImplicitRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_o_auth_client_implicit_with_http_info(add_o_auth_client_implicit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.add_o_auth_client_implicit ...'
      end
      # verify the required parameter 'add_o_auth_client_implicit_request' is set
      if @api_client.config.client_side_validation && add_o_auth_client_implicit_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_o_auth_client_implicit_request' when calling OauthApi.add_o_auth_client_implicit"
      end
      # resource path
      local_var_path = '/api/oauth_add_client_implicit'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_o_auth_client_implicit_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.add_o_auth_client_implicit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#add_o_auth_client_implicit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add OAUTH client_id with password grant type.
    # @param add_o_auth_client_password_request [AddOAuthClientPasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_o_auth_client_password(add_o_auth_client_password_request, opts = {})
      add_o_auth_client_password_with_http_info(add_o_auth_client_password_request, opts)
      nil
    end

    # Add OAUTH client_id with password grant type.
    # @param add_o_auth_client_password_request [AddOAuthClientPasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_o_auth_client_password_with_http_info(add_o_auth_client_password_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.add_o_auth_client_password ...'
      end
      # verify the required parameter 'add_o_auth_client_password_request' is set
      if @api_client.config.client_side_validation && add_o_auth_client_password_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_o_auth_client_password_request' when calling OauthApi.add_o_auth_client_password"
      end
      # resource path
      local_var_path = '/api/oauth_add_client_password'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_o_auth_client_password_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.add_o_auth_client_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#add_o_auth_client_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Issue an oauth token for the given jid.
    # @param issue_o_auth_token_request [IssueOAuthTokenRequest]
    # @param [Hash] opts the optional parameters
    # @return [IssueOAuthToken200Response]
    def issue_o_auth_token(issue_o_auth_token_request, opts = {})
      data, _status_code, _headers = issue_o_auth_token_with_http_info(issue_o_auth_token_request, opts)
      data
    end

    # Issue an oauth token for the given jid.
    # @param issue_o_auth_token_request [IssueOAuthTokenRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(IssueOAuthToken200Response, Integer, Hash)>] IssueOAuthToken200Response data, response status code and response headers
    def issue_o_auth_token_with_http_info(issue_o_auth_token_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.issue_o_auth_token ...'
      end
      # verify the required parameter 'issue_o_auth_token_request' is set
      if @api_client.config.client_side_validation && issue_o_auth_token_request.nil?
        fail ArgumentError, "Missing the required parameter 'issue_o_auth_token_request' when calling OauthApi.issue_o_auth_token"
      end
      # resource path
      local_var_path = '/api/oauth_issue_token'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(issue_o_auth_token_request)

      # return_type
      return_type = opts[:debug_return_type] || 'IssueOAuthToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.issue_o_auth_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#issue_o_auth_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List OAuth tokens, their users and scopes, and their time until expiration.
    # @param [Hash] opts the optional parameters
    # @return [Array<ListOAuthTokens200ResponseInner>]
    def list_o_auth_tokens(opts = {})
      data, _status_code, _headers = list_o_auth_tokens_with_http_info(opts)
      data
    end

    # List OAuth tokens, their users and scopes, and their time until expiration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ListOAuthTokens200ResponseInner>, Integer, Hash)>] Array<ListOAuthTokens200ResponseInner> data, response status code and response headers
    def list_o_auth_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.list_o_auth_tokens ...'
      end
      # resource path
      local_var_path = '/api/oauth_list_tokens'

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
      return_type = opts[:debug_return_type] || 'Array<ListOAuthTokens200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.list_o_auth_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#list_o_auth_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove an OAuth client_id.
    # @param remove_o_auth_client_request [RemoveOAuthClientRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_o_auth_client(remove_o_auth_client_request, opts = {})
      remove_o_auth_client_with_http_info(remove_o_auth_client_request, opts)
      nil
    end

    # Remove an OAuth client_id.
    # @param remove_o_auth_client_request [RemoveOAuthClientRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_o_auth_client_with_http_info(remove_o_auth_client_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.remove_o_auth_client ...'
      end
      # verify the required parameter 'remove_o_auth_client_request' is set
      if @api_client.config.client_side_validation && remove_o_auth_client_request.nil?
        fail ArgumentError, "Missing the required parameter 'remove_o_auth_client_request' when calling OauthApi.remove_o_auth_client"
      end
      # resource path
      local_var_path = '/api/oauth_remove_client'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(remove_o_auth_client_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.remove_o_auth_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#remove_o_auth_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke an existing OAuth token.
    # @param revoke_o_auth_token_request [RevokeOAuthTokenRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def revoke_o_auth_token(revoke_o_auth_token_request, opts = {})
      revoke_o_auth_token_with_http_info(revoke_o_auth_token_request, opts)
      nil
    end

    # Revoke an existing OAuth token.
    # @param revoke_o_auth_token_request [RevokeOAuthTokenRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def revoke_o_auth_token_with_http_info(revoke_o_auth_token_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.revoke_o_auth_token ...'
      end
      # verify the required parameter 'revoke_o_auth_token_request' is set
      if @api_client.config.client_side_validation && revoke_o_auth_token_request.nil?
        fail ArgumentError, "Missing the required parameter 'revoke_o_auth_token_request' when calling OauthApi.revoke_o_auth_token"
      end
      # resource path
      local_var_path = '/api/oauth_revoke_token'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(revoke_o_auth_token_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.revoke_o_auth_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#revoke_o_auth_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
