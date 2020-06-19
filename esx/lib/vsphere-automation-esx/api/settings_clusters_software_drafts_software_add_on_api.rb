# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsClustersSoftwareDraftsSoftwareAddOnApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes the desired OEM add-on specification in the software draft.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(cluster, draft, opts = {})
      delete_with_http_info(cluster, draft, opts)
      nil
    end

    # Deletes the desired OEM add-on specification in the software draft.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(cluster, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareAddOnApi.delete ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.delete"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.delete"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareAddOnApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the OEM add-on specification in a software draft.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsAddOnInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(cluster, draft, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, draft, opts)
      data
    end

    # Returns the OEM add-on specification in a software draft.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsAddOnInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareAddOnApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.get"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
	  '200' => 'ESX::EsxSettingsAddOnInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareAddOnApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsAddOnSpec] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def set(cluster, draft, opts = {})
      set_with_http_info(cluster, draft, opts)
      nil
    end

    # Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param draft Identifier of the working copy document.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsAddOnSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(cluster, draft, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareDraftsSoftwareAddOnApi.set ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.set"
      end
      # verify the required parameter 'draft' is set
      if @api_client.config.client_side_validation && draft.nil?
        fail ArgumentError, "Missing the required parameter 'draft' when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi.set"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'draft' + '}', draft.to_s)

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
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareDraftsSoftwareAddOnApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end