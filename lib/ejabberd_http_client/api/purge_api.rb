=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class PurgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Abort currently running delete old MAM messages operation.
    # @param abort_delete_old_mam_messages_request [AbortDeleteOldMamMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [AbortDeleteOldMamMessages200Response]
    def abort_delete_old_mam_messages(abort_delete_old_mam_messages_request, opts = {})
      data, _status_code, _headers = abort_delete_old_mam_messages_with_http_info(abort_delete_old_mam_messages_request, opts)
      data
    end

    # Abort currently running delete old MAM messages operation.
    # @param abort_delete_old_mam_messages_request [AbortDeleteOldMamMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AbortDeleteOldMamMessages200Response, Integer, Hash)>] AbortDeleteOldMamMessages200Response data, response status code and response headers
    def abort_delete_old_mam_messages_with_http_info(abort_delete_old_mam_messages_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.abort_delete_old_mam_messages ...'
      end
      # verify the required parameter 'abort_delete_old_mam_messages_request' is set
      if @api_client.config.client_side_validation && abort_delete_old_mam_messages_request.nil?
        fail ArgumentError, "Missing the required parameter 'abort_delete_old_mam_messages_request' when calling PurgeApi.abort_delete_old_mam_messages"
      end
      # resource path
      local_var_path = '/api/abort_delete_old_mam_messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(abort_delete_old_mam_messages_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AbortDeleteOldMamMessages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.abort_delete_old_mam_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#abort_delete_old_mam_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Abort currently running delete old offline messages operation.
    # @param abort_delete_old_mam_messages_request [AbortDeleteOldMamMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [AbortDeleteOldMamMessages200Response]
    def abort_delete_old_messages(abort_delete_old_mam_messages_request, opts = {})
      data, _status_code, _headers = abort_delete_old_messages_with_http_info(abort_delete_old_mam_messages_request, opts)
      data
    end

    # Abort currently running delete old offline messages operation.
    # @param abort_delete_old_mam_messages_request [AbortDeleteOldMamMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AbortDeleteOldMamMessages200Response, Integer, Hash)>] AbortDeleteOldMamMessages200Response data, response status code and response headers
    def abort_delete_old_messages_with_http_info(abort_delete_old_mam_messages_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.abort_delete_old_messages ...'
      end
      # verify the required parameter 'abort_delete_old_mam_messages_request' is set
      if @api_client.config.client_side_validation && abort_delete_old_mam_messages_request.nil?
        fail ArgumentError, "Missing the required parameter 'abort_delete_old_mam_messages_request' when calling PurgeApi.abort_delete_old_messages"
      end
      # resource path
      local_var_path = '/api/abort_delete_old_messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(abort_delete_old_mam_messages_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AbortDeleteOldMamMessages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.abort_delete_old_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#abort_delete_old_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete expired offline messages from database.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_expired_messages(opts = {})
      delete_expired_messages_with_http_info(opts)
      nil
    end

    # Delete expired offline messages from database.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_expired_messages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_expired_messages ...'
      end
      # resource path
      local_var_path = '/api/delete_expired_messages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_expired_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_expired_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete expired PubSub items.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_expired_pubsub_items(opts = {})
      delete_expired_pubsub_items_with_http_info(opts)
      nil
    end

    # Delete expired PubSub items.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_expired_pubsub_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_expired_pubsub_items ...'
      end
      # resource path
      local_var_path = '/api/delete_expired_pubsub_items'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_expired_pubsub_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_expired_pubsub_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MAM messages older than DAYS.
    # @param delete_old_mam_messages_request [DeleteOldMAMMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_old_mam_messages(delete_old_mam_messages_request, opts = {})
      delete_old_mam_messages_with_http_info(delete_old_mam_messages_request, opts)
      nil
    end

    # Delete MAM messages older than DAYS.
    # @param delete_old_mam_messages_request [DeleteOldMAMMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_old_mam_messages_with_http_info(delete_old_mam_messages_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_mam_messages ...'
      end
      # verify the required parameter 'delete_old_mam_messages_request' is set
      if @api_client.config.client_side_validation && delete_old_mam_messages_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_mam_messages_request' when calling PurgeApi.delete_old_mam_messages"
      end
      # resource path
      local_var_path = '/api/delete_old_mam_messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_mam_messages_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_mam_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_mam_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MAM messages older than DAYS in batches.
    # @param delete_old_mam_messages_batch_request [DeleteOldMAMMessagesBatchRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_old_mam_messages_batch(delete_old_mam_messages_batch_request, opts = {})
      delete_old_mam_messages_batch_with_http_info(delete_old_mam_messages_batch_request, opts)
      nil
    end

    # Delete MAM messages older than DAYS in batches.
    # @param delete_old_mam_messages_batch_request [DeleteOldMAMMessagesBatchRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_old_mam_messages_batch_with_http_info(delete_old_mam_messages_batch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_mam_messages_batch ...'
      end
      # verify the required parameter 'delete_old_mam_messages_batch_request' is set
      if @api_client.config.client_side_validation && delete_old_mam_messages_batch_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_mam_messages_batch_request' when calling PurgeApi.delete_old_mam_messages_batch"
      end
      # resource path
      local_var_path = '/api/delete_old_mam_messages_batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_mam_messages_batch_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_mam_messages_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_mam_messages_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Status of delete old MAM messages operation.
    # @param delete_old_mam_messages_status_request [DeleteOldMAMMessagesStatusRequest]
    # @param [Hash] opts the optional parameters
    # @return [AbortDeleteOldMamMessages200Response]
    def delete_old_mam_messages_status(delete_old_mam_messages_status_request, opts = {})
      data, _status_code, _headers = delete_old_mam_messages_status_with_http_info(delete_old_mam_messages_status_request, opts)
      data
    end

    # Status of delete old MAM messages operation.
    # @param delete_old_mam_messages_status_request [DeleteOldMAMMessagesStatusRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AbortDeleteOldMamMessages200Response, Integer, Hash)>] AbortDeleteOldMamMessages200Response data, response status code and response headers
    def delete_old_mam_messages_status_with_http_info(delete_old_mam_messages_status_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_mam_messages_status ...'
      end
      # verify the required parameter 'delete_old_mam_messages_status_request' is set
      if @api_client.config.client_side_validation && delete_old_mam_messages_status_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_mam_messages_status_request' when calling PurgeApi.delete_old_mam_messages_status"
      end
      # resource path
      local_var_path = '/api/delete_old_mam_messages_status'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_mam_messages_status_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AbortDeleteOldMamMessages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_mam_messages_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_mam_messages_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete offline messages older than DAYS.
    # @param delete_old_messages_request [DeleteOldMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_old_messages(delete_old_messages_request, opts = {})
      delete_old_messages_with_http_info(delete_old_messages_request, opts)
      nil
    end

    # Delete offline messages older than DAYS.
    # @param delete_old_messages_request [DeleteOldMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_old_messages_with_http_info(delete_old_messages_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_messages ...'
      end
      # verify the required parameter 'delete_old_messages_request' is set
      if @api_client.config.client_side_validation && delete_old_messages_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_messages_request' when calling PurgeApi.delete_old_messages"
      end
      # resource path
      local_var_path = '/api/delete_old_messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_messages_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete offline messages older than DAYS.
    # @param delete_old_messages_batch_request [DeleteOldMessagesBatchRequest]
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_old_messages_batch(delete_old_messages_batch_request, opts = {})
      data, _status_code, _headers = delete_old_messages_batch_with_http_info(delete_old_messages_batch_request, opts)
      data
    end

    # Delete offline messages older than DAYS.
    # @param delete_old_messages_batch_request [DeleteOldMessagesBatchRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def delete_old_messages_batch_with_http_info(delete_old_messages_batch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_messages_batch ...'
      end
      # verify the required parameter 'delete_old_messages_batch_request' is set
      if @api_client.config.client_side_validation && delete_old_messages_batch_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_messages_batch_request' when calling PurgeApi.delete_old_messages_batch"
      end
      # resource path
      local_var_path = '/api/delete_old_messages_batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_messages_batch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_messages_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_messages_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Status of delete old offline messages operation.
    # @param delete_old_mam_messages_status_request [DeleteOldMAMMessagesStatusRequest]
    # @param [Hash] opts the optional parameters
    # @return [AbortDeleteOldMamMessages200Response]
    def delete_old_messages_status(delete_old_mam_messages_status_request, opts = {})
      data, _status_code, _headers = delete_old_messages_status_with_http_info(delete_old_mam_messages_status_request, opts)
      data
    end

    # Status of delete old offline messages operation.
    # @param delete_old_mam_messages_status_request [DeleteOldMAMMessagesStatusRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AbortDeleteOldMamMessages200Response, Integer, Hash)>] AbortDeleteOldMamMessages200Response data, response status code and response headers
    def delete_old_messages_status_with_http_info(delete_old_mam_messages_status_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_messages_status ...'
      end
      # verify the required parameter 'delete_old_mam_messages_status_request' is set
      if @api_client.config.client_side_validation && delete_old_mam_messages_status_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_mam_messages_status_request' when calling PurgeApi.delete_old_messages_status"
      end
      # resource path
      local_var_path = '/api/delete_old_messages_status'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_mam_messages_status_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AbortDeleteOldMamMessages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_messages_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_messages_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Keep only NUMBER of PubSub items per node.
    # @param delete_old_pubsub_items_request [DeleteOldPubsubItemsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def delete_old_pubsub_items(delete_old_pubsub_items_request, opts = {})
      data, _status_code, _headers = delete_old_pubsub_items_with_http_info(delete_old_pubsub_items_request, opts)
      data
    end

    # Keep only NUMBER of PubSub items per node.
    # @param delete_old_pubsub_items_request [DeleteOldPubsubItemsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def delete_old_pubsub_items_with_http_info(delete_old_pubsub_items_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_pubsub_items ...'
      end
      # verify the required parameter 'delete_old_pubsub_items_request' is set
      if @api_client.config.client_side_validation && delete_old_pubsub_items_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_pubsub_items_request' when calling PurgeApi.delete_old_pubsub_items"
      end
      # resource path
      local_var_path = '/api/delete_old_pubsub_items'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_pubsub_items_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_pubsub_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_pubsub_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove push sessions older than DAYS.
    # @param delete_old_messages_request [DeleteOldMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def delete_old_push_sessions(delete_old_messages_request, opts = {})
      data, _status_code, _headers = delete_old_push_sessions_with_http_info(delete_old_messages_request, opts)
      data
    end

    # Remove push sessions older than DAYS.
    # @param delete_old_messages_request [DeleteOldMessagesRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def delete_old_push_sessions_with_http_info(delete_old_messages_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_push_sessions ...'
      end
      # verify the required parameter 'delete_old_messages_request' is set
      if @api_client.config.client_side_validation && delete_old_messages_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_messages_request' when calling PurgeApi.delete_old_push_sessions"
      end
      # resource path
      local_var_path = '/api/delete_old_push_sessions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_old_messages_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PurgeApi.delete_old_push_sessions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_push_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: PurgeApi.delete_old_users ...'
      end
      # verify the required parameter 'delete_old_users_request' is set
      if @api_client.config.client_side_validation && delete_old_users_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_old_users_request' when calling PurgeApi.delete_old_users"
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
        :operation => :"PurgeApi.delete_old_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#delete_old_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
