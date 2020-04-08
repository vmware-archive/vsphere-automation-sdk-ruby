# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class VmTemplateLibraryItemsVersionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes the virtual machine template contained in the library item at the specified version.
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(template_library_item, version, opts = {})
      delete_with_http_info(template_library_item, version, opts)
      nil
    end

    # Deletes the virtual machine template contained in the library item at the specified version.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(template_library_item, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsVersionsApi.delete ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsVersionsApi.delete"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling VmTemplateLibraryItemsVersionsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'version' + '}', version.to_s)

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
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsVersionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the live version of a library item containing a virtual machine template.
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsVersionsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(template_library_item, version, opts = {})
      data, _status_code, _headers = get_with_http_info(template_library_item, version, opts)
      data
    end

    # Returns information about the live version of a library item containing a virtual machine template.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsVersionsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(template_library_item, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsVersionsApi.get ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsVersionsApi.get"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling VmTemplateLibraryItemsVersionsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsVersionsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsVersionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the live versions of a virtual machine template library item.
    # @param template_library_item Identifier of the VM template library item.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsVersionsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(template_library_item, opts = {})
      data, _status_code, _headers = list_with_http_info(template_library_item, opts)
      data
    end

    # Returns commonly used information about the live versions of a virtual machine template library item.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsVersionsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsVersionsApi.list ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsVersionsApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/versions'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

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
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsVersionsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsVersionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item to rollback.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsVersionsRollback] :request_body 
    # @return [VcenterVmTemplateLibraryItemsVersionsRollbackResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def rollback(template_library_item, version, opts = {})
      data, _status_code, _headers = rollback_with_http_info(template_library_item, version, opts)
      data
    end

    # Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.
    # @api private
    # @param template_library_item Identifier of the VM template library item.
    # @param version Version of the library item to rollback.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsVersionsRollback] :request_body 
    # @return [Array<(VcenterVmTemplateLibraryItemsVersionsRollbackResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def rollback_with_http_info(template_library_item, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsVersionsApi.rollback ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsVersionsApi.rollback"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling VmTemplateLibraryItemsVersionsApi.rollback"
      end
      # resource path
      local_var_path = '/rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version}?action=rollback'.sub('{' + 'template_library_item' + '}', template_library_item.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsVersionsRollbackResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsVersionsApi#rollback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
