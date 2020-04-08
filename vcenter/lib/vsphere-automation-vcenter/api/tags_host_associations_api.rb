# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TagsHostAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be assigned to the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsHostAssociationsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def add(tag, request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(tag, request_body, opts)
      data
    end

    # Attaches a tag to multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be assigned to the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsHostAssociationsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(tag, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsHostAssociationsApi.add ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsHostAssociationsApi.add"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TagsHostAssociationsApi.add"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/host/{tag}/associations?action=add'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsHostAssociationsAddResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsHostAssociationsApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be queried for its associated hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsHostAssociationsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(tag, opts = {})
      data, _status_code, _headers = get_with_http_info(tag, opts)
      data
    end

    # Lists all hosts that have this tag attached. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be queried for its associated hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsHostAssociationsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsHostAssociationsApi.get ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsHostAssociationsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/host/{tag}/associations'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsHostAssociationsResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsHostAssociationsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param tag Identifier of the tag to be removed from the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTagsHostAssociationsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def remove(tag, request_body, opts = {})
      data, _status_code, _headers = remove_with_http_info(tag, request_body, opts)
      data
    end

    # Detaches a tag from multiple hosts. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param tag Identifier of the tag to be removed from the specified hosts. The parameter must be an identifier for the resource type: cis.tagging.Tag:HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTagsHostAssociationsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def remove_with_http_info(tag, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsHostAssociationsApi.remove ...'
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling TagsHostAssociationsApi.remove"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TagsHostAssociationsApi.remove"
      end
      # resource path
      local_var_path = '/rest/vcenter/tags/host/{tag}/associations?action=remove'.sub('{' + 'tag' + '}', tag.to_s)

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
	  '200' => 'VCenter::VcenterTagsHostAssociationsRemoveResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsHostAssociationsApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
