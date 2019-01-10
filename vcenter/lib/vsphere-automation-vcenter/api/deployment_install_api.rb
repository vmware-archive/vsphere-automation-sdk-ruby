=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentInstallApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the appliance installation that is in progress.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def cancel(opts = {})
      cancel_with_http_info(opts)
      nil
    end

    # Cancel the appliance installation that is in progress.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallApi.cancel ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/install?action=cancel'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Run sanity checks using the InstallSpec parameters passed.
    # @param vcenter_deployment_install_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentInstallCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def check(vcenter_deployment_install_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vcenter_deployment_install_check, opts)
      data
    end

    # Run sanity checks using the InstallSpec parameters passed.
    # @api private
    # @param vcenter_deployment_install_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentInstallCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(vcenter_deployment_install_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallApi.check ...'
      end
      # verify the required parameter 'vcenter_deployment_install_check' is set
      if @api_client.config.client_side_validation && vcenter_deployment_install_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_install_check' when calling DeploymentInstallApi.check"
      end
      # resource path
      local_var_path = '/vcenter/deployment/install?action=check'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_install_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterDeploymentInstallCheckResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the parameters used to configure the ongoing appliance installation.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentInstallResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the parameters used to configure the ongoing appliance installation.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentInstallResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/install'

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
	  '200' => 'VCenter::VcenterDeploymentInstallResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Start the appliance installation.
    # @param vcenter_deployment_install_start 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def start(vcenter_deployment_install_start, opts = {})
      start_with_http_info(vcenter_deployment_install_start, opts)
      nil
    end

    # Start the appliance installation.
    # @api private
    # @param vcenter_deployment_install_start 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(vcenter_deployment_install_start, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentInstallApi.start ...'
      end
      # verify the required parameter 'vcenter_deployment_install_start' is set
      if @api_client.config.client_side_validation && vcenter_deployment_install_start.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_install_start' when calling DeploymentInstallApi.start"
      end
      # resource path
      local_var_path = '/vcenter/deployment/install?action=start'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_install_start)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentInstallApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
