=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VchaClusterModeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the current mode of a VCHA cluster.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVchaClusterModeResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Retrieves the current mode of a VCHA cluster.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVchaClusterModeResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterModeApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster/mode'

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
	  '200' => 'VCenter::VcenterVchaClusterModeResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterModeApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -> disabled - Allowed only in healthy and degraded states.  enabled -> maintenance - Allowed only in healthy state.  disabled -> enabled - Allowed only in healthy state.  maintenance -> enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -> disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
    # @param vcenter_vcha_cluster_mode_set_task 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVchaClusterModeSetTaskResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def settask(vcenter_vcha_cluster_mode_set_task, opts = {})
      data, _status_code, _headers = settask_with_http_info(vcenter_vcha_cluster_mode_set_task, opts)
      data
    end

    # Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:  enabled -&gt; disabled - Allowed only in healthy and degraded states.  enabled -&gt; maintenance - Allowed only in healthy state.  disabled -&gt; enabled - Allowed only in healthy state.  maintenance -&gt; enabled - Allowed only in healthy state with all nodes are running the same version.  maintenance -&gt; disabled - Allowed only in healthy state with all nodes are running the same version.  All other transitions are not allowed.   VCHA Cluster configuration remains intact in any of the cluster modes. 
    # @api private
    # @param vcenter_vcha_cluster_mode_set_task 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVchaClusterModeSetTaskResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def settask_with_http_info(vcenter_vcha_cluster_mode_set_task, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterModeApi.settask ...'
      end
      # verify the required parameter 'vcenter_vcha_cluster_mode_set_task' is set
      if @api_client.config.client_side_validation && vcenter_vcha_cluster_mode_set_task.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vcha_cluster_mode_set_task' when calling VchaClusterModeApi.settask"
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster/mode'

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
      post_body = @api_client.object_to_http_body(vcenter_vcha_cluster_mode_set_task)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVchaClusterModeSetTaskResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterModeApi#settask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
