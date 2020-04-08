# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxManagementNetworkCompatibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier of a vCenter Cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param dv_switch Identifier of a vSphere Distributed Switch (VDS). The parameter must be an identifier for the resource type: DistributedVirtualSwitch.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterNsxManagementNetworkCompatibilitySummary>|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list(cluster, dv_switch, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, dv_switch, opts)
      data
    end

    # List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier of a vCenter Cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param dv_switch Identifier of a vSphere Distributed Switch (VDS). The parameter must be an identifier for the resource type: DistributedVirtualSwitch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterNsxManagementNetworkCompatibilitySummary>|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, dv_switch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxManagementNetworkCompatibilityApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxManagementNetworkCompatibilityApi.list"
      end
      # verify the required parameter 'dv_switch' is set
      if @api_client.config.client_side_validation && dv_switch.nil?
        fail ArgumentError, "Missing the required parameter 'dv_switch' when calling NsxManagementNetworkCompatibilityApi.list"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/management-network-compatibility'

      # query parameters
      query_params = {}
      query_params[:'cluster'] = cluster
      query_params[:'dv_switch'] = dv_switch

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
	  '200' => 'VCenter::Array<VcenterNsxManagementNetworkCompatibilitySummary>',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxManagementNetworkCompatibilityApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
