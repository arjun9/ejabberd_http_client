=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Ban an account by kicking sessions and setting a random password.
    # @param ban_account_request [BanAccountRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def ban_account(ban_account_request, opts = {})
      ban_account_with_http_info(ban_account_request, opts)
      nil
    end

    # Ban an account by kicking sessions and setting a random password.
    # @param ban_account_request [BanAccountRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def ban_account_with_http_info(ban_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.ban_account ...'
      end
      # verify the required parameter 'ban_account_request' is set
      if @api_client.config.client_side_validation && ban_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'ban_account_request' when calling AccountsApi.ban_account"
      end
      # resource path
      local_var_path = '/api/ban_account'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ban_account_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.ban_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#ban_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the password of an account.
    # @param change_password_request [ChangePasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def change_password(change_password_request, opts = {})
      change_password_with_http_info(change_password_request, opts)
      nil
    end

    # Change the password of an account.
    # @param change_password_request [ChangePasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def change_password_with_http_info(change_password_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.change_password ...'
      end
      # verify the required parameter 'change_password_request' is set
      if @api_client.config.client_side_validation && change_password_request.nil?
        fail ArgumentError, "Missing the required parameter 'change_password_request' when calling AccountsApi.change_password"
      end
      # resource path
      local_var_path = '/api/change_password'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_password_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.change_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#change_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if an account exists or not.
    # @param check_account_request [CheckAccountRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def check_account(check_account_request, opts = {})
      check_account_with_http_info(check_account_request, opts)
      nil
    end

    # Check if an account exists or not.
    # @param check_account_request [CheckAccountRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def check_account_with_http_info(check_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.check_account ...'
      end
      # verify the required parameter 'check_account_request' is set
      if @api_client.config.client_side_validation && check_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_account_request' when calling AccountsApi.check_account"
      end
      # resource path
      local_var_path = '/api/check_account'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_account_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.check_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#check_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if a password is correct for a given user and host.
    # @param check_password_request [CheckPasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def check_password(check_password_request, opts = {})
      check_password_with_http_info(check_password_request, opts)
      nil
    end

    # Check if a password is correct for a given user and host.
    # @param check_password_request [CheckPasswordRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def check_password_with_http_info(check_password_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.check_password ...'
      end
      # verify the required parameter 'check_password_request' is set
      if @api_client.config.client_side_validation && check_password_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_password_request' when calling AccountsApi.check_password"
      end
      # resource path
      local_var_path = '/api/check_password'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_password_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.check_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#check_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.
    # @param check_password_hash_request [CheckPasswordHashRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def check_password_hash(check_password_hash_request, opts = {})
      check_password_hash_with_http_info(check_password_hash_request, opts)
      nil
    end

    # Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.
    # @param check_password_hash_request [CheckPasswordHashRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def check_password_hash_with_http_info(check_password_hash_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.check_password_hash ...'
      end
      # verify the required parameter 'check_password_hash_request' is set
      if @api_client.config.client_side_validation && check_password_hash_request.nil?
        fail ArgumentError, "Missing the required parameter 'check_password_hash_request' when calling AccountsApi.check_password_hash"
      end
      # resource path
      local_var_path = '/api/check_password_hash'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(check_password_hash_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.check_password_hash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#check_password_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete users that didn't log in last days, or that never logged.
    # @param delete_old_users_request [DeleteOldUsersRequest]
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_old_users(delete_old_users_request, opts = {})
      data, _status_code, _headers = delete_old_users_with_http_info(delete_old_users_request, opts)
      data
    end

    # Delete users that didn&#39;t log in last days, or that never logged.
    # @param delete_old_users_request [DeleteOldUsersRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def delete_old_users_with_http_info(delete_old_users_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.delete_old_users ...'
      end
      # verify the required parameter 'delete_old_users_request' is set
      if @api_client.config.client_side_validation && delete_old_users_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_users_request' when calling AccountsApi.delete_old_users"
      end
      # resource path
      local_var_path = '/api/delete_old_users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_users_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.delete_old_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#delete_old_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a user.
    # @param [Hash] opts the optional parameters
    # @option opts [RegisterRequest] :register_request
    # @return [String]
    def register(opts = {})
      data, _status_code, _headers = register_with_http_info(opts)
      data
    end

    # Register a user.
    # @param [Hash] opts the optional parameters
    # @option opts [RegisterRequest] :register_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def register_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.register ...'
      end
      # resource path
      local_var_path = '/api/register'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'register_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.register",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#register\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all registered users in HOST.
    # @param [Hash] opts the optional parameters
    # @option opts [RegisteredUsersRequest] :registered_users_request
    # @return [Array<String>]
    def registered_users(opts = {})
      data, _status_code, _headers = registered_users_with_http_info(opts)
      data
    end

    # List all registered users in HOST.
    # @param [Hash] opts the optional parameters
    # @option opts [RegisteredUsersRequest] :registered_users_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def registered_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.registered_users ...'
      end
      # resource path
      local_var_path = '/api/registered_users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'registered_users_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.registered_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#registered_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove banned IP addresses from the fail2ban table.
    # @param [Hash] opts the optional parameters
    # @option opts [UnbanIpRequest] :unban_ip_request
    # @return [UnbanIp200Response]
    def unban_ip(opts = {})
      data, _status_code, _headers = unban_ip_with_http_info(opts)
      data
    end

    # Remove banned IP addresses from the fail2ban table.
    # @param [Hash] opts the optional parameters
    # @option opts [UnbanIpRequest] :unban_ip_request
    # @return [Array<(UnbanIp200Response, Integer, Hash)>] UnbanIp200Response data, response status code and response headers
    def unban_ip_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.unban_ip ...'
      end
      # resource path
      local_var_path = '/api/unban_ip'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'unban_ip_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'UnbanIp200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.unban_ip",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#unban_ip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unregister a user.
    # @param [Hash] opts the optional parameters
    # @option opts [UnregisterUserRequest] :unregister_user_request
    # @return [String]
    def unregister_user(opts = {})
      data, _status_code, _headers = unregister_user_with_http_info(opts)
      data
    end

    # Unregister a user.
    # @param [Hash] opts the optional parameters
    # @option opts [UnregisterUserRequest] :unregister_user_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def unregister_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.unregister_user ...'
      end
      # resource path
      local_var_path = '/api/unregister'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'unregister_user_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AccountsApi.unregister_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#unregister_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
