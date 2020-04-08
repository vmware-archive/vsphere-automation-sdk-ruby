# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TopologyNodesEmbeddedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param hostname FQDN or IP address of vCenter Server node to be decommissioned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTopologyNodesEmbeddedDecommissionTaskResp|VapiStdErrorsUnverifiedPeerError|VapiStdErrorsUnauthenticatedError|]
    def decommission_task(hostname, request_body, opts = {})
      data, _status_code, _headers = decommission_task_with_http_info(hostname, request_body, opts)
      data
    end

    # Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param hostname FQDN or IP address of vCenter Server node to be decommissioned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTopologyNodesEmbeddedDecommissionTaskResp|VapiStdErrorsUnverifiedPeerError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def decommission_task_with_http_info(hostname, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopologyNodesEmbeddedApi.decommission_task ...'
      end
      # verify the required parameter 'hostname' is set
      if @api_client.config.client_side_validation && hostname.nil?
        fail ArgumentError, "Missing the required parameter 'hostname' when calling TopologyNodesEmbeddedApi.decommission_task"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TopologyNodesEmbeddedApi.decommission_task"
      end
      # resource path
      local_var_path = '/rest/vcenter/topology/nodes/embedded/{hostname}?action=decommission&vmw-task=true'.sub('{' + 'hostname' + '}', hostname.to_s)

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
	  '200' => 'VCenter::VcenterTopologyNodesEmbeddedDecommissionTaskResp',
	  '400' => 'VCenter::VapiStdErrorsUnverifiedPeerError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopologyNodesEmbeddedApi#decommission_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
