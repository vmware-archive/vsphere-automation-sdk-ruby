=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmHardwareCdromApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def connect(vm, cdrom, opts = {})
      connect_with_http_info(vm, cdrom, opts)
      nil
    end

    # Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_with_http_info(vm, cdrom, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.connect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.connect"
      end
      # verify the required parameter 'cdrom' is set
      if @api_client.config.client_side_validation && cdrom.nil?
        fail ArgumentError, "Missing the required parameter 'cdrom' when calling VmHardwareCdromApi.connect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom/{cdrom}/connect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'cdrom' + '}', cdrom.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#connect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Adds a virtual CD-ROM device to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_cdrom_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareCdromCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, vcenter_vm_hardware_cdrom_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, vcenter_vm_hardware_cdrom_create, opts)
      data
    end

    # Adds a virtual CD-ROM device to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_hardware_cdrom_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareCdromCreateResult|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, vcenter_vm_hardware_cdrom_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.create"
      end
      # verify the required parameter 'vcenter_vm_hardware_cdrom_create' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_cdrom_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_cdrom_create' when calling VmHardwareCdromApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_cdrom_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmHardwareCdromCreateResult',
	  '400' => 'VCenter::VapiStdErrorsUnsupportedError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a virtual CD-ROM device from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, cdrom, opts = {})
      delete_with_http_info(vm, cdrom, opts)
      nil
    end

    # Removes a virtual CD-ROM device from the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, cdrom, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.delete"
      end
      # verify the required parameter 'cdrom' is set
      if @api_client.config.client_side_validation && cdrom.nil?
        fail ArgumentError, "Missing the required parameter 'cdrom' when calling VmHardwareCdromApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom/{cdrom}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'cdrom' + '}', cdrom.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def disconnect(vm, cdrom, opts = {})
      disconnect_with_http_info(vm, cdrom, opts)
      nil
    end

    # Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(vm, cdrom, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.disconnect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.disconnect"
      end
      # verify the required parameter 'cdrom' is set
      if @api_client.config.client_side_validation && cdrom.nil?
        fail ArgumentError, "Missing the required parameter 'cdrom' when calling VmHardwareCdromApi.disconnect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom/{cdrom}/disconnect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'cdrom' + '}', cdrom.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual CD-ROM device.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareCdromResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, cdrom, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, cdrom, opts)
      data
    end

    # Returns information about a virtual CD-ROM device.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareCdromResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, cdrom, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.get"
      end
      # verify the required parameter 'cdrom' is set
      if @api_client.config.client_side_validation && cdrom.nil?
        fail ArgumentError, "Missing the required parameter 'cdrom' when calling VmHardwareCdromApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom/{cdrom}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'cdrom' + '}', cdrom.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareCdromResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareCdromListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareCdromListResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.list"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmHardwareCdromListResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a virtual CD-ROM device.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param vcenter_vm_hardware_cdrom_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def update(vm, cdrom, vcenter_vm_hardware_cdrom_update, opts = {})
      update_with_http_info(vm, cdrom, vcenter_vm_hardware_cdrom_update, opts)
      nil
    end

    # Updates the configuration of a virtual CD-ROM device.
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param cdrom Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
    # @param vcenter_vm_hardware_cdrom_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, cdrom, vcenter_vm_hardware_cdrom_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareCdromApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareCdromApi.update"
      end
      # verify the required parameter 'cdrom' is set
      if @api_client.config.client_side_validation && cdrom.nil?
        fail ArgumentError, "Missing the required parameter 'cdrom' when calling VmHardwareCdromApi.update"
      end
      # verify the required parameter 'vcenter_vm_hardware_cdrom_update' is set
      if @api_client.config.client_side_validation && vcenter_vm_hardware_cdrom_update.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_hardware_cdrom_update' when calling VmHardwareCdromApi.update"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/cdrom/{cdrom}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'cdrom' + '}', cdrom.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_hardware_cdrom_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareCdromApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
