=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmHardwareAdapterSataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds a virtual SATA adapter to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_adapter_sata_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareAdapterSataCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, vcenter_vm_hardware_adapter_sata_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, vcenter_vm_hardware_adapter_sata_create, opts)
      data
    end

    # Adds a virtual SATA adapter to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_adapter_sata_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareAdapterSataCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, vcenter_vm_hardware_adapter_sata_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareAdapterSataApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareAdapterSataApi.create"
      end
      # verify the required parameter 'vcenter_vm_hardware_adapter_sata_create' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_adapter_sata_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_adapter_sata_create' when calling VmHardwareAdapterSataApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/adapter/sata'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_adapter_sata_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmHardwareAdapterSataCreateResult',
	  '400' => 'VCenter::VapiStdErrorsUnsupportedError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareAdapterSataApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a virtual SATA adapter from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, adapter, opts = {})
      delete_with_http_info(vm, adapter, opts)
      nil
    end

    # Removes a virtual SATA adapter from the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, adapter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareAdapterSataApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareAdapterSataApi.delete"
      end
      # verify the required parameter 'adapter' is set
      if @api_client.config.client_side_validation && adapter.nil?
        fail ArgumentError, "Missing the required parameter 'adapter' when calling VmHardwareAdapterSataApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/adapter/sata/{adapter}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'adapter' + '}', adapter.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareAdapterSataApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual SATA adapter.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareAdapterSataResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, adapter, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, adapter, opts)
      data
    end

    # Returns information about a virtual SATA adapter.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareAdapterSataResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, adapter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareAdapterSataApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareAdapterSataApi.get"
      end
      # verify the required parameter 'adapter' is set
      if @api_client.config.client_side_validation && adapter.nil?
        fail ArgumentError, "Missing the required parameter 'adapter' when calling VmHardwareAdapterSataApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/adapter/sata/{adapter}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'adapter' + '}', adapter.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareAdapterSataResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareAdapterSataApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareAdapterSataListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareAdapterSataListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareAdapterSataApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareAdapterSataApi.list"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/adapter/sata'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareAdapterSataListResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareAdapterSataApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
