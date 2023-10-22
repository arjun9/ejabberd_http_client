=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class SqlApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Convert the passwords of users to SCRAM for a given vhost.
    # @param convert_to_scram_request [ConvertToScramRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def convert_to_scram(convert_to_scram_request, opts = {})
      convert_to_scram_with_http_info(convert_to_scram_request, opts)
      nil
    end

    # Convert the passwords of users to SCRAM for a given vhost.
    # @param convert_to_scram_request [ConvertToScramRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def convert_to_scram_with_http_info(convert_to_scram_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SqlApi.convert_to_scram ...'
      end
      # verify the required parameter 'convert_to_scram_request' is set
      if @api_client.config.client_side_validation && convert_to_scram_request.nil?
        fail ArgumentError, "Missing the required parameter 'convert_to_scram_request' when calling SqlApi.convert_to_scram"
      end
      # resource path
      local_var_path = '/api/convert_to_scram'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(convert_to_scram_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SqlApi.convert_to_scram",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SqlApi#convert_to_scram\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import data from Prosody.
    # @param import_prosody_request [ImportProsodyRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def import_prosody(import_prosody_request, opts = {})
      import_prosody_with_http_info(import_prosody_request, opts)
      nil
    end

    # Import data from Prosody.
    # @param import_prosody_request [ImportProsodyRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def import_prosody_with_http_info(import_prosody_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SqlApi.import_prosody ...'
      end
      # verify the required parameter 'import_prosody_request' is set
      if @api_client.config.client_side_validation && import_prosody_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_prosody_request' when calling SqlApi.import_prosody"
      end
      # resource path
      local_var_path = '/api/import_prosody'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_prosody_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SqlApi.import_prosody",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SqlApi#import_prosody\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert MS SQL, MySQL, or PostgreSQL DB to the new format.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def update_sql(opts = {})
      data, _status_code, _headers = update_sql_with_http_info(opts)
      data
    end

    # Convert MS SQL, MySQL, or PostgreSQL DB to the new format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def update_sql_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SqlApi.update_sql ...'
      end
      # resource path
      local_var_path = '/api/update_sql'

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
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"SqlApi.update_sql",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SqlApi#update_sql\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
