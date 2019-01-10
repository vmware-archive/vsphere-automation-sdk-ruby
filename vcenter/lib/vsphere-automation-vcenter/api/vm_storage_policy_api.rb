=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmStoragePolicyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns Information about Storage Policy associated with a virtual machine's home directory and/or its virtual hard disks.
    # @param vm Virtual machine identifier The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmStoragePolicyResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, opts)
      data
    end

    # Returns Information about Storage Policy associated with a virtual machine&#39;s home directory and/or its virtual hard disks.
    # @api private
    # @param vm Virtual machine identifier The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmStoragePolicyResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmStoragePolicyApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmStoragePolicyApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/storage/policy'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmStoragePolicyResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmStoragePolicyApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_storage_policy_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|nil]
    def update(vm, vcenter_vm_storage_policy_update, opts = {})
      update_with_http_info(vm, vcenter_vm_storage_policy_update, opts)
      nil
    end

    # Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_storage_policy_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, vcenter_vm_storage_policy_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmStoragePolicyApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmStoragePolicyApi.update"
      end
      # verify the required parameter 'vcenter_vm_storage_policy_update' is set
      if @api_client.config.client_side_validation && vcenter_vm_storage_policy_update.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_storage_policy_update' when calling VmStoragePolicyApi.update"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/storage/policy'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_storage_policy_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmStoragePolicyApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
