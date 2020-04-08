# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementEdgeClusterCompatibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.
    # @param cluster Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param distributed_switch Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter.
    # @return [Array<VcenterNamespaceManagementEdgeClusterCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsInternalServerError|]
    def list(cluster, distributed_switch, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, distributed_switch, opts)
      data
    end

    # Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.
    # @api private
    # @param cluster Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param distributed_switch Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter.
    # @return [Array<(Array<VcenterNamespaceManagementEdgeClusterCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsInternalServerError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, distributed_switch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementEdgeClusterCompatibilityApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementEdgeClusterCompatibilityApi.list"
      end
      # verify the required parameter 'distributed_switch' is set
      if @api_client.config.client_side_validation && distributed_switch.nil?
        fail ArgumentError, "Missing the required parameter 'distributed_switch' when calling NamespaceManagementEdgeClusterCompatibilityApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/edge-cluster-compatibility'

      # query parameters
      query_params = {}
      query_params[:'cluster'] = cluster
      query_params[:'distributed_switch'] = distributed_switch
      query_params[:'compatible'] = opts[:'compatible'] if !opts[:'compatible'].nil?

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
	  '200' => 'VCenter::Array<VcenterNamespaceManagementEdgeClusterCompatibilitySummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsInternalServerError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementEdgeClusterCompatibilityApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
