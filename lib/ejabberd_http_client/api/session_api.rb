=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class SessionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all established user sessions.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def connected_users(opts = {})
      data, _status_code, _headers = connected_users_with_http_info(opts)
      data
    end

    # List all established user sessions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def connected_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.connected_users ...'
      end
      # resource path
      local_var_path = '/api/connected_users'

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
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.connected_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#connected_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all established sessions and their information.
    # @param [Hash] opts the optional parameters
    # @return [Array<ConnectedUsersInfo200ResponseInner>]
    def connected_users_info(opts = {})
      data, _status_code, _headers = connected_users_info_with_http_info(opts)
      data
    end

    # List all established sessions and their information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ConnectedUsersInfo200ResponseInner>, Integer, Hash)>] Array<ConnectedUsersInfo200ResponseInner> data, response status code and response headers
    def connected_users_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.connected_users_info ...'
      end
      # resource path
      local_var_path = '/api/connected_users_info'

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
      return_type = opts[:debug_return_type] || 'Array<ConnectedUsersInfo200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.connected_users_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#connected_users_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the number of established sessions.
    # @param [Hash] opts the optional parameters
    # @return [ConnectedUsersNumber200Response]
    def connected_users_number(opts = {})
      data, _status_code, _headers = connected_users_number_with_http_info(opts)
      data
    end

    # Get the number of established sessions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConnectedUsersNumber200Response, Integer, Hash)>] ConnectedUsersNumber200Response data, response status code and response headers
    def connected_users_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.connected_users_number ...'
      end
      # resource path
      local_var_path = '/api/connected_users_number'

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
      return_type = opts[:debug_return_type] || 'ConnectedUsersNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.connected_users_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#connected_users_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of established sessions in a vhost.
    # @param connected_users_v_host_request [ConnectedUsersVHostRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def connected_users_v_host(connected_users_v_host_request, opts = {})
      data, _status_code, _headers = connected_users_v_host_with_http_info(connected_users_v_host_request, opts)
      data
    end

    # Get the list of established sessions in a vhost.
    # @param connected_users_v_host_request [ConnectedUsersVHostRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def connected_users_v_host_with_http_info(connected_users_v_host_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.connected_users_v_host ...'
      end
      # verify the required parameter 'connected_users_v_host_request' is set
      if @api_client.config.client_side_validation && connected_users_v_host_request.nil?
        fail ArgumentError, "Missing the required parameter 'connected_users_v_host_request' when calling SessionApi.connected_users_v_host"
      end
      # resource path
      local_var_path = '/api/connected_users_vhost'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(connected_users_v_host_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.connected_users_v_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#connected_users_v_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the number of resources of a user.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetNumResources200Response]
    def get_num_resources(get_last_request, opts = {})
      data, _status_code, _headers = get_num_resources_with_http_info(get_last_request, opts)
      data
    end

    # Get the number of resources of a user.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetNumResources200Response, Integer, Hash)>] GetNumResources200Response data, response status code and response headers
    def get_num_resources_with_http_info(get_last_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_num_resources ...'
      end
      # verify the required parameter 'get_last_request' is set
      if @api_client.config.client_side_validation && get_last_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_last_request' when calling SessionApi.get_num_resources"
      end
      # resource path
      local_var_path = '/api/num_resources'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_last_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetNumResources200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_num_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_num_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the resource with highest priority, and its presence for a given user.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetPresence200Response]
    def get_presence(get_last_request, opts = {})
      data, _status_code, _headers = get_presence_with_http_info(get_last_request, opts)
      data
    end

    # Retrieve the resource with highest priority, and its presence for a given user.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetPresence200Response, Integer, Hash)>] GetPresence200Response data, response status code and response headers
    def get_presence_with_http_info(get_last_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_presence ...'
      end
      # verify the required parameter 'get_last_request' is set
      if @api_client.config.client_side_validation && get_last_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_last_request' when calling SessionApi.get_presence"
      end
      # resource path
      local_var_path = '/api/get_presence'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_last_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetPresence200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_presence",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_presence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of logged users with this status.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListRequest] :get_status_list_request
    # @return [Array<GetStatusList200ResponseInner>]
    def get_status_list(opts = {})
      data, _status_code, _headers = get_status_list_with_http_info(opts)
      data
    end

    # List of logged users with this status.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListRequest] :get_status_list_request
    # @return [Array<(Array<GetStatusList200ResponseInner>, Integer, Hash)>] Array<GetStatusList200ResponseInner> data, response status code and response headers
    def get_status_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_status_list ...'
      end
      # resource path
      local_var_path = '/api/status_list'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_status_list_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetStatusList200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_status_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_status_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of users logged in host with their statuses.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListHostRequest] :get_status_list_host_request
    # @return [Array<GetStatusList200ResponseInner>]
    def get_status_list_host(opts = {})
      data, _status_code, _headers = get_status_list_host_with_http_info(opts)
      data
    end

    # List of users logged in host with their statuses.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListHostRequest] :get_status_list_host_request
    # @return [Array<(Array<GetStatusList200ResponseInner>, Integer, Hash)>] Array<GetStatusList200ResponseInner> data, response status code and response headers
    def get_status_list_host_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_status_list_host ...'
      end
      # resource path
      local_var_path = '/api/status_list_host'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_status_list_host_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetStatusList200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_status_list_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_status_list_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Number of logged users with a specific status.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListRequest] :get_status_list_request
    # @return [GetStatusNum200Response]
    def get_status_num(opts = {})
      data, _status_code, _headers = get_status_num_with_http_info(opts)
      data
    end

    # Number of logged users with a specific status.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListRequest] :get_status_list_request
    # @return [Array<(GetStatusNum200Response, Integer, Hash)>] GetStatusNum200Response data, response status code and response headers
    def get_status_num_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_status_num ...'
      end
      # resource path
      local_var_path = '/api/status_num'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_status_list_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetStatusNum200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_status_num",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_status_num\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Number of logged users with a specific status in a host.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListHostRequest] :get_status_list_host_request
    # @return [GetStatusNum200Response]
    def get_status_num_host(opts = {})
      data, _status_code, _headers = get_status_num_host_with_http_info(opts)
      data
    end

    # Number of logged users with a specific status in a host.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatusListHostRequest] :get_status_list_host_request
    # @return [Array<(GetStatusNum200Response, Integer, Hash)>] GetStatusNum200Response data, response status code and response headers
    def get_status_num_host_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_status_num_host ...'
      end
      # resource path
      local_var_path = '/api/status_num_host'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_status_list_host_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetStatusNum200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_status_num_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_status_num_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about all sessions of a user.
    # @param [Hash] opts the optional parameters
    # @option opts [GetLastRequest] :get_last_request
    # @return [Array<GetUserSessionsInfo200ResponseInner>]
    def get_user_sessions_info(opts = {})
      data, _status_code, _headers = get_user_sessions_info_with_http_info(opts)
      data
    end

    # Get information about all sessions of a user.
    # @param [Hash] opts the optional parameters
    # @option opts [GetLastRequest] :get_last_request
    # @return [Array<(Array<GetUserSessionsInfo200ResponseInner>, Integer, Hash)>] Array<GetUserSessionsInfo200ResponseInner> data, response status code and response headers
    def get_user_sessions_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get_user_sessions_info ...'
      end
      # resource path
      local_var_path = '/api/user_sessions_info'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_last_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetUserSessionsInfo200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.get_user_sessions_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get_user_sessions_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Kick a user session.
    # @param kick_session_request [KickSessionRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def kick_session(kick_session_request, opts = {})
      kick_session_with_http_info(kick_session_request, opts)
      nil
    end

    # Kick a user session.
    # @param kick_session_request [KickSessionRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def kick_session_with_http_info(kick_session_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.kick_session ...'
      end
      # verify the required parameter 'kick_session_request' is set
      if @api_client.config.client_side_validation && kick_session_request.nil?
        fail ArgumentError, "Missing the required parameter 'kick_session_request' when calling SessionApi.kick_session"
      end
      # resource path
      local_var_path = '/api/kick_session'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(kick_session_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.kick_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#kick_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disconnect user's active sessions.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [KickUser200Response]
    def kick_user(get_last_request, opts = {})
      data, _status_code, _headers = kick_user_with_http_info(get_last_request, opts)
      data
    end

    # Disconnect user&#39;s active sessions.
    # @param get_last_request [GetLastRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(KickUser200Response, Integer, Hash)>] KickUser200Response data, response status code and response headers
    def kick_user_with_http_info(get_last_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.kick_user ...'
      end
      # verify the required parameter 'get_last_request' is set
      if @api_client.config.client_side_validation && get_last_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_last_request' when calling SessionApi.kick_user"
      end
      # resource path
      local_var_path = '/api/kick_user'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_last_request)

      # return_type
      return_type = opts[:debug_return_type] || 'KickUser200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.kick_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#kick_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List a user's connected resources.
    # @param [Hash] opts the optional parameters
    # @option opts [GetLastRequest] :get_last_request
    # @return [Array<String>]
    def list_user_resources(opts = {})
      data, _status_code, _headers = list_user_resources_with_http_info(opts)
      data
    end

    # List a user&#39;s connected resources.
    # @param [Hash] opts the optional parameters
    # @option opts [GetLastRequest] :get_last_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_user_resources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.list_user_resources ...'
      end
      # resource path
      local_var_path = '/api/user_resources'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_last_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.list_user_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#list_user_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resource string of a session number.
    # @param [Hash] opts the optional parameters
    # @option opts [ResourceNumRequest] :resource_num_request
    # @return [ResourceNum200Response]
    def resource_num(opts = {})
      data, _status_code, _headers = resource_num_with_http_info(opts)
      data
    end

    # Resource string of a session number.
    # @param [Hash] opts the optional parameters
    # @option opts [ResourceNumRequest] :resource_num_request
    # @return [Array<(ResourceNum200Response, Integer, Hash)>] ResourceNum200Response data, response status code and response headers
    def resource_num_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.resource_num ...'
      end
      # resource path
      local_var_path = '/api/resource_num'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'resource_num_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceNum200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.resource_num",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#resource_num\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set presence of a session.
    # @param [Hash] opts the optional parameters
    # @option opts [SetPresenceRequest] :set_presence_request
    # @return [Integer]
    def set_presence(opts = {})
      data, _status_code, _headers = set_presence_with_http_info(opts)
      data
    end

    # Set presence of a session.
    # @param [Hash] opts the optional parameters
    # @option opts [SetPresenceRequest] :set_presence_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_presence_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.set_presence ...'
      end
      # resource path
      local_var_path = '/api/set_presence'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_presence_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SessionApi.set_presence",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#set_presence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
