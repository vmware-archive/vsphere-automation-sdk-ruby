# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class IsoImageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Mounts an ISO image from a content library on a virtual machine.
    # @param library_item The identifier of the library item having the ISO image to mount on the virtual machine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterIsoImageMountResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|]
    def mount(library_item, request_body, opts = {})
      data, _status_code, _headers = mount_with_http_info(library_item, request_body, opts)
      data
    end

    # Mounts an ISO image from a content library on a virtual machine.
    # @api private
    # @param library_item The identifier of the library item having the ISO image to mount on the virtual machine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterIsoImageMountResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def mount_with_http_info(library_item, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IsoImageApi.mount ...'
      end
      # verify the required parameter 'library_item' is set
      if @api_client.config.client_side_validation && library_item.nil?
        fail ArgumentError, "Missing the required parameter 'library_item' when calling IsoImageApi.mount"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling IsoImageApi.mount"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/iso/image/id:{library_item}?~action=mount'.sub('{' + 'library_item' + '}', library_item.to_s)

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
	  '200' => 'VCenter::VcenterIsoImageMountResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IsoImageApi#mount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unmounts a previously mounted CD-ROM using an ISO image as a backing.
    # @param vm The identifier of the virtual machine from which to unmount the virtual CD-ROM.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def unmount(vm, request_body, opts = {})
      unmount_with_http_info(vm, request_body, opts)
      nil
    end

    # Unmounts a previously mounted CD-ROM using an ISO image as a backing.
    # @api private
    # @param vm The identifier of the virtual machine from which to unmount the virtual CD-ROM.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def unmount_with_http_info(vm, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IsoImageApi.unmount ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling IsoImageApi.unmount"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling IsoImageApi.unmount"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/iso/image/id:{vm}?~action=unmount'.sub('{' + 'vm' + '}', vm.to_s)

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
        @api_client.config.logger.debug "API called: IsoImageApi#unmount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
