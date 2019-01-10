=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VchaClusterActiveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about the active node of a VCHA cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterActiveGet] :vcenter_vcha_cluster_active_get 
    # @return [VcenterVchaClusterActiveResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Retrieves information about the active node of a VCHA cluster.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterActiveGet] :vcenter_vcha_cluster_active_get 
    # @return [Array<(VcenterVchaClusterActiveResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterActiveApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster/active?action=get'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vcha_cluster_active_get'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVchaClusterActiveResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterActiveApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
