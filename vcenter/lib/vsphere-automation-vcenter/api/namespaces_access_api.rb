# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class NamespacesAccessApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Set up access control for the subject on given domain on the namespace.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesAccessCreateSpec] :request_body 
    # @return [|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def create(namespace, domain, subject, type, opts = {})
      create_with_http_info(namespace, domain, subject, type, opts)
      nil
    end

    # Set up access control for the subject on given domain on the namespace.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesAccessCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(namespace, domain, subject, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesAccessApi.create ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesAccessApi.create"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling NamespacesAccessApi.create"
      end
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling NamespacesAccessApi.create"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling NamespacesAccessApi.create"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USER', 'GROUP'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USER, GROUP"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject}'.sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'domain' + '}', domain.to_s).sub('{' + 'subject' + '}', subject.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
        @api_client.config.logger.debug "API called: NamespacesAccessApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove access control of the subject on given domain from the namespace.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def delete(namespace, domain, subject, type, opts = {})
      delete_with_http_info(namespace, domain, subject, type, opts)
      nil
    end

    # Remove access control of the subject on given domain from the namespace.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(namespace, domain, subject, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesAccessApi.delete ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesAccessApi.delete"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling NamespacesAccessApi.delete"
      end
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling NamespacesAccessApi.delete"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling NamespacesAccessApi.delete"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USER', 'GROUP'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USER, GROUP"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject}'.sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'domain' + '}', domain.to_s).sub('{' + 'subject' + '}', subject.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
        @api_client.config.logger.debug "API called: NamespacesAccessApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the information about the access control of the subject on given domain on the namespace.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @return [VcenterNamespacesAccessInfo|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(namespace, domain, subject, type, opts = {})
      data, _status_code, _headers = get_with_http_info(namespace, domain, subject, type, opts)
      data
    end

    # Get the information about the access control of the subject on given domain on the namespace.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterNamespacesAccessInfo|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(namespace, domain, subject, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesAccessApi.get ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesAccessApi.get"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling NamespacesAccessApi.get"
      end
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling NamespacesAccessApi.get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling NamespacesAccessApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USER', 'GROUP'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USER, GROUP"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject}'.sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'domain' + '}', domain.to_s).sub('{' + 'subject' + '}', subject.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
	  '200' => 'VCenter::VcenterNamespacesAccessInfo',
	  '400' => 'VCenter::VapiStdErrorsUnsupported',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '403' => 'VCenter::VapiStdErrorsUnauthorized',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NamespacesAccessApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set new access control on the namespace for the subject on given domain.
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesAccessSetSpec] :request_body 
    # @return [|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def set(namespace, domain, subject, type, opts = {})
      set_with_http_info(namespace, domain, subject, type, opts)
      nil
    end

    # Set new access control on the namespace for the subject on given domain.
    # @api private
    # @param namespace Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
    # @param domain The domain of the subject.
    # @param subject The principal for this operation.
    # @param type { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterNamespacesAccessSetSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnsupported|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(namespace, domain, subject, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NamespacesAccessApi.set ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling NamespacesAccessApi.set"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling NamespacesAccessApi.set"
      end
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling NamespacesAccessApi.set"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling NamespacesAccessApi.set"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['USER', 'GROUP'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of USER, GROUP"
      end
      # resource path
      local_var_path = '/api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject}'.sub('{' + 'namespace' + '}', namespace.to_s).sub('{' + 'domain' + '}', domain.to_s).sub('{' + 'subject' + '}', subject.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
        @api_client.config.logger.debug "API called: NamespacesAccessApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
