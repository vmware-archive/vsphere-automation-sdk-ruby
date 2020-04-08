# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ResourcePoolApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterResourcePoolCreateResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterResourcePoolCreateResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourcePoolApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ResourcePoolApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/resource-pool'

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
	  '200' => 'VCenter::VcenterResourcePoolCreateResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcePoolApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a resource pool.
    # @param resource_pool Identifier of the resource pool to be deleted. The parameter must be an identifier for the resource type: ResourcePool.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(resource_pool, opts = {})
      delete_with_http_info(resource_pool, opts)
      nil
    end

    # Deletes a resource pool.
    # @api private
    # @param resource_pool Identifier of the resource pool to be deleted. The parameter must be an identifier for the resource type: ResourcePool.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupportedError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(resource_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourcePoolApi.delete ...'
      end
      # verify the required parameter 'resource_pool' is set
      if @api_client.config.client_side_validation && resource_pool.nil?
        fail ArgumentError, "Missing the required parameter 'resource_pool' when calling ResourcePoolApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/resource-pool/{resource_pool}'.sub('{' + 'resource_pool' + '}', resource_pool.to_s)

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
        @api_client.config.logger.debug "API called: ResourcePoolApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  
    # @param resource_pool Identifier of the resource pool for which information should be retrieved. The parameter must be an identifier for the resource type: ResourcePool.
    # @param [Hash] opts the optional parameters
    # @return [VcenterResourcePoolResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(resource_pool, opts = {})
      data, _status_code, _headers = get_with_http_info(resource_pool, opts)
      data
    end

    # Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  
    # @api private
    # @param resource_pool Identifier of the resource pool for which information should be retrieved. The parameter must be an identifier for the resource type: ResourcePool.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterResourcePoolResp|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(resource_pool, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourcePoolApi.get ...'
      end
      # verify the required parameter 'resource_pool' is set
      if @api_client.config.client_side_validation && resource_pool.nil?
        fail ArgumentError, "Missing the required parameter 'resource_pool' when calling ResourcePoolApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/resource-pool/{resource_pool}'.sub('{' + 'resource_pool' + '}', resource_pool.to_s)

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
	  '200' => 'VCenter::VcenterResourcePoolResp',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcePoolApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_resource_pools Identifiers of resource pools that can match the filter. If unset or empty, resource pools with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_names Names that resource pools must have to match the filter (see ResourcePool.Info.name). If unset or empty, resource pools with any name match the filter.
    # @option opts [Array<String>] :filter_parent_resource_pools Resource pools that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_hosts Hosts that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @return [VcenterResourcePoolListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_resource_pools Identifiers of resource pools that can match the filter. If unset or empty, resource pools with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_names Names that resource pools must have to match the filter (see ResourcePool.Info.name). If unset or empty, resource pools with any name match the filter.
    # @option opts [Array<String>] :filter_parent_resource_pools Resource pools that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
    # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
    # @option opts [Array<String>] :filter_hosts Hosts that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
    # @option opts [Array<String>] :filter_clusters Clusters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
    # @return [Array<(VcenterResourcePoolListResp|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourcePoolApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/resource-pool'

      # query parameters
      query_params = {}
      query_params[:'filter.resource_pools'] = @api_client.build_collection_param(opts[:'filter_resource_pools'], :multi) if !opts[:'filter_resource_pools'].nil?
      query_params[:'filter.names'] = @api_client.build_collection_param(opts[:'filter_names'], :multi) if !opts[:'filter_names'].nil?
      query_params[:'filter.parent_resource_pools'] = @api_client.build_collection_param(opts[:'filter_parent_resource_pools'], :multi) if !opts[:'filter_parent_resource_pools'].nil?
      query_params[:'filter.datacenters'] = @api_client.build_collection_param(opts[:'filter_datacenters'], :multi) if !opts[:'filter_datacenters'].nil?
      query_params[:'filter.hosts'] = @api_client.build_collection_param(opts[:'filter_hosts'], :multi) if !opts[:'filter_hosts'].nil?
      query_params[:'filter.clusters'] = @api_client.build_collection_param(opts[:'filter_clusters'], :multi) if !opts[:'filter_clusters'].nil?

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
	  '200' => 'VCenter::VcenterResourcePoolListResp',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcePoolApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  
    # @param resource_pool Identifier of the resource pool. The parameter must be an identifier for the resource type: ResourcePool.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil]
    def update(resource_pool, request_body, opts = {})
      update_with_http_info(resource_pool, request_body, opts)
      nil
    end

    # Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  
    # @api private
    # @param resource_pool Identifier of the resource pool. The parameter must be an identifier for the resource type: ResourcePool.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(resource_pool, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourcePoolApi.update ...'
      end
      # verify the required parameter 'resource_pool' is set
      if @api_client.config.client_side_validation && resource_pool.nil?
        fail ArgumentError, "Missing the required parameter 'resource_pool' when calling ResourcePoolApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ResourcePoolApi.update"
      end
      # resource path
      local_var_path = '/rest/vcenter/resource-pool/{resource_pool}'.sub('{' + 'resource_pool' + '}', resource_pool.to_s)

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
        @api_client.config.logger.debug "API called: ResourcePoolApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
