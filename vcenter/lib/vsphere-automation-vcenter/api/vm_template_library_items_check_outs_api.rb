# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmTemplateLibraryItemsCheckOutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.
    # @param template_library_item Identifier of the content library item in which the virtual machine is checked in.
    # @param vm Identifier of the virtual machine to check into the library item.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCheckOutsCheckIn] :request_body 
    # @return [VcenterVmTemplateLibraryItemsCheckOutsCheckInResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def check_in(template_library_item, vm, opts = {})
      data, _status_code, _headers = check_in_with_http_info(template_library_item, vm, opts)
      data
    end

    # Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.
    # @api private
    # @param template_library_item Identifier of the content library item in which the virtual machine is checked in.
    # @param vm Identifier of the virtual machine to check into the library item.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCheckOutsCheckIn] :request_body 
    # @return [Array<(VcenterVmTemplateLibraryItemsCheckOutsCheckInResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_in_with_http_info(template_library_item, vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsCheckOutsApi.check_in ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsCheckOutsApi.check_in"
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmTemplateLibraryItemsCheckOutsApi.check_in"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm}?action=check-in'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckInResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsCheckOutsApi#check_in\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.
    # @param template_library_item Identifier of the content library item containing the source virtual machine template to be checked out.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCheckOutsCheckOut] :request_body 
    # @return [VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def check_out(template_library_item, opts = {})
      data, _status_code, _headers = check_out_with_http_info(template_library_item, opts)
      data
    end

    # Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.
    # @api private
    # @param template_library_item Identifier of the content library item containing the source virtual machine template to be checked out.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCheckOutsCheckOut] :request_body 
    # @return [Array<(VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_out_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsCheckOutsApi.check_out ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsCheckOutsApi.check_out"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/check-outs?action=check-out'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsCheckOutsApi#check_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the checked out virtual machine.
    # @param template_library_item Identifier of the VM template library item.
    # @param vm Identifier of the checked out virtual machine to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(template_library_item, vm, opts = {})
      delete_with_http_info(template_library_item, vm, opts)
      nil
    end

    # Deletes the checked out virtual machine.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param vm Identifier of the checked out virtual machine to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(template_library_item, vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsCheckOutsApi.delete ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsCheckOutsApi.delete"
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmTemplateLibraryItemsCheckOutsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsCheckOutsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the information about a checked out virtual machine.
    # @param template_library_item Identifier of the VM template library item.
    # @param vm Identifier of the checked out virtual machine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsCheckOutsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(template_library_item, vm, opts = {})
      data, _status_code, _headers = get_with_http_info(template_library_item, vm, opts)
      data
    end

    # Returns the information about a checked out virtual machine.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param vm Identifier of the checked out virtual machine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsCheckOutsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(template_library_item, vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsCheckOutsApi.get ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsCheckOutsApi.get"
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmTemplateLibraryItemsCheckOutsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'vm' + '}', vm.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsCheckOutsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsCheckOutsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual machines that are checked out of the library item.
    # @param template_library_item Identifier of the VM template library item.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsCheckOutsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(template_library_item, opts = {})
      data, _status_code, _headers = list_with_http_info(template_library_item, opts)
      data
    end

    # Returns commonly used information about the virtual machines that are checked out of the library item.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsCheckOutsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsCheckOutsApi.list ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsCheckOutsApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/check-outs'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsCheckOutsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsCheckOutsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
