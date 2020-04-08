# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class HostFeaturesTechPreviewApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier for the host from which Tech Preview information will be retrieved. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :features Features for which status is to be retrieved. If unset, the status of all Tech Preview feature switches will be returned.
    # @return [VcenterHostFeaturesTechPreviewResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|]
    def get(host, opts = {})
      data, _status_code, _headers = get_with_http_info(host, opts)
      data
    end

    # Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier for the host from which Tech Preview information will be retrieved. The parameter must be an identifier for the resource type: HostSystem.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :features Features for which status is to be retrieved. If unset, the status of all Tech Preview feature switches will be returned.
    # @return [Array<(VcenterHostFeaturesTechPreviewResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(host, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostFeaturesTechPreviewApi.get ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostFeaturesTechPreviewApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/host/{host}/features/tech-preview'.sub('{' + 'host' + '}', host.to_s)

      # query parameters
      query_params = {}
      query_params[:'features'] = @api_client.build_collection_param(opts[:'features'], :csv) if !opts[:'features'].nil?

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
	  '200' => 'VCenter::VcenterHostFeaturesTechPreviewResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostFeaturesTechPreviewApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param host Identifier for the host on which Tech Preview information will be set. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|nil]
    def update(host, request_body, opts = {})
      update_with_http_info(host, request_body, opts)
      nil
    end

    # Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param host Identifier for the host on which Tech Preview information will be set. The parameter must be an identifier for the resource type: HostSystem.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(host, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostFeaturesTechPreviewApi.update ...'
      end
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling HostFeaturesTechPreviewApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling HostFeaturesTechPreviewApi.update"
      end
      # resource path
      local_var_path = '/rest/vcenter/host/{host}/features/tech-preview'.sub('{' + 'host' + '}', host.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostFeaturesTechPreviewApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
