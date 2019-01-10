=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentInstallRemotePscApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
    # @param vcenter_deployment_install_remote_psc_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentInstallRemotePscCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def check(vcenter_deployment_install_remote_psc_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vcenter_deployment_install_remote_psc_check, opts)
      data
    end

    # Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
    # @api private
    # @param vcenter_deployment_install_remote_psc_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentInstallRemotePscCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(vcenter_deployment_install_remote_psc_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallRemotePscApi.check ...'
      end
      # verify the required parameter 'vcenter_deployment_install_remote_psc_check' is set
      if @api_client.config.client_side_validation && vcenter_deployment_install_remote_psc_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_install_remote_psc_check' when calling DeploymentInstallRemotePscApi.check"
      end
      # resource path
      local_var_path = '/vcenter/deployment/install/remote-psc?action=check'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_install_remote_psc_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterDeploymentInstallRemotePscCheckResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallRemotePscApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
