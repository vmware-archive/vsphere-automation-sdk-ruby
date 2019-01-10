=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentInstallPscStandaloneApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Checks that the information to configure a non-replicated PSC satisfies the requirements.
    # @param vcenter_deployment_install_psc_standalone_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentInstallPscStandaloneCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def check(vcenter_deployment_install_psc_standalone_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vcenter_deployment_install_psc_standalone_check, opts)
      data
    end

    # Checks that the information to configure a non-replicated PSC satisfies the requirements.
    # @api private
    # @param vcenter_deployment_install_psc_standalone_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentInstallPscStandaloneCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(vcenter_deployment_install_psc_standalone_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallPscStandaloneApi.check ...'
      end
      # verify the required parameter 'vcenter_deployment_install_psc_standalone_check' is set
      if @api_client.config.client_side_validation && vcenter_deployment_install_psc_standalone_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_install_psc_standalone_check' when calling DeploymentInstallPscStandaloneApi.check"
      end
      # resource path
      local_var_path = '/vcenter/deployment/install/psc/standalone?action=check'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_install_psc_standalone_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterDeploymentInstallPscStandaloneCheckResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallPscStandaloneApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
