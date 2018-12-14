=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class RestNavigationResourceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
    # @param type_id Resource type id.
    # @param instance_id Resource instance id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [VapiRestNavigationResourceResult|]
    def get(type_id, instance_id, opts = {})
      data, _status_code, _headers = get_with_http_info(type_id, instance_id, opts)
      data
    end

    # Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
    # @api private
    # @param type_id Resource type id.
    # @param instance_id Resource instance id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [Array<(VapiRestNavigationResourceResult|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(type_id, instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationResourceApi.get ...'
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling RestNavigationResourceApi.get"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling RestNavigationResourceApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id}'.sub('{' + 'type_id' + '}', type_id.to_s).sub('{' + 'instance_id' + '}', instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'base_url'] = opts[:'base_url'] if !opts[:'base_url'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VAPI::VapiRestNavigationResourceResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationResourceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets list of all vAPI REST {@link Resource}s.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [VapiRestNavigationResourceListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Gets list of all vAPI REST {@link Resource}s.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [Array<(VapiRestNavigationResourceListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationResourceApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/rest/navigation/resource'

      # query parameters
      query_params = {}
      query_params[:'base_url'] = opts[:'base_url'] if !opts[:'base_url'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VAPI::VapiRestNavigationResourceListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationResourceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
