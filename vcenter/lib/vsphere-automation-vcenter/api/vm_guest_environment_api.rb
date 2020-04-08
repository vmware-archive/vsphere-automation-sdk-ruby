# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmGuestEnvironmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param name The name of the environment variable to be read.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestEnvironmentResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(vm, name, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, name, request_body, opts)
      data
    end

    # Reads a single environment variable from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it&#39;s the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param name The name of the environment variable to be read.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestEnvironmentResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(vm, name, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestEnvironmentApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestEnvironmentApi.get"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling VmGuestEnvironmentApi.get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestEnvironmentApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/environment/{name}?action=get'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'name' + '}', name.to_s)

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
	  '200' => 'VCenter::VcenterVmGuestEnvironmentResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestEnvironmentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it's the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmGuestEnvironmentListResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def list(vm, request_body, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, request_body, opts)
      data
    end

    # Reads a list of environment variables from the guest operating system.   If the authentication uses Credentials.interactive-session, then the environment being read will be that of the user logged into the desktop. Otherwise it&#39;s the environment of the system user.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmGuestEnvironmentListResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmGuestEnvironmentApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmGuestEnvironmentApi.list"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmGuestEnvironmentApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/guest/environment?action=list'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmGuestEnvironmentListResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmGuestEnvironmentApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
