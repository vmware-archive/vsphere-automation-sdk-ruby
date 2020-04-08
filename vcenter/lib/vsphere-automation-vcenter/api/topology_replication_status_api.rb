# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TopologyReplicationStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_nodes Identifier that a vCenter and Platform Services Controller node must have to match the filter. (see ReplicationStatus.Summary.node). If unset or empty, all vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name.
    # @return [VcenterTopologyReplicationStatusListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_nodes Identifier that a vCenter and Platform Services Controller node must have to match the filter. (see ReplicationStatus.Summary.node). If unset or empty, all vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name.
    # @return [Array<(VcenterTopologyReplicationStatusListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopologyReplicationStatusApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/topology/replication-status'

      # query parameters
      query_params = {}
      query_params[:'filter.nodes'] = @api_client.build_collection_param(opts[:'filter_nodes'], :multi) if !opts[:'filter_nodes'].nil?

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
	  '200' => 'VCenter::VcenterTopologyReplicationStatusListResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopologyReplicationStatusApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
