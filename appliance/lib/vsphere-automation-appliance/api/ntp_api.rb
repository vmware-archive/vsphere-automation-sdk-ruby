# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class NtpApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the NTP configuration status. If you run the 'timesync.get' command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The 'ntp' command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNtpResult|VapiStdErrorsErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the NTP configuration status. If you run the &#39;timesync.get&#39; command, you can retrieve the current time synchronization method (NTP- or VMware Tools-based). The &#39;ntp&#39; command always returns the NTP server information, even when the time synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based, the NTP server status is displayed as down.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNtpResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NtpApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/ntp'

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
	  '200' => 'Appliance::ApplianceNtpResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NtpApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsErrorError|nil]
    def set(request_body, opts = {})
      set_with_http_info(request_body, opts)
      nil
    end

    # Set NTP servers. This method updates old NTP servers from configuration and sets the input NTP servers in the configuration. If NTP based time synchronization is used internally, the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time synchronization is not used, this method only replaces servers in the NTP configuration.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NtpApi.set ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling NtpApi.set"
      end
      # resource path
      local_var_path = '/appliance/ntp'

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NtpApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Test the connection to a list of ntp servers.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNtpTestResult|VapiStdErrorsErrorError|]
    def test(request_body, opts = {})
      data, _status_code, _headers = test_with_http_info(request_body, opts)
      data
    end

    # Test the connection to a list of ntp servers.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNtpTestResult|VapiStdErrorsErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def test_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NtpApi.test ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling NtpApi.test"
      end
      # resource path
      local_var_path = '/appliance/ntp/test'

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
	  '200' => 'Appliance::ApplianceNtpTestResult',
	  '400' => 'Appliance::VapiStdErrorsErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NtpApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
