=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class SharedRosterGroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgCreateRequest] :srg_create_request
    # @return [Integer]
    def srg_create(opts = {})
      data, _status_code, _headers = srg_create_with_http_info(opts)
      data
    end

    # Create a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgCreateRequest] :srg_create_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def srg_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_create ...'
      end
      # resource path
      local_var_path = '/api/srg_create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_create_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Integer]
    def srg_delete(opts = {})
      data, _status_code, _headers = srg_delete_with_http_info(opts)
      data
    end

    # Delete a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def srg_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_delete ...'
      end
      # resource path
      local_var_path = '/api/srg_delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_delete_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get info of a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Array<SrgGetInfo200ResponseInner>]
    def srg_get_info(opts = {})
      data, _status_code, _headers = srg_get_info_with_http_info(opts)
      data
    end

    # Get info of a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Array<(Array<SrgGetInfo200ResponseInner>, Integer, Hash)>] Array<SrgGetInfo200ResponseInner> data, response status code and response headers
    def srg_get_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_get_info ...'
      end
      # resource path
      local_var_path = '/api/srg_get_info'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_delete_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SrgGetInfo200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_get_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_get_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get members of a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Array<String>]
    def srg_get_members(opts = {})
      data, _status_code, _headers = srg_get_members_with_http_info(opts)
      data
    end

    # Get members of a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgDeleteRequest] :srg_delete_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def srg_get_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_get_members ...'
      end
      # resource path
      local_var_path = '/api/srg_get_members'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_delete_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_get_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_get_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the Shared Roster Groups in a host.
    # @param [Hash] opts the optional parameters
    # @option opts [ConnectedUsersVHostRequest] :connected_users_v_host_request
    # @return [Array<String>]
    def srg_list(opts = {})
      data, _status_code, _headers = srg_list_with_http_info(opts)
      data
    end

    # List the Shared Roster Groups in a host.
    # @param [Hash] opts the optional parameters
    # @option opts [ConnectedUsersVHostRequest] :connected_users_v_host_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def srg_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_list ...'
      end
      # resource path
      local_var_path = '/api/srg_list'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'connected_users_v_host_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add the JID user@host to a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgUserAddRequest] :srg_user_add_request
    # @return [Integer]
    def srg_user_add(opts = {})
      data, _status_code, _headers = srg_user_add_with_http_info(opts)
      data
    end

    # Add the JID user@host to a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgUserAddRequest] :srg_user_add_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def srg_user_add_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_user_add ...'
      end
      # resource path
      local_var_path = '/api/srg_user_add'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_user_add_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_user_add",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_user_add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the JID user@host from a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgUserAddRequest] :srg_user_add_request
    # @return [Integer]
    def srg_user_del(opts = {})
      data, _status_code, _headers = srg_user_del_with_http_info(opts)
      data
    end

    # Delete the JID user@host from a Shared Roster Group.
    # @param [Hash] opts the optional parameters
    # @option opts [SrgUserAddRequest] :srg_user_add_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def srg_user_del_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SharedRosterGroupApi.srg_user_del ...'
      end
      # resource path
      local_var_path = '/api/srg_user_del'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'srg_user_add_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SharedRosterGroupApi.srg_user_del",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SharedRosterGroupApi#srg_user_del\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
