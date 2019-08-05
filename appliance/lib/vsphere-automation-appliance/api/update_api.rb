# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class UpdateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Request the cancellation the update operation that is currently in progress.
    # @param action action&#x3D;cancel
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil]
    def cancel(action, opts = {})
      cancel_with_http_info(action, opts)
      nil
    end

    # Request the cancellation the update operation that is currently in progress.
    # @api private
    # @param action action&#x3D;cancel
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdateApi.cancel ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UpdateApi.cancel"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['cancel'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of cancel"
      end
      # resource path
      local_var_path = '/appliance/update'

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
        @api_client.config.logger.debug "API called: UpdateApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the current status of the appliance update.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdateResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Gets the current status of the appliance update.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdateResult|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdateApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/update'

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
	  '200' => 'Appliance::ApplianceUpdateResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	  '401' => 'Appliance::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Appliance::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdateApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
