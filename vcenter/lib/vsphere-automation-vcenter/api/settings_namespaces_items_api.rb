# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class SettingsNamespacesItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param namespace the targetted namespace
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :keys 
    # @return [VcenterSettingsNamespacesItemsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(namespace, opts = {})
      data, _status_code, _headers = list_with_http_info(namespace, opts)
      data
    end

    # Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param namespace the targetted namespace
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :keys 
    # @return [Array<(VcenterSettingsNamespacesItemsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsNamespacesItemsApi.list ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling SettingsNamespacesItemsApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/settings/namespaces/{namespace}/items'.sub('{' + 'namespace' + '}', namespace.to_s)

      # query parameters
      query_params = {}
      query_params[:'keys'] = @api_client.build_collection_param(opts[:'keys'], :csv) if !opts[:'keys'].nil?

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
	  '200' => 'VCenter::VcenterSettingsNamespacesItemsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsNamespacesItemsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \"\", is passed in as the value, the value is set to \"\". Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @param namespace the targetted namespace
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def put(namespace, request_body, opts = {})
      put_with_http_info(namespace, request_body, opts)
      nil
    end

    # Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \&quot;\&quot;, is passed in as the value, the value is set to \&quot;\&quot;. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    # @api private
    # @param namespace the targetted namespace
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_with_http_info(namespace, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsNamespacesItemsApi.put ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling SettingsNamespacesItemsApi.put"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling SettingsNamespacesItemsApi.put"
      end
      # resource path
      local_var_path = '/rest/vcenter/settings/namespaces/{namespace}/items'.sub('{' + 'namespace' + '}', namespace.to_s)

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
        @api_client.config.logger.debug "API called: SettingsNamespacesItemsApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
