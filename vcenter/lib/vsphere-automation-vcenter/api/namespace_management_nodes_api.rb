# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementNodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.
    # @param cluster Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespaceManagementNodesEnterMaintenanceModeResp|VapiStdErrorsInvalidElementConfigurationError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def enter_maintenance_mode(cluster, request_body, opts = {})
      data, _status_code, _headers = enter_maintenance_mode_with_http_info(cluster, request_body, opts)
      data
    end

    # Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.
    # @api private
    # @param cluster Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespaceManagementNodesEnterMaintenanceModeResp|VapiStdErrorsInvalidElementConfigurationError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def enter_maintenance_mode_with_http_info(cluster, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementNodesApi.enter_maintenance_mode ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementNodesApi.enter_maintenance_mode"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling NamespaceManagementNodesApi.enter_maintenance_mode"
      end
      # resource path
      local_var_path = '/rest/vcenter/namespace-management/clusters/{cluster}/nodes?action=enter_maintenance_mode'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNamespaceManagementNodesEnterMaintenanceModeResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidElementConfigurationError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementNodesApi#enter_maintenance_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.
    # @param cluster Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespaceManagementNodesExitMaintenanceModeResp|VapiStdErrorsInvalidElementConfigurationError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def exit_maintenance_mode(cluster, request_body, opts = {})
      data, _status_code, _headers = exit_maintenance_mode_with_http_info(cluster, request_body, opts)
      data
    end

    # Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.
    # @api private
    # @param cluster Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespaceManagementNodesExitMaintenanceModeResp|VapiStdErrorsInvalidElementConfigurationError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def exit_maintenance_mode_with_http_info(cluster, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementNodesApi.exit_maintenance_mode ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementNodesApi.exit_maintenance_mode"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling NamespaceManagementNodesApi.exit_maintenance_mode"
      end
      # resource path
      local_var_path = '/rest/vcenter/namespace-management/clusters/{cluster}/nodes?action=exit_maintenance_mode'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNamespaceManagementNodesExitMaintenanceModeResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidElementConfigurationError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementNodesApi#exit_maintenance_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
