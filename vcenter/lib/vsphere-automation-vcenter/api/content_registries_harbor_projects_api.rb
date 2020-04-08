# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ContentRegistriesHarborProjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
    # @param registry Identifier of the Registry.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectsCreateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def create(registry, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(registry, request_body, opts)
      data
    end

    # Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
    # @api private
    # @param registry Identifier of the Registry.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectsCreateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(registry, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectsApi.create ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectsApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ContentRegistriesHarborProjectsApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects'.sub('{' + 'registry' + '}', registry.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectsCreateResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
    # @param registry Identifier of the registry.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(registry, project, opts = {})
      delete_with_http_info(registry, project, opts)
      nil
    end

    # Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
    # @api private
    # @param registry Identifier of the registry.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(registry, project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectsApi.delete ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectsApi.delete"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectsApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s)

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
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns detailed information about the specified Harbor project.
    # @param registry Identifier of the registry.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(registry, project, opts = {})
      data, _status_code, _headers = get_with_http_info(registry, project, opts)
      data
    end

    # Returns detailed information about the specified Harbor project.
    # @api private
    # @param registry Identifier of the registry.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectsResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(registry, project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectsApi.get ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectsApi.get"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectsApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectsResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns basic information of all projects in a Harbor registry.
    # @param registry Identifier of the registry.
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(registry, opts = {})
      data, _status_code, _headers = list_with_http_info(registry, opts)
      data
    end

    # Returns basic information of all projects in a Harbor registry.
    # @api private
    # @param registry Identifier of the registry.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectsListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(registry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectsApi.list ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectsApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects'.sub('{' + 'registry' + '}', registry.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectsListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
    # @param registry Registry identifier.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def purge(registry, project, opts = {})
      purge_with_http_info(registry, project, opts)
      nil
    end

    # Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
    # @api private
    # @param registry Registry identifier.
    # @param project Identifier of the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def purge_with_http_info(registry, project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectsApi.purge ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectsApi.purge"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectsApi.purge"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}?action=purge'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s)

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
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectsApi#purge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
