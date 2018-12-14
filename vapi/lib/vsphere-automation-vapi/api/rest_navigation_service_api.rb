=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class RestNavigationServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.
    # @param component_id Component identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [VapiRestNavigationServiceListResult|VapiStdErrorsNotFoundError|]
    def list(component_id, opts = {})
      data, _status_code, _headers = list_with_http_info(component_id, opts)
      data
    end

    # Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.
    # @api private
    # @param component_id Component identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL.
    # @return [Array<(VapiRestNavigationServiceListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationServiceApi.list ...'
      end
      # verify the required parameter 'component_id' is set
      if @api_client.config.client_side_validation && component_id.nil?
        fail ArgumentError, "Missing the required parameter 'component_id' when calling RestNavigationServiceApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/rest/navigation/service'

      # query parameters
      query_params = {}
      query_params[:'component_id'] = component_id
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
	  '200' => 'VAPI::VapiRestNavigationServiceListResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationServiceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
