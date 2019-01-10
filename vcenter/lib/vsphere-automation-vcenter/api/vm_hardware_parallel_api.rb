=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmHardwareParallelApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def connect(vm, port, opts = {})
      connect_with_http_info(vm, port, opts)
      nil
    end

    # Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_with_http_info(vm, port, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.connect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.connect"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling VmHardwareParallelApi.connect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel/{port}/connect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'port' + '}', port.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#connect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Adds a virtual parallel port to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_parallel_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareParallelCreateResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, vcenter_vm_hardware_parallel_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, vcenter_vm_hardware_parallel_create, opts)
      data
    end

    # Adds a virtual parallel port to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_parallel_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareParallelCreateResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, vcenter_vm_hardware_parallel_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.create"
      end
      # verify the required parameter 'vcenter_vm_hardware_parallel_create' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_parallel_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_parallel_create' when calling VmHardwareParallelApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_parallel_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmHardwareParallelCreateResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a virtual parallel port from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, port, opts = {})
      delete_with_http_info(vm, port, opts)
      nil
    end

    # Removes a virtual parallel port from the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, port, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.delete"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling VmHardwareParallelApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel/{port}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'port' + '}', port.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def disconnect(vm, port, opts = {})
      disconnect_with_http_info(vm, port, opts)
      nil
    end

    # Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(vm, port, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.disconnect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.disconnect"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling VmHardwareParallelApi.disconnect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel/{port}/disconnect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'port' + '}', port.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual parallel port.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareParallelResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, port, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, port, opts)
      data
    end

    # Returns information about a virtual parallel port.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareParallelResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, port, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.get"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling VmHardwareParallelApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel/{port}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'port' + '}', port.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareParallelResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareParallelListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareParallelListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.list"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareParallelListResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a virtual parallel port.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param vcenter_vm_hardware_parallel_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def update(vm, port, vcenter_vm_hardware_parallel_update, opts = {})
      update_with_http_info(vm, port, vcenter_vm_hardware_parallel_update, opts)
      nil
    end

    # Updates the configuration of a virtual parallel port.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param port Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
    # @param vcenter_vm_hardware_parallel_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, port, vcenter_vm_hardware_parallel_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareParallelApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareParallelApi.update"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling VmHardwareParallelApi.update"
      end
      # verify the required parameter 'vcenter_vm_hardware_parallel_update' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_parallel_update.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_parallel_update' when calling VmHardwareParallelApi.update"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/parallel/{port}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'port' + '}', port.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_parallel_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareParallelApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
