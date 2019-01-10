=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class StoragePoliciesVMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.
    # @param policy storage policy identifier. The parameter must be an identifier for the resource type: vcenter.StoragePolicy.
    # @param [Hash] opts the optional parameters
    # @return [VcenterStoragePoliciesVMListResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(policy, opts = {})
      data, _status_code, _headers = list_with_http_info(policy, opts)
      data
    end

    # Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.
    # @api private
    # @param policy storage policy identifier. The parameter must be an identifier for the resource type: vcenter.StoragePolicy.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterStoragePoliciesVMListResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(policy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoragePoliciesVMApi.list ...'
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling StoragePoliciesVMApi.list"
      end
      # resource path
      local_var_path = '/vcenter/storage/policies/{policy}/vm'.sub('{' + 'policy' + '}', policy.to_s)

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
	  '200' => 'VCenter::VcenterStoragePoliciesVMListResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoragePoliciesVMApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
