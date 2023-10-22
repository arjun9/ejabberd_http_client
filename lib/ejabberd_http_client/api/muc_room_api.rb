=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module EjabberdHttpClient
  class MucRoomApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change an option in a MUC room.
    # @param change_room_option_request [ChangeRoomOptionRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def change_room_option(change_room_option_request, opts = {})
      change_room_option_with_http_info(change_room_option_request, opts)
      nil
    end

    # Change an option in a MUC room.
    # @param change_room_option_request [ChangeRoomOptionRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def change_room_option_with_http_info(change_room_option_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.change_room_option ...'
      end
      # verify the required parameter 'change_room_option_request' is set
      if @api_client.config.client_side_validation && change_room_option_request.nil?
        fail ArgumentError, "Missing the required parameter 'change_room_option_request' when calling MucRoomApi.change_room_option"
      end
      # resource path
      local_var_path = '/api/change_room_option'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(change_room_option_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.change_room_option",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#change_room_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a MUC room using name@service in the given host.
    # @param create_room_request [CreateRoomRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_room(create_room_request, opts = {})
      create_room_with_http_info(create_room_request, opts)
      nil
    end

    # Create a MUC room using name@service in the given host.
    # @param create_room_request [CreateRoomRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_room_with_http_info(create_room_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.create_room ...'
      end
      # verify the required parameter 'create_room_request' is set
      if @api_client.config.client_side_validation && create_room_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_room_request' when calling MucRoomApi.create_room"
      end
      # resource path
      local_var_path = '/api/create_room'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_room_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.create_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#create_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a MUC room using name@service in the given host with specific options.
    # @param create_room_with_options_request [CreateRoomWithOptionsRequest]
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_room_with_options(create_room_with_options_request, opts = {})
      create_room_with_options_with_http_info(create_room_with_options_request, opts)
      nil
    end

    # Create a MUC room using name@service in the given host with specific options.
    # @param create_room_with_options_request [CreateRoomWithOptionsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_room_with_options_with_http_info(create_room_with_options_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.create_room_with_options ...'
      end
      # verify the required parameter 'create_room_with_options_request' is set
      if @api_client.config.client_side_validation && create_room_with_options_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_room_with_options_request' when calling MucRoomApi.create_room_with_options"
      end
      # resource path
      local_var_path = '/api/create_room_with_opts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_room_with_options_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.create_room_with_options",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#create_room_with_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get affiliation of a user in MUC room.
    # @param get_room_affiliation_request [GetRoomAffiliationRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetRoomAffiliation200Response]
    def get_room_affiliation(get_room_affiliation_request, opts = {})
      data, _status_code, _headers = get_room_affiliation_with_http_info(get_room_affiliation_request, opts)
      data
    end

    # Get affiliation of a user in MUC room.
    # @param get_room_affiliation_request [GetRoomAffiliationRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRoomAffiliation200Response, Integer, Hash)>] GetRoomAffiliation200Response data, response status code and response headers
    def get_room_affiliation_with_http_info(get_room_affiliation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_affiliation ...'
      end
      # verify the required parameter 'get_room_affiliation_request' is set
      if @api_client.config.client_side_validation && get_room_affiliation_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliation_request' when calling MucRoomApi.get_room_affiliation"
      end
      # resource path
      local_var_path = '/api/get_room_affiliation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetRoomAffiliation200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of affiliations of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetRoomAffiliations200ResponseInner>]
    def get_room_affiliations(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_room_affiliations_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # Get the list of affiliations of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetRoomAffiliations200ResponseInner>, Integer, Hash)>] Array<GetRoomAffiliations200ResponseInner> data, response status code and response headers
    def get_room_affiliations_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_affiliations ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_room_affiliations"
      end
      # resource path
      local_var_path = '/api/get_room_affiliations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetRoomAffiliations200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_affiliations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_affiliations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get history of messages stored inside MUC room state.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetRoomHistory200ResponseInner>]
    def get_room_history(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_room_history_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # Get history of messages stored inside MUC room state.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetRoomHistory200ResponseInner>, Integer, Hash)>] Array<GetRoomHistory200ResponseInner> data, response status code and response headers
    def get_room_history_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_history ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_room_history"
      end
      # resource path
      local_var_path = '/api/get_room_history'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetRoomHistory200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of occupants of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetRoomOccupants200ResponseInner>]
    def get_room_occupants(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_room_occupants_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # Get the list of occupants of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetRoomOccupants200ResponseInner>, Integer, Hash)>] Array<GetRoomOccupants200ResponseInner> data, response status code and response headers
    def get_room_occupants_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_occupants ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_room_occupants"
      end
      # resource path
      local_var_path = '/api/get_room_occupants'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetRoomOccupants200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_occupants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_occupants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the number of occupants of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [GetRoomOccupantsNumber200Response]
    def get_room_occupants_number(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_room_occupants_number_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # Get the number of occupants of a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRoomOccupantsNumber200Response, Integer, Hash)>] GetRoomOccupantsNumber200Response data, response status code and response headers
    def get_room_occupants_number_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_occupants_number ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_room_occupants_number"
      end
      # resource path
      local_var_path = '/api/get_room_occupants_number'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetRoomOccupantsNumber200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_occupants_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_occupants_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get options from a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<GetRoomOptions200ResponseInner>]
    def get_room_options(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_room_options_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # Get options from a MUC room.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetRoomOptions200ResponseInner>, Integer, Hash)>] Array<GetRoomOptions200ResponseInner> data, response status code and response headers
    def get_room_options_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_room_options ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_room_options"
      end
      # resource path
      local_var_path = '/api/get_room_options'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetRoomOptions200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_room_options",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_room_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List subscribers of a MUC conference.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_subscribers(get_room_affiliations_request, opts = {})
      data, _status_code, _headers = get_subscribers_with_http_info(get_room_affiliations_request, opts)
      data
    end

    # List subscribers of a MUC conference.
    # @param get_room_affiliations_request [GetRoomAffiliationsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def get_subscribers_with_http_info(get_room_affiliations_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.get_subscribers ...'
      end
      # verify the required parameter 'get_room_affiliations_request' is set
      if @api_client.config.client_side_validation && get_room_affiliations_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_room_affiliations_request' when calling MucRoomApi.get_subscribers"
      end
      # resource path
      local_var_path = '/api/get_subscribers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_room_affiliations_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.get_subscribers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#get_subscribers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a direct invitation to several destinations.
    # @param [Hash] opts the optional parameters
    # @option opts [SendDirectInvitationRequest] :send_direct_invitation_request
    # @return [Integer]
    def send_direct_invitation(opts = {})
      data, _status_code, _headers = send_direct_invitation_with_http_info(opts)
      data
    end

    # Send a direct invitation to several destinations.
    # @param [Hash] opts the optional parameters
    # @option opts [SendDirectInvitationRequest] :send_direct_invitation_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def send_direct_invitation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.send_direct_invitation ...'
      end
      # resource path
      local_var_path = '/api/send_direct_invitation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_direct_invitation_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.send_direct_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#send_direct_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change an affiliation in a MUC room.
    # @param [Hash] opts the optional parameters
    # @option opts [SetRoomAffiliationRequest] :set_room_affiliation_request
    # @return [Integer]
    def set_room_affiliation(opts = {})
      data, _status_code, _headers = set_room_affiliation_with_http_info(opts)
      data
    end

    # Change an affiliation in a MUC room.
    # @param [Hash] opts the optional parameters
    # @option opts [SetRoomAffiliationRequest] :set_room_affiliation_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def set_room_affiliation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.set_room_affiliation ...'
      end
      # resource path
      local_var_path = '/api/set_room_affiliation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_room_affiliation_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.set_room_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#set_room_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Subscribe to a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscribeToRoomRequest] :subscribe_to_room_request
    # @return [Array<String>]
    def subscribe_to_room(opts = {})
      data, _status_code, _headers = subscribe_to_room_with_http_info(opts)
      data
    end

    # Subscribe to a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscribeToRoomRequest] :subscribe_to_room_request
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def subscribe_to_room_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.subscribe_to_room ...'
      end
      # resource path
      local_var_path = '/api/subscribe_room'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'subscribe_to_room_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.subscribe_to_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#subscribe_to_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Subscribe several users to a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscribeToRoomManyRequest] :subscribe_to_room_many_request
    # @return [Integer]
    def subscribe_to_room_many(opts = {})
      data, _status_code, _headers = subscribe_to_room_many_with_http_info(opts)
      data
    end

    # Subscribe several users to a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscribeToRoomManyRequest] :subscribe_to_room_many_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def subscribe_to_room_many_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.subscribe_to_room_many ...'
      end
      # resource path
      local_var_path = '/api/subscribe_room_many'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'subscribe_to_room_many_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.subscribe_to_room_many",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#subscribe_to_room_many\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unsubscribe from a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [UnsubscribeFromRoomRequest] :unsubscribe_from_room_request
    # @return [Integer]
    def unsubscribe_from_room(opts = {})
      data, _status_code, _headers = unsubscribe_from_room_with_http_info(opts)
      data
    end

    # Unsubscribe from a MUC conference.
    # @param [Hash] opts the optional parameters
    # @option opts [UnsubscribeFromRoomRequest] :unsubscribe_from_room_request
    # @return [Array<(Integer, Integer, Hash)>] Integer data, response status code and response headers
    def unsubscribe_from_room_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MucRoomApi.unsubscribe_from_room ...'
      end
      # resource path
      local_var_path = '/api/unsubscribe_room'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'unsubscribe_from_room_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Integer'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MucRoomApi.unsubscribe_from_room",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MucRoomApi#unsubscribe_from_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
