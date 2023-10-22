=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class MnesiaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Backup the Mnesia database to a binary file.
    # @param backup_request [BackupRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def backup(backup_request, opts = {})
      backup_with_http_info(backup_request, opts)
      nil
    end

    # Backup the Mnesia database to a binary file.
    # @param backup_request [BackupRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def backup_with_http_info(backup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.backup ...'
      end
      # verify the required parameter 'backup_request' is set
      if @api_client.config.client_side_validation && backup_request.nil?
        fail ArgumentError, "Missing the required parameter 'backup_request' when calling MnesiaApi.backup"
      end
      # resource path
      local_var_path = '/api/backup'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(backup_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.backup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#backup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the erlang node name in a backup file.
    # @param change_node_name_request [ChangeNodeNameRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def change_node_name(change_node_name_request, opts = {})
      change_node_name_with_http_info(change_node_name_request, opts)
      nil
    end

    # Change the erlang node name in a backup file.
    # @param change_node_name_request [ChangeNodeNameRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def change_node_name_with_http_info(change_node_name_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.change_node_name ...'
      end
      # verify the required parameter 'change_node_name_request' is set
      if @api_client.config.client_side_validation && change_node_name_request.nil?
        fail ArgumentError, "Missing the required parameter 'change_node_name_request' when calling MnesiaApi.change_node_name"
      end
      # resource path
      local_var_path = '/api/mnesia_change_nodename'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_node_name_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.change_node_name",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#change_node_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete elements in Mnesia database for a given vhost.
    # @param delete_mnesia_request [DeleteMnesiaRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_mnesia(delete_mnesia_request, opts = {})
      delete_mnesia_with_http_info(delete_mnesia_request, opts)
      nil
    end

    # Delete elements in Mnesia database for a given vhost.
    # @param delete_mnesia_request [DeleteMnesiaRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_mnesia_with_http_info(delete_mnesia_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.delete_mnesia ...'
      end
      # verify the required parameter 'delete_mnesia_request' is set
      if @api_client.config.client_side_validation && delete_mnesia_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_mnesia_request' when calling MnesiaApi.delete_mnesia"
      end
      # resource path
      local_var_path = '/api/delete_mnesia'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_mnesia_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.delete_mnesia",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#delete_mnesia\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dump the Mnesia database to a text file.
    # @param dump_request [DumpRequest]
    # @param [Hash] opts the optional parameters
    # @return [String]
    def dump(dump_request, opts = {})
      data, _status_code, _headers = dump_with_http_info(dump_request, opts)
      data
    end

    # Dump the Mnesia database to a text file.
    # @param dump_request [DumpRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def dump_with_http_info(dump_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.dump ...'
      end
      # verify the required parameter 'dump_request' is set
      if @api_client.config.client_side_validation && dump_request.nil?
        fail ArgumentError, "Missing the required parameter 'dump_request' when calling MnesiaApi.dump"
      end
      # resource path
      local_var_path = '/api/dump'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(dump_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.dump",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#dump\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dump a Mnesia table to a text file.
    # @param dump_table_request [DumpTableRequest]
    # @param [Hash] opts the optional parameters
    # @return [String]
    def dump_table(dump_table_request, opts = {})
      data, _status_code, _headers = dump_table_with_http_info(dump_table_request, opts)
      data
    end

    # Dump a Mnesia table to a text file.
    # @param dump_table_request [DumpTableRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def dump_table_with_http_info(dump_table_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.dump_table ...'
      end
      # verify the required parameter 'dump_table_request' is set
      if @api_client.config.client_side_validation && dump_table_request.nil?
        fail ArgumentError, "Missing the required parameter 'dump_table_request' when calling MnesiaApi.dump_table"
      end
      # resource path
      local_var_path = '/api/dump_table'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(dump_table_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.dump_table",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#dump_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export virtual host information from Mnesia tables to SQL file.
    # @param export2sql_request [Export2sqlRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def export2sql(export2sql_request, opts = {})
      data, _status_code, _headers = export2sql_with_http_info(export2sql_request, opts)
      data
    end

    # Export virtual host information from Mnesia tables to SQL file.
    # @param export2sql_request [Export2sqlRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def export2sql_with_http_info(export2sql_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.export2sql ...'
      end
      # verify the required parameter 'export2sql_request' is set
      if @api_client.config.client_side_validation && export2sql_request.nil?
        fail ArgumentError, "Missing the required parameter 'export2sql_request' when calling MnesiaApi.export2sql"
      end
      # resource path
      local_var_path = '/api/export2sql'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(export2sql_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.export2sql",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#export2sql\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export data of all users in the server to PIEFXIS files (XEP-0227).
    # @param export_piefxis_request [ExportPiefxisRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def export_piefxis(export_piefxis_request, opts = {})
      data, _status_code, _headers = export_piefxis_with_http_info(export_piefxis_request, opts)
      data
    end

    # Export data of all users in the server to PIEFXIS files (XEP-0227).
    # @param export_piefxis_request [ExportPiefxisRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def export_piefxis_with_http_info(export_piefxis_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.export_piefxis ...'
      end
      # verify the required parameter 'export_piefxis_request' is set
      if @api_client.config.client_side_validation && export_piefxis_request.nil?
        fail ArgumentError, "Missing the required parameter 'export_piefxis_request' when calling MnesiaApi.export_piefxis"
      end
      # resource path
      local_var_path = '/api/export_piefxis'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(export_piefxis_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.export_piefxis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#export_piefxis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export data of users in a host to PIEFXIS files (XEP-0227).
    # @param export_piefxis_host_request [ExportPiefxisHostRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def export_piefxis_host(export_piefxis_host_request, opts = {})
      data, _status_code, _headers = export_piefxis_host_with_http_info(export_piefxis_host_request, opts)
      data
    end

    # Export data of users in a host to PIEFXIS files (XEP-0227).
    # @param export_piefxis_host_request [ExportPiefxisHostRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def export_piefxis_host_with_http_info(export_piefxis_host_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.export_piefxis_host ...'
      end
      # verify the required parameter 'export_piefxis_host_request' is set
      if @api_client.config.client_side_validation && export_piefxis_host_request.nil?
        fail ArgumentError, "Missing the required parameter 'export_piefxis_host_request' when calling MnesiaApi.export_piefxis_host"
      end
      # resource path
      local_var_path = '/api/export_piefxis_host'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(export_piefxis_host_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.export_piefxis_host",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#export_piefxis_host\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dump info on global Mnesia state.
    # @param [Hash] opts the optional parameters
    # @return [ImportDir200Response]
    def global_mnesia_info(opts = {})
      data, _status_code, _headers = global_mnesia_info_with_http_info(opts)
      data
    end

    # Dump info on global Mnesia state.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def global_mnesia_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.global_mnesia_info ...'
      end
      # resource path
      local_var_path = '/api/mnesia_info'

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
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.global_mnesia_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#global_mnesia_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import users data from jabberd14 spool dir.
    # @param import_dir_request [ImportDirRequest]
    # @param [Hash] opts the optional parameters
    # @return [ImportDir200Response]
    def import_dir(import_dir_request, opts = {})
      data, _status_code, _headers = import_dir_with_http_info(import_dir_request, opts)
      data
    end

    # Import users data from jabberd14 spool dir.
    # @param import_dir_request [ImportDirRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def import_dir_with_http_info(import_dir_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.import_dir ...'
      end
      # verify the required parameter 'import_dir_request' is set
      if @api_client.config.client_side_validation && import_dir_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_dir_request' when calling MnesiaApi.import_dir"
      end
      # resource path
      local_var_path = '/api/import_dir'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_dir_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.import_dir",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#import_dir\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import user data from jabberd14 spool file.
    # @param import_file_request [ImportFileRequest]
    # @param [Hash] opts the optional parameters
    # @return [ImportDir200Response]
    def import_file(import_file_request, opts = {})
      data, _status_code, _headers = import_file_with_http_info(import_file_request, opts)
      data
    end

    # Import user data from jabberd14 spool file.
    # @param import_file_request [ImportFileRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def import_file_with_http_info(import_file_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.import_file ...'
      end
      # verify the required parameter 'import_file_request' is set
      if @api_client.config.client_side_validation && import_file_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_file_request' when calling MnesiaApi.import_file"
      end
      # resource path
      local_var_path = '/api/import_file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_file_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.import_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#import_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import users data from a PIEFXIS file (XEP-0227).
    # @param import_piefxis_request [ImportPiefxisRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def import_piefxis(import_piefxis_request, opts = {})
      import_piefxis_with_http_info(import_piefxis_request, opts)
      nil
    end

    # Import users data from a PIEFXIS file (XEP-0227).
    # @param import_piefxis_request [ImportPiefxisRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def import_piefxis_with_http_info(import_piefxis_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.import_piefxis ...'
      end
      # verify the required parameter 'import_piefxis_request' is set
      if @api_client.config.client_side_validation && import_piefxis_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_piefxis_request' when calling MnesiaApi.import_piefxis"
      end
      # resource path
      local_var_path = '/api/import_piefxis'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_piefxis_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.import_piefxis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#import_piefxis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: MnesiaApi.import_prosody ...'
      end
      # verify the required parameter 'import_prosody_request' is set
      if @api_client.config.client_side_validation && import_prosody_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_prosody_request' when calling MnesiaApi.import_prosody"
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
        :operation => :"MnesiaApi.import_prosody",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#import_prosody\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Install Mnesia database from a binary backup file.
    # @param install_fallback_request [InstallFallbackRequest]
    # @param [Hash] opts the optional parameters
    # @return [ImportDir200Response]
    def install_fallback(install_fallback_request, opts = {})
      data, _status_code, _headers = install_fallback_with_http_info(install_fallback_request, opts)
      data
    end

    # Install Mnesia database from a binary backup file.
    # @param install_fallback_request [InstallFallbackRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def install_fallback_with_http_info(install_fallback_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.install_fallback ...'
      end
      # verify the required parameter 'install_fallback_request' is set
      if @api_client.config.client_side_validation && install_fallback_request.nil?
        fail ArgumentError, "Missing the required parameter 'install_fallback_request' when calling MnesiaApi.install_fallback"
      end
      # resource path
      local_var_path = '/api/install_fallback'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(install_fallback_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.install_fallback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#install_fallback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore Mnesia database from a text dump file.
    # @param load_database_request [LoadDatabaseRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def load_database(load_database_request, opts = {})
      load_database_with_http_info(load_database_request, opts)
      nil
    end

    # Restore Mnesia database from a text dump file.
    # @param load_database_request [LoadDatabaseRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def load_database_with_http_info(load_database_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.load_database ...'
      end
      # verify the required parameter 'load_database_request' is set
      if @api_client.config.client_side_validation && load_database_request.nil?
        fail ArgumentError, "Missing the required parameter 'load_database_request' when calling MnesiaApi.load_database"
      end
      # resource path
      local_var_path = '/api/load'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(load_database_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.load_database",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#load_database\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore the Mnesia database from a binary backup file.
    # @param [Hash] opts the optional parameters
    # @option opts [RestoreRequest] :restore_request
    # @return [String]
    def restore(opts = {})
      data, _status_code, _headers = restore_with_http_info(opts)
      data
    end

    # Restore the Mnesia database from a binary backup file.
    # @param [Hash] opts the optional parameters
    # @option opts [RestoreRequest] :restore_request
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def restore_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.restore ...'
      end
      # resource path
      local_var_path = '/api/restore'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'restore_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.restore",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#restore\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dump info on Mnesia table state.
    # @param table_mnesia_info_request [TableMnesiaInfoRequest]
    # @param [Hash] opts the optional parameters
    # @return [ImportDir200Response]
    def table_mnesia_info(table_mnesia_info_request, opts = {})
      data, _status_code, _headers = table_mnesia_info_with_http_info(table_mnesia_info_request, opts)
      data
    end

    # Dump info on Mnesia table state.
    # @param table_mnesia_info_request [TableMnesiaInfoRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportDir200Response, Integer, Hash)>] ImportDir200Response data, response status code and response headers
    def table_mnesia_info_with_http_info(table_mnesia_info_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MnesiaApi.table_mnesia_info ...'
      end
      # verify the required parameter 'table_mnesia_info_request' is set
      if @api_client.config.client_side_validation && table_mnesia_info_request.nil?
        fail ArgumentError, "Missing the required parameter 'table_mnesia_info_request' when calling MnesiaApi.table_mnesia_info"
      end
      # resource path
      local_var_path = '/api/mnesia_table_info'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(table_mnesia_info_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ImportDir200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MnesiaApi.table_mnesia_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MnesiaApi#table_mnesia_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
