# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class InventoryDatastoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
    # @param action ~action&#x3D;find
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterInventoryDatastoreFindResult|VapiStdErrorsNotFoundError|]
    def find(action, request_body, opts = {})
      data, _status_code, _headers = find_with_http_info(action, request_body, opts)
      data
    end

    # Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
    # @api private
    # @param action ~action&#x3D;find
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterInventoryDatastoreFindResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def find_with_http_info(action, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InventoryDatastoreApi.find ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling InventoryDatastoreApi.find"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['find'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of find"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling InventoryDatastoreApi.find"
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/inventory/datastore'

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
	  '200' => 'VCenter::VcenterInventoryDatastoreFindResult',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryDatastoreApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
