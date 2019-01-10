=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestIdentityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return information about the guest.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestIdentityResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, opts)
      data
    end

    # Return information about the guest.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestIdentityResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestIdentityApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestIdentityApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/guest/identity'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmGuestIdentityResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestIdentityApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
