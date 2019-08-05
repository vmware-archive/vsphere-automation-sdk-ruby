# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the current status of the appliance deployment.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the current status of the appliance deployment.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment'

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
	  '200' => 'VCenter::VcenterDeploymentResult',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Rollback a failed appliance so it can be configured once again.
    # @param action action&#x3D;rollback
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|nil]
    def rollback(action, opts = {})
      rollback_with_http_info(action, opts)
      nil
    end

    # Rollback a failed appliance so it can be configured once again.
    # @api private
    # @param action action&#x3D;rollback
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def rollback_with_http_info(action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentApi.rollback ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling DeploymentApi.rollback"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['rollback'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of rollback"
      end
      # resource path
      local_var_path = '/vcenter/deployment'

      # query parameters
      query_params = {}
      query_params[:'action'] = action

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#rollback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
