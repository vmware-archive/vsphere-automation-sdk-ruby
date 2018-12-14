=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class SystemConfigPscRegistrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get information of the PSC that this appliance is registered with.
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemConfigPscRegistrationResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get information of the PSC that this appliance is registered with.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemConfigPscRegistrationResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigPscRegistrationApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/system-config/psc-registration'

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
	  '200' => 'VCenter::VcenterSystemConfigPscRegistrationResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigPscRegistrationApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Repoint this vCenter Server appliance to a different external PSC.
    # @param vcenter_system_config_psc_registration_repoint 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def repoint(vcenter_system_config_psc_registration_repoint, opts = {})
      repoint_with_http_info(vcenter_system_config_psc_registration_repoint, opts)
      nil
    end

    # Repoint this vCenter Server appliance to a different external PSC.
    # @api private
    # @param vcenter_system_config_psc_registration_repoint 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def repoint_with_http_info(vcenter_system_config_psc_registration_repoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigPscRegistrationApi.repoint ...'
      end
      # verify the required parameter 'vcenter_system_config_psc_registration_repoint' is set
      if @api_client.config.client_side_validation && vcenter_system_config_psc_registration_repoint.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_system_config_psc_registration_repoint' when calling SystemConfigPscRegistrationApi.repoint"
      end
      # resource path
      local_var_path = '/vcenter/system-config/psc-registration'

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
      post_body = @api_client.object_to_http_body(vcenter_system_config_psc_registration_repoint)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigPscRegistrationApi#repoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
