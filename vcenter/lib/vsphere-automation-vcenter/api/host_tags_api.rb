# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class HostTagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host to which the tags will be assigned. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterHostTagsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def add(host, request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(host, request_body, opts)
      data
    end

    # Attaches tags to a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host to which the tags will be assigned. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHostTagsAddResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(host, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostTagsApi.add ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostTagsApi.add"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling HostTagsApi.add"
      end
      # resource path
      local_var_path = '/rest/vcenter/host/{host}/tags?action=add'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'VCenter::VcenterHostTagsAddResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostTagsApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host to be queried for its assigned tags. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [VcenterHostTagsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(host, opts = {})
      data, _status_code, _headers = get_with_http_info(host, opts)
      data
    end

    # Lists all tags attached to the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host to be queried for its assigned tags. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHostTagsResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostTagsApi.get ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostTagsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/host/{host}/tags'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'VCenter::VcenterHostTagsResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostTagsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier of the host from which the tags will be removed. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterHostTagsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def remove(host, request_body, opts = {})
      data, _status_code, _headers = remove_with_http_info(host, request_body, opts)
      data
    end

    # Detaches tags from a host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier of the host from which the tags will be removed. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHostTagsRemoveResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def remove_with_http_info(host, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostTagsApi.remove ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostTagsApi.remove"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling HostTagsApi.remove"
      end
      # resource path
      local_var_path = '/rest/vcenter/host/{host}/tags?action=remove'.sub('{' + 'host' + '}', host.to_s)

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
	  '200' => 'VCenter::VcenterHostTagsRemoveResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostTagsApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
