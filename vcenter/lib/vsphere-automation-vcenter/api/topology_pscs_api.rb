# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class TopologyPscsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Decommission the external Platform Services Controller node.
    # @param hostname FQDN or IP address of external Platform Services Controller node to be decommissioned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterTopologyPscsDecommissionTaskResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|]
    def decommissiontask(hostname, request_body, opts = {})
      data, _status_code, _headers = decommissiontask_with_http_info(hostname, request_body, opts)
      data
    end

    # Decommission the external Platform Services Controller node.
    # @api private
    # @param hostname FQDN or IP address of external Platform Services Controller node to be decommissioned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterTopologyPscsDecommissionTaskResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|, Fixnum, Hash)>]  data, response status code and response headers
    def decommissiontask_with_http_info(hostname, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopologyPscsApi.decommissiontask ...'
      end
      # verify the required parameter 'hostname' is set
      if @api_client.config.client_side_validation && hostname.nil?
        fail ArgumentError, "Missing the required parameter 'hostname' when calling TopologyPscsApi.decommissiontask"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TopologyPscsApi.decommissiontask"
      end
      # resource path
      local_var_path = '/vcenter/topology/pscs/{hostname}?action=decommission&vmw-task=true'.sub('{' + 'hostname' + '}', hostname.to_s)

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
	  '200' => 'VCenter::VcenterTopologyPscsDecommissionTaskResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopologyPscsApi#decommissiontask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
