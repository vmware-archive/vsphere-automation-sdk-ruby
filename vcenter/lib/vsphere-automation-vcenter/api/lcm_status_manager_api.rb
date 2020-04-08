# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmStatusManagerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmStatusManagerCheckResp|]
    def check(opts = {})
      data, _status_code, _headers = check_with_http_info(opts)
      data
    end

    # Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmStatusManagerCheckResp|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmStatusManagerApi.check ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/lcm/appliance-status'

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
	  '200' => 'VCenter::VcenterLcmStatusManagerCheckResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmStatusManagerApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
