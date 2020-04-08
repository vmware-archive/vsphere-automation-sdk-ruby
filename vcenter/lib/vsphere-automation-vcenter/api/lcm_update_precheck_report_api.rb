# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmUpdatePrecheckReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
    # @param version Pending update version for which pre-update compatibility check will be executed. The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def create_task(version, opts = {})
      data, _status_code, _headers = create_task_with_http_info(version, opts)
      data
    end

    # Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
    # @api private
    # @param version Pending update version for which pre-update compatibility check will be executed. The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsNotAllowedInCurrentState|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_task_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmUpdatePrecheckReportApi.create_task ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LcmUpdatePrecheckReportApi.create_task"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/update/pending/{version}/precheck-report?vmw-task=true'.sub('{' + 'version' + '}', version.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'VCenter::String',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentState',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmUpdatePrecheckReportApi#create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
