=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class DocumentationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generates html documentation for ejabberd_commands.
    # @param gen_html_doc_for_commands_request [GenHtmlDocForCommandsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def gen_html_doc_for_commands(gen_html_doc_for_commands_request, opts = {})
      data, _status_code, _headers = gen_html_doc_for_commands_with_http_info(gen_html_doc_for_commands_request, opts)
      data
    end

    # Generates html documentation for ejabberd_commands.
    # @param gen_html_doc_for_commands_request [GenHtmlDocForCommandsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def gen_html_doc_for_commands_with_http_info(gen_html_doc_for_commands_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentationApi.gen_html_doc_for_commands ...'
      end
      # verify the required parameter 'gen_html_doc_for_commands_request' is set
      if @api_client.config.client_side_validation && gen_html_doc_for_commands_request.nil?
        fail ArgumentError, "Missing the required parameter 'gen_html_doc_for_commands_request' when calling DocumentationApi.gen_html_doc_for_commands"
      end
      # resource path
      local_var_path = '/api/gen_html_doc_for_commands'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gen_html_doc_for_commands_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DocumentationApi.gen_html_doc_for_commands",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentationApi#gen_html_doc_for_commands\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates markdown documentation for ejabberd_commands.
    # @param gen_html_doc_for_commands_request [GenHtmlDocForCommandsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def gen_markdown_doc_for_commands(gen_html_doc_for_commands_request, opts = {})
      data, _status_code, _headers = gen_markdown_doc_for_commands_with_http_info(gen_html_doc_for_commands_request, opts)
      data
    end

    # Generates markdown documentation for ejabberd_commands.
    # @param gen_html_doc_for_commands_request [GenHtmlDocForCommandsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def gen_markdown_doc_for_commands_with_http_info(gen_html_doc_for_commands_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentationApi.gen_markdown_doc_for_commands ...'
      end
      # verify the required parameter 'gen_html_doc_for_commands_request' is set
      if @api_client.config.client_side_validation && gen_html_doc_for_commands_request.nil?
        fail ArgumentError, "Missing the required parameter 'gen_html_doc_for_commands_request' when calling DocumentationApi.gen_markdown_doc_for_commands"
      end
      # resource path
      local_var_path = '/api/gen_markdown_doc_for_commands'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gen_html_doc_for_commands_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DocumentationApi.gen_markdown_doc_for_commands",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentationApi#gen_markdown_doc_for_commands\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates markdown documentation for ejabberd_commands.
    # @param gen_markdown_doc_for_tags_request [GenMarkdownDocForTagsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def gen_markdown_doc_for_tags(gen_markdown_doc_for_tags_request, opts = {})
      data, _status_code, _headers = gen_markdown_doc_for_tags_with_http_info(gen_markdown_doc_for_tags_request, opts)
      data
    end

    # Generates markdown documentation for ejabberd_commands.
    # @param gen_markdown_doc_for_tags_request [GenMarkdownDocForTagsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def gen_markdown_doc_for_tags_with_http_info(gen_markdown_doc_for_tags_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentationApi.gen_markdown_doc_for_tags ...'
      end
      # verify the required parameter 'gen_markdown_doc_for_tags_request' is set
      if @api_client.config.client_side_validation && gen_markdown_doc_for_tags_request.nil?
        fail ArgumentError, "Missing the required parameter 'gen_markdown_doc_for_tags_request' when calling DocumentationApi.gen_markdown_doc_for_tags"
      end
      # resource path
      local_var_path = '/api/gen_markdown_doc_for_tags'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gen_markdown_doc_for_tags_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DocumentationApi.gen_markdown_doc_for_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentationApi#gen_markdown_doc_for_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate Unix manpage for current ejabberd version.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def generate_manpage(opts = {})
      generate_manpage_with_http_info(opts)
      nil
    end

    # Generate Unix manpage for current ejabberd version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def generate_manpage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentationApi.generate_manpage ...'
      end
      # resource path
      local_var_path = '/api/man'

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
        :operation => :"DocumentationApi.generate_manpage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentationApi#generate_manpage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
