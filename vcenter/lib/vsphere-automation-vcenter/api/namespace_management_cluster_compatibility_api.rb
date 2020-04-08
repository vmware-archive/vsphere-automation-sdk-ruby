# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespaceManagementClusterCompatibilityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only clusters which are compatible for Namespaces match the filter. If false, all clusters match the filter. If unset, both compatible and incompatible clusters match the filter.
    # @return [Array<VcenterNamespaceManagementClusterCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsInternalServerError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :compatible Compatibility criteria for matching the filter. If true, only clusters which are compatible for Namespaces match the filter. If false, all clusters match the filter. If unset, both compatible and incompatible clusters match the filter.
    # @return [Array<(Array<VcenterNamespaceManagementClusterCompatibilitySummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsInternalServerError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespaceManagementClusterCompatibilityApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/namespace-management/cluster-compatibility'

      # query parameters
      query_params = {}
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
	  '200' => 'VCenter::Array<VcenterNamespaceManagementClusterCompatibilitySummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '500' => 'VCenter::VapiStdErrorsInternalServerError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespaceManagementClusterCompatibilityApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
