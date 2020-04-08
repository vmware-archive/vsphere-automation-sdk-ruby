# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NsxIpPoolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param ip_pool Identifier of an NSX IP pool. The parameter must be an identifier for the resource type: nsx.pools.ip_pool.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNsxIpPoolsInfo|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(ip_pool, opts = {})
      data, _status_code, _headers = get_with_http_info(ip_pool, opts)
      data
    end

    # Read the NSX IP pool. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param ip_pool Identifier of an NSX IP pool. The parameter must be an identifier for the resource type: nsx.pools.ip_pool.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNsxIpPoolsInfo|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(ip_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxIpPoolsApi.get ...'
      end
      # verify the required parameter 'ip_pool' is set
      if @api_client.config.client_side_validation && ip_pool.nil?
        fail ArgumentError, "Missing the required parameter 'ip_pool' when calling NsxIpPoolsApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/ip-pools/{ip_pool}'.sub('{' + 'ip_pool' + '}', ip_pool.to_s)

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
	  '200' => 'VCenter::VcenterNsxIpPoolsInfo',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxIpPoolsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterNsxIpPoolsSummary>|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the list of the NSX IP pools. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterNsxIpPoolsSummary>|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NsxIpPoolsApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/nsx/ip-pools'

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
	  '200' => 'VCenter::Array<VcenterNsxIpPoolsSummary>',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NsxIpPoolsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
