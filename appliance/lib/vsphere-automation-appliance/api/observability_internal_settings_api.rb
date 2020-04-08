# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class ObservabilityInternalSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param key Observability setting key for which value to be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def get(key, opts = {})
      data, _status_code, _headers = get_with_http_info(key, opts)
      data
    end

    # Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param key Observability setting key for which value to be retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalSettingsApi.get ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling ObservabilityInternalSettingsApi.get"
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/settings/{key}'.sub('{' + 'key' + '}', key.to_s)

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
	  '200' => 'Appliance::String',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalSettingsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<String>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def get_keys(opts = {})
      data, _status_code, _headers = get_keys_with_http_info(opts)
      data
    end

    # Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalSettingsApi.get_keys ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/settings/keys'

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
	  '200' => 'Appliance::Array<String>',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalSettingsApi#get_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def get_settings(opts = {})
      data, _status_code, _headers = get_settings_with_http_info(opts)
      data
    end

    # Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalSettingsApi.get_settings ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/settings'

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
	  '200' => 'Appliance::String',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalSettingsApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param key Key of Setting to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def update(key, opts = {})
      update_with_http_info(key, opts)
      nil
    end

    # Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param key Key of Setting to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalSettingsApi.update ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling ObservabilityInternalSettingsApi.update"
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/settings/{key}'.sub('{' + 'key' + '}', key.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalSettingsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
