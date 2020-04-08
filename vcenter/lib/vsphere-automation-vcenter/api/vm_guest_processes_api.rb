# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestProcessesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestProcessesCreateResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, request_body, opts)
      data
    end

    # Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestProcessesCreateResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestProcessesApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestProcessesApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestProcessesApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/processes?action=create'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmGuestProcessesCreateResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestProcessesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn't terminate the process, a KILL signal is sent. A process may still be running if it's stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param pid Process ID of the process to be terminated
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(vm, pid, request_body, opts = {})
      delete_with_http_info(vm, pid, request_body, opts)
      nil
    end

    # Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn&#39;t terminate the process, a KILL signal is sent. A process may still be running if it&#39;s stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param pid Process ID of the process to be terminated
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, pid, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestProcessesApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestProcessesApi.delete"
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling VmGuestProcessesApi.delete"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestProcessesApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/processes/{pid}?action=delete'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'pid' + '}', pid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestProcessesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param pid Specifies the process to query.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestProcessesResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, pid, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, pid, request_body, opts)
      data
    end

    # Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param pid Specifies the process to query.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestProcessesResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, pid, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestProcessesApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestProcessesApi.get"
      end
      # verify the required parameter 'pid' is set
      if @api_client.config.client_side_validation && pid.nil?
        fail ArgumentError, "Missing the required parameter 'pid' when calling VmGuestProcessesApi.get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestProcessesApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/processes/{pid}?action=get'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'pid' + '}', pid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmGuestProcessesResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestProcessesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestProcessesListResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, request_body, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, request_body, opts)
      data
    end

    # List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestProcessesListResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestProcessesApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestProcessesApi.list"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestProcessesApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/processes?action=list'.sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmGuestProcessesListResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestProcessesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
