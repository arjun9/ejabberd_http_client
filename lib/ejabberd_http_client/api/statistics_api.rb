=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class StatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
        @api_client.config.logger.debug 'Calling API: StatisticsApi.connected_users_number ...'
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
        :operation => :"StatisticsApi.connected_users_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#connected_users_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Number of outgoing s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [GetOutgoingS2sNumber200Response]
    def get_outgoing_s2s_number(opts = {})
      data, _status_code, _headers = get_outgoing_s2s_number_with_http_info(opts)
      data
    end

    # Number of outgoing s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOutgoingS2sNumber200Response, Integer, Hash)>] GetOutgoingS2sNumber200Response data, response status code and response headers
    def get_outgoing_s2s_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.get_outgoing_s2s_number ...'
      end
      # resource path
      local_var_path = '/api/outgoing_s2s_number'

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
      return_type = opts[:debug_return_type] || 'GetOutgoingS2sNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StatisticsApi.get_outgoing_s2s_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_outgoing_s2s_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatsRequest] :get_stats_request
    # @return [GetStats200Response]
    def get_stats(opts = {})
      data, _status_code, _headers = get_stats_with_http_info(opts)
      data
    end

    # Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatsRequest] :get_stats_request
    # @return [Array<(GetStats200Response, Integer, Hash)>] GetStats200Response data, response status code and response headers
    def get_stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.get_stats ...'
      end
      # resource path
      local_var_path = '/api/stats'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_stats_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetStats200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StatisticsApi.get_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get statistical value for this host - registeredusers, onlineusers.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatsHostRequest] :get_stats_host_request
    # @return [GetStats200Response]
    def get_stats_host(opts = {})
      data, _status_code, _headers = get_stats_host_with_http_info(opts)
      data
    end

    # Get statistical value for this host - registeredusers, onlineusers.
    # @param [Hash] opts the optional parameters
    # @option opts [GetStatsHostRequest] :get_stats_host_request
    # @return [Array<(GetStats200Response, Integer, Hash)>] GetStats200Response data, response status code and response headers
    def get_stats_host_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.get_stats_host ...'
      end
      # resource path
      local_var_path = '/api/stats_host'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'get_stats_host_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetStats200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StatisticsApi.get_stats_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_stats_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: StatisticsApi.get_status_num ...'
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
        :operation => :"StatisticsApi.get_status_num",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_status_num\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: StatisticsApi.get_status_num_host ...'
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
        :operation => :"StatisticsApi.get_status_num_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_status_num_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Number of incoming s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [IncomingS2sNumber200Response]
    def incoming_s2s_number(opts = {})
      data, _status_code, _headers = incoming_s2s_number_with_http_info(opts)
      data
    end

    # Number of incoming s2s connections on the node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncomingS2sNumber200Response, Integer, Hash)>] IncomingS2sNumber200Response data, response status code and response headers
    def incoming_s2s_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.incoming_s2s_number ...'
      end
      # resource path
      local_var_path = '/api/incoming_s2s_number'

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
      return_type = opts[:debug_return_type] || 'IncomingS2sNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StatisticsApi.incoming_s2s_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#incoming_s2s_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
