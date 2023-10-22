=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class ClusterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Join this node into the cluster handled by Node.
    # @param join_cluster_request [JoinClusterRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def join_cluster(join_cluster_request, opts = {})
      join_cluster_with_http_info(join_cluster_request, opts)
      nil
    end

    # Join this node into the cluster handled by Node.
    # @param join_cluster_request [JoinClusterRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def join_cluster_with_http_info(join_cluster_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.join_cluster ...'
      end
      # verify the required parameter 'join_cluster_request' is set
      if @api_client.config.client_side_validation && join_cluster_request.nil?
        fail ArgumentError, "Missing the required parameter 'join_cluster_request' when calling ClusterApi.join_cluster"
      end
      # resource path
      local_var_path = '/api/join_cluster'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(join_cluster_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ClusterApi.join_cluster",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#join_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove and shutdown Node from the running cluster.
    # @param leave_cluster_request [LeaveClusterRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def leave_cluster(leave_cluster_request, opts = {})
      leave_cluster_with_http_info(leave_cluster_request, opts)
      nil
    end

    # Remove and shutdown Node from the running cluster.
    # @param leave_cluster_request [LeaveClusterRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def leave_cluster_with_http_info(leave_cluster_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.leave_cluster ...'
      end
      # verify the required parameter 'leave_cluster_request' is set
      if @api_client.config.client_side_validation && leave_cluster_request.nil?
        fail ArgumentError, "Missing the required parameter 'leave_cluster_request' when calling ClusterApi.leave_cluster"
      end
      # resource path
      local_var_path = '/api/leave_cluster'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(leave_cluster_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ClusterApi.leave_cluster",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#leave_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List nodes that are part of the cluster handled by Node.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def list_cluster(opts = {})
      data, _status_code, _headers = list_cluster_with_http_info(opts)
      data
    end

    # List nodes that are part of the cluster handled by Node.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_cluster_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.list_cluster ...'
      end
      # resource path
      local_var_path = '/api/list_cluster'

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
        :operation => :"ClusterApi.list_cluster",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#list_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set master node of the clustered Mnesia tables.
    # @param [Hash] opts the optional parameters
    # @option opts [SetMasterRequest] :set_master_request
    # @return [String]
    def set_master(opts = {})
      data, _status_code, _headers = set_master_with_http_info(opts)
      data
    end

    # Set master node of the clustered Mnesia tables.
    # @param [Hash] opts the optional parameters
    # @option opts [SetMasterRequest] :set_master_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def set_master_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterApi.set_master ...'
      end
      # resource path
      local_var_path = '/api/set_master'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_master_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"ClusterApi.set_master",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterApi#set_master\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
