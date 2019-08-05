# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataPrivilegeServiceOperationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
    # @param service_id Identifier of the service element.
    # @param action ~action&#x3D;get
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegeServiceOperationResult|VapiStdErrorsNotFoundError|]
    def get(service_id, action, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(service_id, action, request_body, opts)
      data
    end

    # Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
    # @api private
    # @param service_id Identifier of the service element.
    # @param action ~action&#x3D;get
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegeServiceOperationResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service_id, action, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegeServiceOperationApi.get ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling MetadataPrivilegeServiceOperationApi.get"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling MetadataPrivilegeServiceOperationApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['get'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling MetadataPrivilegeServiceOperationApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/service/operation/id:{service_id}'.sub('{' + 'service_id' + '}', service_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'~action'] = action

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
	  '200' => 'VAPI::VapiMetadataPrivilegeServiceOperationResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegeServiceOperationApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.
    # @param service_id Identifier of the service element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataPrivilegeServiceOperationListResult|VapiStdErrorsNotFoundError|]
    def list(service_id, opts = {})
      data, _status_code, _headers = list_with_http_info(service_id, opts)
      data
    end

    # Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.
    # @api private
    # @param service_id Identifier of the service element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataPrivilegeServiceOperationListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataPrivilegeServiceOperationApi.list ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling MetadataPrivilegeServiceOperationApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/privilege/service/operation'

      # query parameters
      query_params = {}
      query_params[:'service_id'] = service_id

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
	  '200' => 'VAPI::VapiMetadataPrivilegeServiceOperationListResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataPrivilegeServiceOperationApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
