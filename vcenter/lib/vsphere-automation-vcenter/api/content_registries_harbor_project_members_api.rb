# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class ContentRegistriesHarborProjectMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a project member for specified Harbor project.
    # @param registry Identifier of the Registry.
    # @param project Identifier for the project.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectMembersCreateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def create(registry, project, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(registry, project, request_body, opts)
      data
    end

    # Create a project member for specified Harbor project.
    # @api private
    # @param registry Identifier of the Registry.
    # @param project Identifier for the project.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectMembersCreateResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(registry, project, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectMembersApi.create ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectMembersApi.create"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectMembersApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ContentRegistriesHarborProjectMembersApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectMembersCreateResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectMembersApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove a project member from specified Harbor project.
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param member The member for this operation.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(registry, project, member, opts = {})
      delete_with_http_info(registry, project, member, opts)
      nil
    end

    # Remove a project member from specified Harbor project.
    # @api private
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param member The member for this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(registry, project, member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectMembersApi.delete ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectMembersApi.delete"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectMembersApi.delete"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling ContentRegistriesHarborProjectMembersApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member}'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s).sub('{' + 'member' + '}', member.to_s)

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
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectMembersApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get detailed Harbor project member information for specified user or group.
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param member The member for this operation.
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectMembersResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(registry, project, member, opts = {})
      data, _status_code, _headers = get_with_http_info(registry, project, member, opts)
      data
    end

    # Get detailed Harbor project member information for specified user or group.
    # @api private
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param member The member for this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectMembersResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(registry, project, member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectMembersApi.get ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectMembersApi.get"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectMembersApi.get"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling ContentRegistriesHarborProjectMembersApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member}'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s).sub('{' + 'member' + '}', member.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectMembersResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectMembersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all members basic information in the specified Harbor project.
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [VcenterContentRegistriesHarborProjectMembersListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(registry, project, opts = {})
      data, _status_code, _headers = list_with_http_info(registry, project, opts)
      data
    end

    # Returns all members basic information in the specified Harbor project.
    # @api private
    # @param registry Identifier of the Registry.
    # @param project Identifier for the Harbor project.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterContentRegistriesHarborProjectMembersListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(registry, project, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectMembersApi.list ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectMembersApi.list"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectMembersApi.list"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s)

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
	  '200' => 'VCenter::VcenterContentRegistriesHarborProjectMembersListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectMembersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update access control for a member in a registry project.
    # @param registry Identifier of the Registry.
    # @param project Identifier for the project.
    # @param member The member for this operation.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def update(registry, project, member, request_body, opts = {})
      update_with_http_info(registry, project, member, request_body, opts)
      nil
    end

    # Update access control for a member in a registry project.
    # @api private
    # @param registry Identifier of the Registry.
    # @param project Identifier for the project.
    # @param member The member for this operation.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(registry, project, member, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentRegistriesHarborProjectMembersApi.update ...'
      end
      # verify the required parameter 'registry' is set
      if @api_client.config.client_side_validation && registry.nil?
        fail ArgumentError, "Missing the required parameter 'registry' when calling ContentRegistriesHarborProjectMembersApi.update"
      end
      # verify the required parameter 'project' is set
      if @api_client.config.client_side_validation && project.nil?
        fail ArgumentError, "Missing the required parameter 'project' when calling ContentRegistriesHarborProjectMembersApi.update"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling ContentRegistriesHarborProjectMembersApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ContentRegistriesHarborProjectMembersApi.update"
      end
      # resource path
      local_var_path = '/rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member}'.sub('{' + 'registry' + '}', registry.to_s).sub('{' + 'project' + '}', project.to_s).sub('{' + 'member' + '}', member.to_s)

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
        @api_client.config.logger.debug "API called: ContentRegistriesHarborProjectMembersApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
