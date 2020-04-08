# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TagsVmAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be assigned to the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsVmAssociationsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def add(tag, request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(tag, request_body, opts)
      data
    end

    # Attaches a tag to multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be assigned to the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsVmAssociationsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(tag, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsVmAssociationsApi.add ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsVmAssociationsApi.add"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TagsVmAssociationsApi.add"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/vm/{tag}/associations?action=add'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsVmAssociationsAddResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsVmAssociationsApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be queried for its associated virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsVmAssociationsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(tag, opts = {})
      data, _status_code, _headers = get_with_http_info(tag, opts)
      data
    end

    # Lists all virtual machine that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be queried for its associated virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsVmAssociationsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsVmAssociationsApi.get ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsVmAssociationsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/vm/{tag}/associations'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsVmAssociationsResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsVmAssociationsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be removed from the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsVmAssociationsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def remove(tag, request_body, opts = {})
      data, _status_code, _headers = remove_with_http_info(tag, request_body, opts)
      data
    end

    # Detaches a tag from multiple virtual machines. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be removed from the specified virtual machines. The parameter must be an identifier for the resource type: cis.tagging.Tag:VirtualMachine.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsVmAssociationsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def remove_with_http_info(tag, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsVmAssociationsApi.remove ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsVmAssociationsApi.remove"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TagsVmAssociationsApi.remove"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/vm/{tag}/associations?action=remove'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsVmAssociationsRemoveResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsVmAssociationsApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
