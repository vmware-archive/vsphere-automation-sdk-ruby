# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class ObservabilityServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds services to observability's monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityServicesCreateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Adds services to observability&#39;s monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityServicesCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityServicesApi.create ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/services'

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
        @api_client.config.logger.debug "API called: ObservabilityServicesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the service to be removed. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def delete(name, opts = {})
      delete_with_http_info(name, opts)
      nil
    end

    # Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the service to be removed. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityServicesApi.delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityServicesApi.delete"
      end
      # resource path
      local_var_path = '/api/appliance/observability/services/{name}'.sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityServicesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the service for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceObservabilityServicesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(name, opts = {})
      data, _status_code, _headers = get_with_http_info(name, opts)
      data
    end

    # Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the service for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceObservabilityServicesInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityServicesApi.get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityServicesApi.get"
      end
      # resource path
      local_var_path = '/api/appliance/observability/services/{name}'.sub('{' + 'name' + '}', name.to_s)

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
	  '200' => 'Appliance::ApplianceObservabilityServicesInfo',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityServicesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplianceObservabilityServicesSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplianceObservabilityServicesSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityServicesApi.list ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/services'

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
	  '200' => 'Appliance::Array<ApplianceObservabilityServicesSummary>',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityServicesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the service for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param status The Services.Status enumerated type defines the enablement status of Services. Note: This enumeration is restricted for VMware internal use only.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def update(name, status, opts = {})
      update_with_http_info(name, status, opts)
      nil
    end

    # Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the service for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.service.
    # @param status The Services.Status enumerated type defines the enablement status of Services. Note: This enumeration is restricted for VMware internal use only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(name, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityServicesApi.update ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityServicesApi.update"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling ObservabilityServicesApi.update"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['ENABLED', 'DISABLED'].include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of ENABLED, DISABLED"
      end
      # resource path
      local_var_path = '/api/appliance/observability/services/{name}'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'status'] = status

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityServicesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
