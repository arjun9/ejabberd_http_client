=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class RosterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an item to a user's roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).
    # @param add_roster_item_request [AddRosterItemRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_roster_item(add_roster_item_request, opts = {})
      add_roster_item_with_http_info(add_roster_item_request, opts)
      nil
    end

    # Add an item to a user&#39;s roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).
    # @param add_roster_item_request [AddRosterItemRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_roster_item_with_http_info(add_roster_item_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.add_roster_item ...'
      end
      # verify the required parameter 'add_roster_item_request' is set
      if @api_client.config.client_side_validation && add_roster_item_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_roster_item_request' when calling RosterApi.add_roster_item"
      end
      # resource path
      local_var_path = '/api/add_rosteritem'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_roster_item_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.add_roster_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#add_roster_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of contacts in a local user roster.
    # @param get_offline_count_request [GetOfflineCountRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetRoster200ResponseInner>]
    def get_roster(get_offline_count_request, opts = {})
      data, _status_code, _headers = get_roster_with_http_info(get_offline_count_request, opts)
      data
    end

    # Get list of contacts in a local user roster.
    # @param get_offline_count_request [GetOfflineCountRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetRoster200ResponseInner>, Integer, Hash)>] Array<GetRoster200ResponseInner> data, response status code and response headers
    def get_roster_with_http_info(get_offline_count_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.get_roster ...'
      end
      # verify the required parameter 'get_offline_count_request' is set
      if @api_client.config.client_side_validation && get_offline_count_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_offline_count_request' when calling RosterApi.get_roster"
      end
      # resource path
      local_var_path = '/api/get_roster'

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
      return_type = opts[:debug_return_type] || 'Array<GetRoster200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.get_roster",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#get_roster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List/delete rosteritems that match filter.
    # @param [Hash] opts the optional parameters
    # @option opts [ProcessRosterItemsRequest] :process_roster_items_request
    # @return [Array<ProcessRosterItems200ResponseInner>]
    def process_roster_items(opts = {})
      data, _status_code, _headers = process_roster_items_with_http_info(opts)
      data
    end

    # List/delete rosteritems that match filter.
    # @param [Hash] opts the optional parameters
    # @option opts [ProcessRosterItemsRequest] :process_roster_items_request
    # @return [Array<(Array<ProcessRosterItems200ResponseInner>, Integer, Hash)>] Array<ProcessRosterItems200ResponseInner> data, response status code and response headers
    def process_roster_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.process_roster_items ...'
      end
      # resource path
      local_var_path = '/api/process_rosteritems'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'process_roster_items_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ProcessRosterItems200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.process_roster_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#process_roster_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add all the users to all the users of Host in Group.
    # @param [Hash] opts the optional parameters
    # @option opts [PushAllToAllRequest] :push_all_to_all_request
    # @return [Integer]
    def push_all_to_all(opts = {})
      data, _status_code, _headers = push_all_to_all_with_http_info(opts)
      data
    end

    # Add all the users to all the users of Host in Group.
    # @param [Hash] opts the optional parameters
    # @option opts [PushAllToAllRequest] :push_all_to_all_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def push_all_to_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.push_all_to_all ...'
      end
      # resource path
      local_var_path = '/api/push_alltoall'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'push_all_to_all_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.push_all_to_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#push_all_to_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Push template roster from file to a user.
    # @param [Hash] opts the optional parameters
    # @option opts [PushRosterRequest] :push_roster_request
    # @return [Integer]
    def push_roster(opts = {})
      data, _status_code, _headers = push_roster_with_http_info(opts)
      data
    end

    # Push template roster from file to a user.
    # @param [Hash] opts the optional parameters
    # @option opts [PushRosterRequest] :push_roster_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def push_roster_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.push_roster ...'
      end
      # resource path
      local_var_path = '/api/push_roster'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'push_roster_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.push_roster",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#push_roster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Push template roster from file to all those users.
    # @param [Hash] opts the optional parameters
    # @option opts [PushRosterAllRequest] :push_roster_all_request
    # @return [Integer]
    def push_roster_all(opts = {})
      data, _status_code, _headers = push_roster_all_with_http_info(opts)
      data
    end

    # Push template roster from file to all those users.
    # @param [Hash] opts the optional parameters
    # @option opts [PushRosterAllRequest] :push_roster_all_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def push_roster_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RosterApi.push_roster_all ...'
      end
      # resource path
      local_var_path = '/api/push_roster_all'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'push_roster_all_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RosterApi.push_roster_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RosterApi#push_roster_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
