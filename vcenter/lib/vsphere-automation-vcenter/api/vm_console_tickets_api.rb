# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmConsoleTicketsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmConsoleTicketsCreateResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vm, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, request_body, opts)
      data
    end

    # Creates a virtual machine console ticket of a given ticket type. The created ticket is a one time use URI. The validity of the ticket is 30 minutes, if not used with in the time frame the ticket expires.   The VMRC ticket contains the IP address or the DNS resolvable name of the vCenter server. This ticket requires installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine where the ticket has to be opened. This ticket can be acquired even when the VM is turned off.    The WEBMKS ticket contains the IP address of the DNS resolvable name of the ESX server. This ticket requires user to embed this ticket in a HTML page using VMware HTML Console SDK - https://www.vmware.com/support/developer/html-console This ticket can be acquired only when the VM is turned on. 
    # @api private
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmConsoleTicketsCreateResp|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmConsoleTicketsApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmConsoleTicketsApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling VmConsoleTicketsApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm/{vm}/console/tickets'.sub('{' + 'vm' + '}', vm.to_s)

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
	  '200' => 'VCenter::VcenterVmConsoleTicketsCreateResp',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmConsoleTicketsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
