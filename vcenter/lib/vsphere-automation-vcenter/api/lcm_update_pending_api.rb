# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmUpdatePendingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param version A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmUpdatePendingInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(version, opts = {})
      data, _status_code, _headers = get_with_http_info(version, opts)
      data
    end

    # Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param version A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmUpdatePendingInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmUpdatePendingApi.get ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LcmUpdatePendingApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/update/pending/{version}'.sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'VCenter::VcenterLcmUpdatePendingInfo',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmUpdatePendingApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmUpdatePendingListResult|VapiStdErrorsUnauthenticated|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmUpdatePendingListResult|VapiStdErrorsUnauthenticated|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmUpdatePendingApi.list ...'
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/update/pending'

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
	  '200' => 'VCenter::VcenterLcmUpdatePendingListResult',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmUpdatePendingApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
