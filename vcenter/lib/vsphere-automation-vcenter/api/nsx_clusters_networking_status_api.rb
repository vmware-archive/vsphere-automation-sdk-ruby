# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxClustersNetworkingStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param cluster Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNsxClustersNetworkingStatusInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cluster, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, opts)
      data
    end

    # Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param cluster Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNsxClustersNetworkingStatusInfo|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxClustersNetworkingStatusApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling NsxClustersNetworkingStatusApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/clusters/{cluster}/networking-status'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'VCenter::VcenterNsxClustersNetworkingStatusInfo',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxClustersNetworkingStatusApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
