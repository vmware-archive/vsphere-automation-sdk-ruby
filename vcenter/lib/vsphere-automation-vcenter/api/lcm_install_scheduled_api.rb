# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmInstallScheduledApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param task The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmInstallScheduledResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|]
    def get(task, opts = {})
      data, _status_code, _headers = get_with_http_info(task, opts)
      data
    end

    # Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param task The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmInstallScheduledResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(task, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmInstallScheduledApi.get ...'
      end
      # verify the required parameter 'task' is set
      if @api_client.config.client_side_validation && task.nil?
        fail ArgumentError, "Missing the required parameter 'task' when calling LcmInstallScheduledApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/lcm/install/scheduled/{task}'.sub('{' + 'task' + '}', task.to_s)

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
	  '200' => 'VCenter::VcenterLcmInstallScheduledResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmInstallScheduledApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param task The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def set(task, request_body, opts = {})
      set_with_http_info(task, request_body, opts)
      nil
    end

    # Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param task The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(task, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmInstallScheduledApi.set ...'
      end
      # verify the required parameter 'task' is set
      if @api_client.config.client_side_validation && task.nil?
        fail ArgumentError, "Missing the required parameter 'task' when calling LcmInstallScheduledApi.set"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LcmInstallScheduledApi.set"
      end
      # resource path
      local_var_path = '/rest/vcenter/lcm/install/scheduled/{task}'.sub('{' + 'task' + '}', task.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmInstallScheduledApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
