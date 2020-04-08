# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementDistributedSwitchCompatibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.
    # @param cluster Identifier of a vCenter Cluster. Only Distributed Switches associated with the vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only Distributed Switches which are compatible with vSphere Namespaces match the filter. If false, only Distributed Switches which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Distributed Switches match the filter.
    # @return [Array<VcenterNamespaceManagementDistributedSwitchCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsInternalServerError|]
    def list(cluster, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, opts)
      data
    end

    # Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.
    # @api private
    # @param cluster Identifier of a vCenter Cluster. Only Distributed Switches associated with the vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only Distributed Switches which are compatible with vSphere Namespaces match the filter. If false, only Distributed Switches which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Distributed Switches match the filter.
    # @return [Array<(Array<VcenterNamespaceManagementDistributedSwitchCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsInternalServerError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementDistributedSwitchCompatibilityApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NamespaceManagementDistributedSwitchCompatibilityApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/distributed-switch-compatibility'

      # query parameters
      query_params = {}
      query_params[:'cluster'] = cluster
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
	  '200' => 'VCenter::Array<VcenterNamespaceManagementDistributedSwitchCompatibilitySummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsInternalServerError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementDistributedSwitchCompatibilityApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
