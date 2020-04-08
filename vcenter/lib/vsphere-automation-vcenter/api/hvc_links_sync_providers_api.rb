# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class HvcLinksSyncProvidersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param link Unique identifier of the link
    # @param provider Unique identifier of the sync provider.
    # @param [Hash] opts the optional parameters
    # @return [VcenterHvcLinksSyncProvidersResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(link, provider, opts = {})
      data, _status_code, _headers = get_with_http_info(link, provider, opts)
      data
    end

    # Gets Sync information for a sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param link Unique identifier of the link
    # @param provider Unique identifier of the sync provider.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHvcLinksSyncProvidersResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(link, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HvcLinksSyncProvidersApi.get ...'
      end
      # verify the required parameter 'link' is set
      if @api_client.config.client_side_validation && link.nil?
        fail ArgumentError, "Missing the required parameter 'link' when calling HvcLinksSyncProvidersApi.get"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling HvcLinksSyncProvidersApi.get"
      end
      # resource path
      local_var_path = '/rest/hvc/links/{link}/sync/providers/{provider}'.sub('{' + 'link' + '}', link.to_s).sub('{' + 'provider' + '}', provider.to_s)

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
	  '200' => 'VCenter::VcenterHvcLinksSyncProvidersResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HvcLinksSyncProvidersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param link Unique identifier of the link
    # @param [Hash] opts the optional parameters
    # @return [VcenterHvcLinksSyncProvidersListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|]
    def list(link, opts = {})
      data, _status_code, _headers = list_with_http_info(link, opts)
      data
    end

    # Enumerates the sync providers. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param link Unique identifier of the link
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterHvcLinksSyncProvidersListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthorizedError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HvcLinksSyncProvidersApi.list ...'
      end
      # verify the required parameter 'link' is set
      if @api_client.config.client_side_validation && link.nil?
        fail ArgumentError, "Missing the required parameter 'link' when calling HvcLinksSyncProvidersApi.list"
      end
      # resource path
      local_var_path = '/rest/hvc/links/{link}/sync/providers'.sub('{' + 'link' + '}', link.to_s)

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
	  '200' => 'VCenter::VcenterHvcLinksSyncProvidersListResp',
	  '400' => 'VCenter::VapiStdErrorsErrorError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HvcLinksSyncProvidersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param link Unique identifier of the link
    # @param provider Unique identifier representing the sync provider
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterHvcLinksSyncProvidersStart] :request_body 
    # @return [|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def start(link, provider, opts = {})
      start_with_http_info(link, provider, opts)
      nil
    end

    # Initiates synchronization between the local and remote replicas for the sync provider. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param link Unique identifier of the link
    # @param provider Unique identifier representing the sync provider
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterHvcLinksSyncProvidersStart] :request_body 
    # @return [Array<(|VapiStdErrorsResourceBusyError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def start_with_http_info(link, provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HvcLinksSyncProvidersApi.start ...'
      end
      # verify the required parameter 'link' is set
      if @api_client.config.client_side_validation && link.nil?
        fail ArgumentError, "Missing the required parameter 'link' when calling HvcLinksSyncProvidersApi.start"
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        fail ArgumentError, "Missing the required parameter 'provider' when calling HvcLinksSyncProvidersApi.start"
      end
      # resource path
      local_var_path = '/rest/hvc/links/{link}/sync/providers/{provider}?action=start'.sub('{' + 'link' + '}', link.to_s).sub('{' + 'provider' + '}', provider.to_s)

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
        @api_client.config.logger.debug "API called: HvcLinksSyncProvidersApi#start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
