# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespacesInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create namespace object in the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesCreateSpec] :request_body 
    # @return [|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Create namespace object in the cluster.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.create ...'
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the namespace object in the cluster.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def delete(namespace, opts = {})
      delete_with_http_info(namespace, opts)
      nil
    end

    # Delete the namespace object in the cluster.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.delete ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesInstancesApi.delete"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}'.sub('{' + 'namespace' + '}', namespace.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a specific namespace.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespacesInstancesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(namespace, opts = {})
      data, _status_code, _headers = get_with_http_info(namespace, opts)
      data
    end

    # Returns information about a specific namespace.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespacesInstancesInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.get ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesInstancesApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}'.sub('{' + 'namespace' + '}', namespace.to_s)

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
	  '200' => 'VCenter::VcenterNamespacesInstancesInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the information about all namespaces on this vCenter.
    # @param [Hash] opts the optional parameters
    # @return [Array<VcenterNamespacesInstancesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the information about all namespaces on this vCenter.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VcenterNamespacesInstancesSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances'

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
	  '200' => 'VCenter::Array<VcenterNamespacesInstancesSummary>',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesSetSpec] :request_body 
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def set(namespace, opts = {})
      set_with_http_info(namespace, opts)
      nil
    end

    # Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesSetSpec] :request_body 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.set ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesInstancesApi.set"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}'.sub('{' + 'namespace' + '}', namespace.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesUpdateSpec] :request_body 
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def update(namespace, opts = {})
      update_with_http_info(namespace, opts)
      nil
    end

    # Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesInstancesUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesInstancesApi.update ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesInstancesApi.update"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}'.sub('{' + 'namespace' + '}', namespace.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesInstancesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
