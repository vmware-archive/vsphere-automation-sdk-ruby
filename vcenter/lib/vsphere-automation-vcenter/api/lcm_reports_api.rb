# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'uri'

module VSphereAutomation
  module VCenter
  class LcmReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @param report The parameter must be an identifier for the resource type: vcenter.lcm.report.
    # @param [Hash] opts the optional parameters
    # @return [VcenterLcmReportsLocation|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(report, opts = {})
      data, _status_code, _headers = get_with_http_info(report, opts)
      data
    end

    # Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
    # @api private
    # @param report The parameter must be an identifier for the resource type: vcenter.lcm.report.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterLcmReportsLocation|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LcmReportsApi.get ...'
      end
      # verify the required parameter 'report' is set
      if @api_client.config.client_side_validation && report.nil?
        fail ArgumentError, "Missing the required parameter 'report' when calling LcmReportsApi.get"
      end
      # resource path
      local_var_path = '/api/vcenter/lcm/reports/{report}'.sub('{' + 'report' + '}', report.to_s)

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
	  '200' => 'VCenter::VcenterLcmReportsLocation',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticated',
	  '404' => 'VCenter::VapiStdErrorsNotFound',
	  '500' => 'VCenter::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LcmReportsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
