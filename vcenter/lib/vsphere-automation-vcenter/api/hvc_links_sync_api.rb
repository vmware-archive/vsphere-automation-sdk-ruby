# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class HvcLinksSyncApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param link Unique identifier of the link.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterHvcLinksSyncRemediate] :request_body 
    # @return [VcenterHvcLinksSyncRemediateResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|]
    def remediate(link, opts = {})
      data, _status_code, _headers = remediate_with_http_info(link, opts)
      data
    end

    # Remediates the sync state between the linked domains by initiating a fresh sync for certificate providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param link Unique identifier of the link.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterHvcLinksSyncRemediate] :request_body 
    # @return [Array<(VcenterHvcLinksSyncRemediateResp|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsTimedOutError|, Fixnum, Hash)>]  data, response status code and response headers
    def remediate_with_http_info(link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HvcLinksSyncApi.remediate ...'
      end
      # verify the required parameter 'link' is set
      if @api_client.config.client_side_validation && link.nil?
        fail ArgumentError, "Missing the required parameter 'link' when calling HvcLinksSyncApi.remediate"
      end
      # resource path
      local_var_path = '/rest/hvc/links/{link}/sync?action=remediate'.sub('{' + 'link' + '}', link.to_s)

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
	  '200' => 'VCenter::VcenterHvcLinksSyncRemediateResp',
	  '400' => 'VCenter::VapiStdErrorsResourceBusyError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '504' => 'VCenter::VapiStdErrorsTimedOutError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HvcLinksSyncApi#remediate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param link Unique identifier of the link.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def reset(link, opts = {})
      reset_with_http_info(link, opts)
      nil
    end

    # Resets the sync state between the linked domains by initiating a fresh sync for all providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param link Unique identifier of the link.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def reset_with_http_info(link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HvcLinksSyncApi.reset ...'
      end
      # verify the required parameter 'link' is set
      if @api_client.config.client_side_validation && link.nil?
        fail ArgumentError, "Missing the required parameter 'link' when calling HvcLinksSyncApi.reset"
      end
      # resource path
      local_var_path = '/rest/hvc/links/{link}/sync?action=reset'.sub('{' + 'link' + '}', link.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HvcLinksSyncApi#reset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
