# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NetworkDistributedSwitchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_min_version Minimum version that the vSphere distributed switches must have to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any version match the filter.
    # @option opts [Integer] :filter_min_mtu Minimum size of the Maximum Transmission Unit (MTU) that this vSphere distributed switch must permit for its network traffic, to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, vSphere distributed switches with any MTU size match the filter.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain host(s) connected to a vSphere distributed switch for it to match the filter. For each cluster provided, the value of DistributedSwitches.FilterSpec.connected-to-all-hosts is used to control whether any or all hosts in it must be connected to the vSphere distributed switch for the vSphere distributed switch to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Boolean] :filter_connected_to_all_hosts Flag to alter the filtering behavior among clustered hosts. If false, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it. If true, a vSphere distributed switch will only match a cluster if all hosts in the cluster are connected to it (see DistributedSwitches.FilterSpec.clusters). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it.
    # @return [VcenterNetworkDistributedSwitchesListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_min_version Minimum version that the vSphere distributed switches must have to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any version match the filter.
    # @option opts [Integer] :filter_min_mtu Minimum size of the Maximum Transmission Unit (MTU) that this vSphere distributed switch must permit for its network traffic, to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, vSphere distributed switches with any MTU size match the filter.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain host(s) connected to a vSphere distributed switch for it to match the filter. For each cluster provided, the value of DistributedSwitches.FilterSpec.connected-to-all-hosts is used to control whether any or all hosts in it must be connected to the vSphere distributed switch for the vSphere distributed switch to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @option opts [Boolean] :filter_connected_to_all_hosts Flag to alter the filtering behavior among clustered hosts. If false, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it. If true, a vSphere distributed switch will only match a cluster if all hosts in the cluster are connected to it (see DistributedSwitches.FilterSpec.clusters). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it.
    # @return [Array<(VcenterNetworkDistributedSwitchesListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkDistributedSwitchesApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/network/distributed-switches'

      # query parameters
      query_params = {}
      query_params[:'filter.min_version'] = opts[:'filter_min_version'] if !opts[:'filter_min_version'].nil?
      query_params[:'filter.min_mtu'] = opts[:'filter_min_mtu'] if !opts[:'filter_min_mtu'].nil?
      query_params[:'filter.clusters'] = @api_client.build_collection_param(opts[:'filter_clusters'], :multi) if !opts[:'filter_clusters'].nil?
      query_params[:'filter.connected_to_all_hosts'] = opts[:'filter_connected_to_all_hosts'] if !opts[:'filter_connected_to_all_hosts'].nil?

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
	  '200' => 'VCenter::VcenterNetworkDistributedSwitchesListResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkDistributedSwitchesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
