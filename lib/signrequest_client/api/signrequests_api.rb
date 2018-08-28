=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SignRequestClient
  class SignrequestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param uuid 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [SignRequest]
    def signrequests_cancel_signrequest(uuid, data, opts = {})
      data, _status_code, _headers = signrequests_cancel_signrequest_with_http_info(uuid, data, opts)
      return data
    end

    # 
    # 
    # @param uuid 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignRequest, Fixnum, Hash)>] SignRequest data, response status code and response headers
    def signrequests_cancel_signrequest_with_http_info(uuid, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignrequestsApi.signrequests_cancel_signrequest ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling SignrequestsApi.signrequests_cancel_signrequest"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SignrequestsApi.signrequests_cancel_signrequest"
      end
      # resource path
      local_var_path = "/signrequests/{uuid}/cancel_signrequest/".sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignrequestsApi#signrequests_cancel_signrequest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [SignRequest]
    def signrequests_create(data, opts = {})
      data, _status_code, _headers = signrequests_create_with_http_info(data, opts)
      return data
    end

    # 
    # 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignRequest, Fixnum, Hash)>] SignRequest data, response status code and response headers
    def signrequests_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignrequestsApi.signrequests_create ..."
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SignrequestsApi.signrequests_create"
      end
      # resource path
      local_var_path = "/signrequests/"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignrequestsApi#signrequests_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :who 
    # @option opts [String] :from_email 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [InlineResponse2005]
    def signrequests_list(opts = {})
      data, _status_code, _headers = signrequests_list_with_http_info(opts)
      return data
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :who 
    # @option opts [String] :from_email 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [Array<(InlineResponse2005, Fixnum, Hash)>] InlineResponse2005 data, response status code and response headers
    def signrequests_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignrequestsApi.signrequests_list ..."
      end
      # resource path
      local_var_path = "/signrequests/"

      # query parameters
      query_params = {}
      query_params[:'who'] = opts[:'who'] if !opts[:'who'].nil?
      query_params[:'from_email'] = opts[:'from_email'] if !opts[:'from_email'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2005')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignrequestsApi#signrequests_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [SignRequest]
    def signrequests_read(uuid, opts = {})
      data, _status_code, _headers = signrequests_read_with_http_info(uuid, opts)
      return data
    end

    # 
    # 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignRequest, Fixnum, Hash)>] SignRequest data, response status code and response headers
    def signrequests_read_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignrequestsApi.signrequests_read ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling SignrequestsApi.signrequests_read"
      end
      # resource path
      local_var_path = "/signrequests/{uuid}/".sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignrequestsApi#signrequests_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param uuid 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [SignRequest]
    def signrequests_resend_signrequest_email(uuid, data, opts = {})
      data, _status_code, _headers = signrequests_resend_signrequest_email_with_http_info(uuid, data, opts)
      return data
    end

    # 
    # 
    # @param uuid 
    # @param data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignRequest, Fixnum, Hash)>] SignRequest data, response status code and response headers
    def signrequests_resend_signrequest_email_with_http_info(uuid, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignrequestsApi.signrequests_resend_signrequest_email ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling SignrequestsApi.signrequests_resend_signrequest_email"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SignrequestsApi.signrequests_resend_signrequest_email"
      end
      # resource path
      local_var_path = "/signrequests/{uuid}/resend_signrequest_email/".sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignrequestsApi#signrequests_resend_signrequest_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end