# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class RecoveryBackupJobDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns detailed information about the current and historical backup jobs.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_jobs Identifiers of backup jobs that can match the filter.
    # @return [ApplianceRecoveryBackupJobDetailsListResult|VapiStdErrorsErrorError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns detailed information about the current and historical backup jobs.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_jobs Identifiers of backup jobs that can match the filter.
    # @return [Array<(ApplianceRecoveryBackupJobDetailsListResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupJobDetailsApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/job/details'

      # query parameters
      query_params = {}
      query_params[:'filter.jobs'] = @api_client.build_collection_param(opts[:'filter_jobs'], :multi) if !opts[:'filter_jobs'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Appliance::ApplianceRecoveryBackupJobDetailsListResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupJobDetailsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
