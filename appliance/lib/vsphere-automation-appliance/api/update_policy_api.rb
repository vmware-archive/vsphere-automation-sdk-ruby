=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'uri'

module VSphereAutomation
  module Appliance
  class UpdatePolicyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets the automatic update checking and staging policy.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePolicyResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Gets the automatic update checking and staging policy.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePolicyResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePolicyApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/update/policy'

      # query parameters
      query_params = {}

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
	  '200' => 'Appliance::ApplianceUpdatePolicyResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePolicyApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets the automatic update checking and staging policy.
    # @param appliance_update_policy_set 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def set(appliance_update_policy_set, opts = {})
      set_with_http_info(appliance_update_policy_set, opts)
      nil
    end

    # Sets the automatic update checking and staging policy.
    # @api private
    # @param appliance_update_policy_set 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(appliance_update_policy_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePolicyApi.set ...'
      end
      # verify the required parameter 'appliance_update_policy_set' is set
      if @api_client.config.client_side_validation && appliance_update_policy_set.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_update_policy_set' when calling UpdatePolicyApi.set"
      end
      # resource path
      local_var_path = '/appliance/update/policy'

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
      post_body = @api_client.object_to_http_body(appliance_update_policy_set)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePolicyApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
