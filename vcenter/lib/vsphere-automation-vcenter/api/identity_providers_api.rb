# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class IdentityProvidersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a vCenter Server identity provider.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VcenterIdentityProvidersCreateResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Create a vCenter Server identity provider.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterIdentityProvidersCreateResp|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityProvidersApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling IdentityProvidersApi.create"
      end
      # resource path
      local_var_path = '/rest/vcenter/identity/providers'

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
	  '200' => 'VCenter::VcenterIdentityProvidersCreateResp',
	  '400' => 'VCenter::VapiStdErrorsInvalidArgumentError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityProvidersApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a vCenter Server identity provider.
    # @param provider the identifier of the provider to delete
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(provider, opts = {})
      delete_with_http_info(provider, opts)
      nil
    end

    # Delete a vCenter Server identity provider.
    # @api private
    # @param provider the identifier of the provider to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityProvidersApi.delete ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling IdentityProvidersApi.delete"
      end
      # resource path
      local_var_path = '/rest/vcenter/identity/providers/{provider}'.sub('{' + 'provider' + '}', provider.to_s)

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
        @api_client.config.logger.debug "API called: IdentityProvidersApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve detailed information of the specified identity provider.
    # @param provider the identifier of the provider
    # @param [Hash] opts the optional parameters
    # @return [VcenterIdentityProvidersResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(provider, opts = {})
      data, _status_code, _headers = get_with_http_info(provider, opts)
      data
    end

    # Retrieve detailed information of the specified identity provider.
    # @api private
    # @param provider the identifier of the provider
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterIdentityProvidersResp|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityProvidersApi.get ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling IdentityProvidersApi.get"
      end
      # resource path
      local_var_path = '/rest/vcenter/identity/providers/{provider}'.sub('{' + 'provider' + '}', provider.to_s)

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
	  '200' => 'VCenter::VcenterIdentityProvidersResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityProvidersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve all identity providers.
    # @param [Hash] opts the optional parameters
    # @return [VcenterIdentityProvidersListResp|VapiStdErrorsUnauthorizedError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Retrieve all identity providers.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterIdentityProvidersListResp|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityProvidersApi.list ...'
      end
      # resource path
      local_var_path = '/rest/vcenter/identity/providers'

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
	  '200' => 'VCenter::VcenterIdentityProvidersListResp',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityProvidersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a vCenter Server identity provider.
    # @param provider the identifier of the provider to update
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def update(provider, request_body, opts = {})
      update_with_http_info(provider, request_body, opts)
      nil
    end

    # Update a vCenter Server identity provider.
    # @api private
    # @param provider the identifier of the provider to update
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(provider, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IdentityProvidersApi.update ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling IdentityProvidersApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling IdentityProvidersApi.update"
      end
      # resource path
      local_var_path = '/rest/vcenter/identity/providers/{provider}'.sub('{' + 'provider' + '}', provider.to_s)

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
        @api_client.config.logger.debug "API called: IdentityProvidersApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
