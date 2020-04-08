# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class ObservabilityInternalPluginsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityInternalPluginsCreateSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityInternalPluginsCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.create ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins'

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
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the plugin to be removed. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def delete(name, opts = {})
      delete_with_http_info(name, opts)
      nil
    end

    # Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the plugin to be removed. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityInternalPluginsApi.delete"
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins/{name}'.sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the plugin for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceObservabilityInternalPluginsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(name, opts = {})
      data, _status_code, _headers = get_with_http_info(name, opts)
      data
    end

    # Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the plugin for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceObservabilityInternalPluginsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityInternalPluginsApi.get"
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins/{name}'.sub('{' + 'name' + '}', name.to_s)

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
	  '200' => 'Appliance::ApplianceObservabilityInternalPluginsInfo',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplianceObservabilityInternalPluginsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplianceObservabilityInternalPluginsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.list ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins'

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
	  '200' => 'Appliance::Array<ApplianceObservabilityInternalPluginsSummary>',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<String>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list_names(opts = {})
      data, _status_code, _headers = list_names_with_http_info(opts)
      data
    end

    # Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_names_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.list_names ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins/names'

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
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#list_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the plugin to be updated. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityInternalPluginsUpdateSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil]
    def update(name, opts = {})
      update_with_http_info(name, opts)
      nil
    end

    # Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the plugin to be updated. The parameter must be an identifier for the resource type: appliance.observability.plugin.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityInternalPluginsUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityInternalPluginsApi.update ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityInternalPluginsApi.update"
      end
      # resource path
      local_var_path = '/api/appliance/observability/internal/plugins/{name}'.sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityInternalPluginsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
