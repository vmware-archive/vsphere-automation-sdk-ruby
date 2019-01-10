=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmHardwareFloppyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def connect(vm, floppy, opts = {})
      connect_with_http_info(vm, floppy, opts)
      nil
    end

    # Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_with_http_info(vm, floppy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.connect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.connect"
      end
      # verify the required parameter 'floppy' is set
      if @api_client.config.client_side_validation && floppy.nil?
        fail ArgumentError, "Missing the required parameter 'floppy' when calling VmHardwareFloppyApi.connect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy/{floppy}/connect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'floppy' + '}', floppy.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#connect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Adds a virtual floppy drive to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_floppy_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareFloppyCreateResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, vcenter_vm_hardware_floppy_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, vcenter_vm_hardware_floppy_create, opts)
      data
    end

    # Adds a virtual floppy drive to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_floppy_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareFloppyCreateResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, vcenter_vm_hardware_floppy_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.create"
      end
      # verify the required parameter 'vcenter_vm_hardware_floppy_create' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_floppy_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_floppy_create' when calling VmHardwareFloppyApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_floppy_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmHardwareFloppyCreateResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a virtual floppy drive from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, floppy, opts = {})
      delete_with_http_info(vm, floppy, opts)
      nil
    end

    # Removes a virtual floppy drive from the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, floppy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.delete"
      end
      # verify the required parameter 'floppy' is set
      if @api_client.config.client_side_validation && floppy.nil?
        fail ArgumentError, "Missing the required parameter 'floppy' when calling VmHardwareFloppyApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy/{floppy}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'floppy' + '}', floppy.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def disconnect(vm, floppy, opts = {})
      disconnect_with_http_info(vm, floppy, opts)
      nil
    end

    # Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(vm, floppy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.disconnect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.disconnect"
      end
      # verify the required parameter 'floppy' is set
      if @api_client.config.client_side_validation && floppy.nil?
        fail ArgumentError, "Missing the required parameter 'floppy' when calling VmHardwareFloppyApi.disconnect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy/{floppy}/disconnect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'floppy' + '}', floppy.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual floppy drive.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareFloppyResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, floppy, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, floppy, opts)
      data
    end

    # Returns information about a virtual floppy drive.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareFloppyResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, floppy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.get"
      end
      # verify the required parameter 'floppy' is set
      if @api_client.config.client_side_validation && floppy.nil?
        fail ArgumentError, "Missing the required parameter 'floppy' when calling VmHardwareFloppyApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy/{floppy}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'floppy' + '}', floppy.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareFloppyResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareFloppyListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareFloppyListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.list"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareFloppyListResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a virtual floppy drive.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param vcenter_vm_hardware_floppy_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def update(vm, floppy, vcenter_vm_hardware_floppy_update, opts = {})
      update_with_http_info(vm, floppy, vcenter_vm_hardware_floppy_update, opts)
      nil
    end

    # Updates the configuration of a virtual floppy drive.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param floppy Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
    # @param vcenter_vm_hardware_floppy_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, floppy, vcenter_vm_hardware_floppy_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareFloppyApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareFloppyApi.update"
      end
      # verify the required parameter 'floppy' is set
      if @api_client.config.client_side_validation && floppy.nil?
        fail ArgumentError, "Missing the required parameter 'floppy' when calling VmHardwareFloppyApi.update"
      end
      # verify the required parameter 'vcenter_vm_hardware_floppy_update' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_floppy_update.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_floppy_update' when calling VmHardwareFloppyApi.update"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/floppy/{floppy}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'floppy' + '}', floppy.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_floppy_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareFloppyApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
