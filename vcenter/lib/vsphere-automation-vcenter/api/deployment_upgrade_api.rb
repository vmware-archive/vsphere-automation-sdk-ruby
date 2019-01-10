=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentUpgradeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the appliance upgrade that is in progress.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def cancel(opts = {})
      cancel_with_http_info(opts)
      nil
    end

    # Cancel the appliance upgrade that is in progress.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentUpgradeApi.cancel ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/upgrade?action=cancel'

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
        @api_client.config.logger.debug "API called: DeploymentUpgradeApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Run sanity checks using the UpgradeSpec parameters passed.
    # @param vcenter_deployment_upgrade_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentUpgradeCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def check(vcenter_deployment_upgrade_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vcenter_deployment_upgrade_check, opts)
      data
    end

    # Run sanity checks using the UpgradeSpec parameters passed.
    # @api private
    # @param vcenter_deployment_upgrade_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentUpgradeCheckResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(vcenter_deployment_upgrade_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentUpgradeApi.check ...'
      end
      # verify the required parameter 'vcenter_deployment_upgrade_check' is set
      if @api_client.config.client_side_validation && vcenter_deployment_upgrade_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_upgrade_check' when calling DeploymentUpgradeApi.check"
      end
      # resource path
      local_var_path = '/vcenter/deployment/upgrade?action=check'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_upgrade_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterDeploymentUpgradeCheckResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentUpgradeApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentUpgradeResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentUpgradeResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentUpgradeApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/upgrade'

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
	  '200' => 'VCenter::VcenterDeploymentUpgradeResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentUpgradeApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Start the appliance installation.
    # @param vcenter_deployment_upgrade_start 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil]
    def start(vcenter_deployment_upgrade_start, opts = {})
      start_with_http_info(vcenter_deployment_upgrade_start, opts)
      nil
    end

    # Start the appliance installation.
    # @api private
    # @param vcenter_deployment_upgrade_start 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(vcenter_deployment_upgrade_start, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentUpgradeApi.start ...'
      end
      # verify the required parameter 'vcenter_deployment_upgrade_start' is set
      if @api_client.config.client_side_validation && vcenter_deployment_upgrade_start.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_upgrade_start' when calling DeploymentUpgradeApi.start"
      end
      # resource path
      local_var_path = '/vcenter/deployment/upgrade?action=start'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_upgrade_start)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentUpgradeApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
