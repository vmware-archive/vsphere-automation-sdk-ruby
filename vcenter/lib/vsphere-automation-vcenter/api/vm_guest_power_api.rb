=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestPowerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the guest operating system power state.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestPowerResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|]
    def get(vm, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, opts)
      data
    end

    # Returns information about the guest operating system power state.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestPowerResult|VapiStdErrorsErrorError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestPowerApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestPowerApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/guest/power'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmGuestPowerResult',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestPowerApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def reboot(vm, opts = {})
      reboot_with_http_info(vm, opts)
      nil
    end

    # Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def reboot_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestPowerApi.reboot ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestPowerApi.reboot"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/guest/power?action=reboot'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestPowerApi#reboot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def shutdown(vm, opts = {})
      shutdown_with_http_info(vm, opts)
      nil
    end

    # Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def shutdown_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestPowerApi.shutdown ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestPowerApi.shutdown"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/guest/power?action=shutdown'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestPowerApi#shutdown\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Issues a request to the guest operating system asking it to perform a suspend operation.
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def standby(vm, opts = {})
      standby_with_http_info(vm, opts)
      nil
    end

    # Issues a request to the guest operating system asking it to perform a suspend operation.
    # @api private
    # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupportedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def standby_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestPowerApi.standby ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestPowerApi.standby"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/guest/power?action=standby'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: VmGuestPowerApi#standby\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
