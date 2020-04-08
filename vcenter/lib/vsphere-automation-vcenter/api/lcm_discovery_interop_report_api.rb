# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmDiscoveryInteropReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryInteropReportSpec] :request_body 
    # @return [String|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def create_task(opts = {})
      data, _status_code, _headers = create_task_with_http_info(opts)
      data
    end

    # Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterLcmDiscoveryInteropReportSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmDiscoveryInteropReportApi.create_task ...'
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/discovery/interop-report?vmw-task=true'

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
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'VCenter::String',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmDiscoveryInteropReportApi#create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
