=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'uri'

module VSphereAutomation
  module VAPI
  class RestNavigationOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves operations for specific URL.
    # @param vapi_rest_navigation_options_get 
    # @param [Hash] opts the optional parameters
    # @return [VapiRestNavigationOptionsResult|VapiStdErrorsNotFoundError|]
    def get(vapi_rest_navigation_options_get, opts = {})
      data, _status_code, _headers = get_with_http_info(vapi_rest_navigation_options_get, opts)
      data
    end

    # Retrieves operations for specific URL.
    # @api private
    # @param vapi_rest_navigation_options_get 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiRestNavigationOptionsResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vapi_rest_navigation_options_get, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationOptionsApi.get ...'
      end
      # verify the required parameter 'vapi_rest_navigation_options_get' is set
      if @api_client.config.client_side_validation && vapi_rest_navigation_options_get.nil?
        fail ArgumentError, "Missing the required parameter 'vapi_rest_navigation_options_get' when calling RestNavigationOptionsApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/rest/navigation/options?~action=get'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(vapi_rest_navigation_options_get)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VAPI::VapiRestNavigationOptionsResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationOptionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
