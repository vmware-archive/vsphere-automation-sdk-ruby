=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VchaClusterPassiveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Validates the specified passive node's placement configuration.
    # @param vcenter_vcha_cluster_passive_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVchaClusterPassiveCheckResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def check(vcenter_vcha_cluster_passive_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vcenter_vcha_cluster_passive_check, opts)
      data
    end

    # Validates the specified passive node&#39;s placement configuration.
    # @api private
    # @param vcenter_vcha_cluster_passive_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVchaClusterPassiveCheckResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(vcenter_vcha_cluster_passive_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterPassiveApi.check ...'
      end
      # verify the required parameter 'vcenter_vcha_cluster_passive_check' is set
      if @api_client.config.client_side_validation && vcenter_vcha_cluster_passive_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vcha_cluster_passive_check' when calling VchaClusterPassiveApi.check"
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster/passive?action=check'

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
      post_body = @api_client.object_to_http_body(vcenter_vcha_cluster_passive_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVchaClusterPassiveCheckResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterPassiveApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
    # @param vcenter_vcha_cluster_passive_redeploy_task 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVchaClusterPassiveRedeployTaskResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def redeploytask(vcenter_vcha_cluster_passive_redeploy_task, opts = {})
      data, _status_code, _headers = redeploytask_with_http_info(vcenter_vcha_cluster_passive_redeploy_task, opts)
      data
    end

    # Creates the passive node in a degraded cluster with node location information and pre-existing VCHA cluster configuration from the active node.
    # @api private
    # @param vcenter_vcha_cluster_passive_redeploy_task 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVchaClusterPassiveRedeployTaskResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def redeploytask_with_http_info(vcenter_vcha_cluster_passive_redeploy_task, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterPassiveApi.redeploytask ...'
      end
      # verify the required parameter 'vcenter_vcha_cluster_passive_redeploy_task' is set
      if @api_client.config.client_side_validation && vcenter_vcha_cluster_passive_redeploy_task.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vcha_cluster_passive_redeploy_task' when calling VchaClusterPassiveApi.redeploytask"
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster/passive?action=redeploy'

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
      post_body = @api_client.object_to_http_body(vcenter_vcha_cluster_passive_redeploy_task)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVchaClusterPassiveRedeployTaskResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterPassiveApi#redeploytask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
