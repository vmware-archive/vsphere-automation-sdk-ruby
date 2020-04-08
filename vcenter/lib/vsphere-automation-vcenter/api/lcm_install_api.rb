# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmInstallApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmInstallCheckResp|VapiStdErrorsInvalidArgumentError|]
    def check(request_body, opts = {})
      data, _status_code, _headers = check_with_http_info(request_body, opts)
      data
    end

    # Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmInstallCheckResp|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def check_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmInstallApi.check ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LcmInstallApi.check"
      end
      # resource path
      local_var_path = '/rest/vcenter/lcm/install?action=check'

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
	  '200' => 'VCenter::VcenterLcmInstallCheckResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmInstallApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmInstallStartResp|VapiStdErrorsInvalidArgumentError|]
    def start(request_body, opts = {})
      data, _status_code, _headers = start_with_http_info(request_body, opts)
      data
    end

    # Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmInstallStartResp|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def start_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmInstallApi.start ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LcmInstallApi.start"
      end
      # resource path
      local_var_path = '/rest/vcenter/lcm/install?action=start'

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
	  '200' => 'VCenter::VcenterLcmInstallStartResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmInstallApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
