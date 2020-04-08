# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ClusterModulesVmMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param _module Identifier of the module to which the specified virtual machines are added. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterClusterModulesVmMembersAddResp|VapiStdErrorsNotFoundError|]
    def add(_module, request_body, opts = {})
      data, _status_code, _headers = add_with_http_info(_module, request_body, opts)
      data
    end

    # Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param _module Identifier of the module to which the specified virtual machines are added. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterClusterModulesVmMembersAddResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(_module, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterModulesVmMembersApi.add ...'
      end
      # verify the required parameter '_module' is set
      if @api_client.config.client_side_validation && _module.nil?
        fail ArgumentError, "Missing the required parameter '_module' when calling ClusterModulesVmMembersApi.add"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ClusterModulesVmMembersApi.add"
      end
      # resource path
      local_var_path = '/rest/vcenter/cluster/modules/vm/{module}/members?action=add'.sub('{' + 'module' + '}', _module.to_s)

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
	  '200' => 'VCenter::VcenterClusterModulesVmMembersAddResp',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterModulesVmMembersApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param _module Identifier of the module to be queried for its virtual machines. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param [Hash] opts the optional parameters
    # @return [VcenterClusterModulesVmMembersResp|VapiStdErrorsNotFoundError|]
    def get(_module, opts = {})
      data, _status_code, _headers = get_with_http_info(_module, opts)
      data
    end

    # Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param _module Identifier of the module to be queried for its virtual machines. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterClusterModulesVmMembersResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(_module, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterModulesVmMembersApi.get ...'
      end
      # verify the required parameter '_module' is set
      if @api_client.config.client_side_validation && _module.nil?
        fail ArgumentError, "Missing the required parameter '_module' when calling ClusterModulesVmMembersApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/cluster/modules/vm/{module}/members'.sub('{' + 'module' + '}', _module.to_s)

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
	  '200' => 'VCenter::VcenterClusterModulesVmMembersResp',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterModulesVmMembersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param _module Identifier of the module from which the specified virtual machines are removed. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterClusterModulesVmMembersRemoveResp|VapiStdErrorsNotFoundError|]
    def remove(_module, request_body, opts = {})
      data, _status_code, _headers = remove_with_http_info(_module, request_body, opts)
      data
    end

    # Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param _module Identifier of the module from which the specified virtual machines are removed. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterClusterModulesVmMembersRemoveResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def remove_with_http_info(_module, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterModulesVmMembersApi.remove ...'
      end
      # verify the required parameter '_module' is set
      if @api_client.config.client_side_validation && _module.nil?
        fail ArgumentError, "Missing the required parameter '_module' when calling ClusterModulesVmMembersApi.remove"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ClusterModulesVmMembersApi.remove"
      end
      # resource path
      local_var_path = '/rest/vcenter/cluster/modules/vm/{module}/members?action=remove'.sub('{' + 'module' + '}', _module.to_s)

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
	  '200' => 'VCenter::VcenterClusterModulesVmMembersRemoveResp',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterModulesVmMembersApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
