# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TopologyNodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param node Identifier of the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. The parameter must be an identifier for the resource type: vcenter.VCenter.name.
    # @param [Hash] opts the optional parameters
    # @return [VcenterTopologyNodesResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(node, opts = {})
      data, _status_code, _headers = get_with_http_info(node, opts)
      data
    end

    # Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param node Identifier of the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. The parameter must be an identifier for the resource type: vcenter.VCenter.name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTopologyNodesResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(node, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopologyNodesApi.get ...'
      end
      # verify the required parameter 'node' is set
      if @api_client.config.client_side_validation && node.nil?
        fail ArgumentError, "Missing the required parameter 'node' when calling TopologyNodesApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/topology/nodes/{node}'.sub('{' + 'node' + '}', node.to_s)

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
	  '200' => 'VCenter::VcenterTopologyNodesResp',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopologyNodesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_types Types of the appliance that a vCenter and Platform Services Controller node must be to match the filter (see Nodes.ApplianceType. If unset or empty, node of any ApplianceType match the filter.
    # @return [VcenterTopologyNodesListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_types Types of the appliance that a vCenter and Platform Services Controller node must be to match the filter (see Nodes.ApplianceType. If unset or empty, node of any ApplianceType match the filter.
    # @return [Array<(VcenterTopologyNodesListResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopologyNodesApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_types'] && !opts[:'filter_types'].all? { |item| ['VCSA_EMBEDDED', 'VCSA_EXTERNAL', 'PSC_EXTERNAL'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_types", must include one of VCSA_EMBEDDED, VCSA_EXTERNAL, PSC_EXTERNAL'
      end
      # resource path
      local_var_path = '/rest/vcenter/topology/nodes'

      # query parameters
      query_params = {}
      query_params[:'filter.types'] = @api_client.build_collection_param(opts[:'filter_types'], :multi) if !opts[:'filter_types'].nil?

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
	  '200' => 'VCenter::VcenterTopologyNodesListResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopologyNodesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
