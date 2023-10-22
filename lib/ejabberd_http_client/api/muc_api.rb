=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class MucApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create the rooms indicated in file.
    # @param create_rooms_file_request [CreateRoomsFileRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_rooms_file(create_rooms_file_request, opts = {})
      create_rooms_file_with_http_info(create_rooms_file_request, opts)
      nil
    end

    # Create the rooms indicated in file.
    # @param create_rooms_file_request [CreateRoomsFileRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_rooms_file_with_http_info(create_rooms_file_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.create_rooms_file ...'
      end
      # verify the required parameter 'create_rooms_file_request' is set
      if @api_client.config.client_side_validation && create_rooms_file_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_rooms_file_request' when calling MucApi.create_rooms_file"
      end
      # resource path
      local_var_path = '/api/create_rooms_file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_rooms_file_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.create_rooms_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#create_rooms_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of rooms where this user is occupant.
    # @param get_user_rooms_request [GetUserRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_user_rooms(get_user_rooms_request, opts = {})
      data, _status_code, _headers = get_user_rooms_with_http_info(get_user_rooms_request, opts)
      data
    end

    # Get the list of rooms where this user is occupant.
    # @param get_user_rooms_request [GetUserRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def get_user_rooms_with_http_info(get_user_rooms_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.get_user_rooms ...'
      end
      # verify the required parameter 'get_user_rooms_request' is set
      if @api_client.config.client_side_validation && get_user_rooms_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_user_rooms_request' when calling MucApi.get_user_rooms"
      end
      # resource path
      local_var_path = '/api/get_user_rooms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_user_rooms_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.get_user_rooms",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#get_user_rooms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of rooms where this user is subscribed.
    # @param get_user_rooms_request [GetUserRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetUserSubscriptions200ResponseInner>]
    def get_user_subscriptions(get_user_rooms_request, opts = {})
      data, _status_code, _headers = get_user_subscriptions_with_http_info(get_user_rooms_request, opts)
      data
    end

    # Get the list of rooms where this user is subscribed.
    # @param get_user_rooms_request [GetUserRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetUserSubscriptions200ResponseInner>, Integer, Hash)>] Array<GetUserSubscriptions200ResponseInner> data, response status code and response headers
    def get_user_subscriptions_with_http_info(get_user_rooms_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.get_user_subscriptions ...'
      end
      # verify the required parameter 'get_user_rooms_request' is set
      if @api_client.config.client_side_validation && get_user_rooms_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_user_rooms_request' when calling MucApi.get_user_subscriptions"
      end
      # resource path
      local_var_path = '/api/get_user_subscriptions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_user_rooms_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetUserSubscriptions200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.get_user_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#get_user_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List existing rooms ('global' to get all vhosts).
    # @param list_muc_online_rooms_request [ListMucOnlineRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def list_muc_online_rooms(list_muc_online_rooms_request, opts = {})
      data, _status_code, _headers = list_muc_online_rooms_with_http_info(list_muc_online_rooms_request, opts)
      data
    end

    # List existing rooms (&#39;global&#39; to get all vhosts).
    # @param list_muc_online_rooms_request [ListMucOnlineRoomsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_muc_online_rooms_with_http_info(list_muc_online_rooms_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.list_muc_online_rooms ...'
      end
      # verify the required parameter 'list_muc_online_rooms_request' is set
      if @api_client.config.client_side_validation && list_muc_online_rooms_request.nil?
        fail ArgumentError, "Missing the required parameter 'list_muc_online_rooms_request' when calling MucApi.list_muc_online_rooms"
      end
      # resource path
      local_var_path = '/api/muc_online_rooms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_muc_online_rooms_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.list_muc_online_rooms",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#list_muc_online_rooms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List existing rooms ('global' to get all vhosts) by regex.
    # @param list_muc_online_rooms_by_regex_request [ListMucOnlineRoomsByRegexRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<ListMucOnlineRoomsByRegex200ResponseInner>]
    def list_muc_online_rooms_by_regex(list_muc_online_rooms_by_regex_request, opts = {})
      data, _status_code, _headers = list_muc_online_rooms_by_regex_with_http_info(list_muc_online_rooms_by_regex_request, opts)
      data
    end

    # List existing rooms (&#39;global&#39; to get all vhosts) by regex.
    # @param list_muc_online_rooms_by_regex_request [ListMucOnlineRoomsByRegexRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ListMucOnlineRoomsByRegex200ResponseInner>, Integer, Hash)>] Array<ListMucOnlineRoomsByRegex200ResponseInner> data, response status code and response headers
    def list_muc_online_rooms_by_regex_with_http_info(list_muc_online_rooms_by_regex_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.list_muc_online_rooms_by_regex ...'
      end
      # verify the required parameter 'list_muc_online_rooms_by_regex_request' is set
      if @api_client.config.client_side_validation && list_muc_online_rooms_by_regex_request.nil?
        fail ArgumentError, "Missing the required parameter 'list_muc_online_rooms_by_regex_request' when calling MucApi.list_muc_online_rooms_by_regex"
      end
      # resource path
      local_var_path = '/api/muc_online_rooms_by_regex'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_muc_online_rooms_by_regex_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ListMucOnlineRoomsByRegex200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.list_muc_online_rooms_by_regex",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#list_muc_online_rooms_by_regex\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a nick to a User JID in a MUC service.
    # @param register_muc_nick_request [RegisterMucNickRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def register_muc_nick(register_muc_nick_request, opts = {})
      register_muc_nick_with_http_info(register_muc_nick_request, opts)
      nil
    end

    # Register a nick to a User JID in a MUC service.
    # @param register_muc_nick_request [RegisterMucNickRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def register_muc_nick_with_http_info(register_muc_nick_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.register_muc_nick ...'
      end
      # verify the required parameter 'register_muc_nick_request' is set
      if @api_client.config.client_side_validation && register_muc_nick_request.nil?
        fail ArgumentError, "Missing the required parameter 'register_muc_nick_request' when calling MucApi.register_muc_nick"
      end
      # resource path
      local_var_path = '/api/muc_register_nick'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(register_muc_nick_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.register_muc_nick",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#register_muc_nick\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Destroy the rooms that have no messages in archive.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsEmptyDestroyRequest] :rooms_empty_destroy_request
    # @return [Array<String>]
    def rooms_empty_destroy(opts = {})
      data, _status_code, _headers = rooms_empty_destroy_with_http_info(opts)
      data
    end

    # Destroy the rooms that have no messages in archive.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsEmptyDestroyRequest] :rooms_empty_destroy_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def rooms_empty_destroy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.rooms_empty_destroy ...'
      end
      # resource path
      local_var_path = '/api/rooms_empty_destroy'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rooms_empty_destroy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.rooms_empty_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#rooms_empty_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the rooms that have no messages in archive.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsEmptyDestroyRequest] :rooms_empty_destroy_request
    # @return [Array<String>]
    def rooms_empty_list(opts = {})
      data, _status_code, _headers = rooms_empty_list_with_http_info(opts)
      data
    end

    # List the rooms that have no messages in archive.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsEmptyDestroyRequest] :rooms_empty_destroy_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def rooms_empty_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.rooms_empty_list ...'
      end
      # resource path
      local_var_path = '/api/rooms_empty_list'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rooms_empty_destroy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.rooms_empty_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#rooms_empty_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Destroy the rooms that are unused for many days in the service.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsUnusedDestroyRequest] :rooms_unused_destroy_request
    # @return [Array<String>]
    def rooms_unused_destroy(opts = {})
      data, _status_code, _headers = rooms_unused_destroy_with_http_info(opts)
      data
    end

    # Destroy the rooms that are unused for many days in the service.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsUnusedDestroyRequest] :rooms_unused_destroy_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def rooms_unused_destroy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.rooms_unused_destroy ...'
      end
      # resource path
      local_var_path = '/api/rooms_unused_destroy'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rooms_unused_destroy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.rooms_unused_destroy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#rooms_unused_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the rooms that are unused for many days in the service.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsUnusedDestroyRequest] :rooms_unused_destroy_request
    # @return [Array<String>]
    def rooms_unused_list(opts = {})
      data, _status_code, _headers = rooms_unused_list_with_http_info(opts)
      data
    end

    # List the rooms that are unused for many days in the service.
    # @param [Hash] opts the optional parameters
    # @option opts [RoomsUnusedDestroyRequest] :rooms_unused_destroy_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def rooms_unused_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.rooms_unused_list ...'
      end
      # resource path
      local_var_path = '/api/rooms_unused_list'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rooms_unused_destroy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.rooms_unused_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#rooms_unused_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unregister the nick registered by that account in the MUC service.
    # @param unregister_muc_nick_request [UnregisterMucNickRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unregister_muc_nick(unregister_muc_nick_request, opts = {})
      unregister_muc_nick_with_http_info(unregister_muc_nick_request, opts)
      nil
    end

    # Unregister the nick registered by that account in the MUC service.
    # @param unregister_muc_nick_request [UnregisterMucNickRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unregister_muc_nick_with_http_info(unregister_muc_nick_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucApi.unregister_muc_nick ...'
      end
      # verify the required parameter 'unregister_muc_nick_request' is set
      if @api_client.config.client_side_validation && unregister_muc_nick_request.nil?
        fail ArgumentError, "Missing the required parameter 'unregister_muc_nick_request' when calling MucApi.unregister_muc_nick"
      end
      # resource path
      local_var_path = '/api/muc_unregister_nick'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(unregister_muc_nick_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucApi.unregister_muc_nick",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucApi#unregister_muc_nick\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
