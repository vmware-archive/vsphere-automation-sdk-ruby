# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class ObservabilityDefaultMetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param metric Identifier of the metric for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.metric.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceObservabilityDefaultMetricsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(metric, opts = {})
      data, _status_code, _headers = get_with_http_info(metric, opts)
      data
    end

    # Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param metric Identifier of the metric for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.metric.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceObservabilityDefaultMetricsInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(metric, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityDefaultMetricsApi.get ...'
      end
      # verify the required parameter 'metric' is set
      if @api_client.config.client_side_validation && metric.nil?
        fail ArgumentError, "Missing the required parameter 'metric' when calling ObservabilityDefaultMetricsApi.get"
      end
      # resource path
      local_var_path = '/api/appliance/observability/default-metrics/{metric}'.sub('{' + 'metric' + '}', metric.to_s)

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
	  '200' => 'Appliance::ApplianceObservabilityDefaultMetricsInfo',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityDefaultMetricsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplianceObservabilityDefaultMetricsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplianceObservabilityDefaultMetricsSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityDefaultMetricsApi.list ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/default-metrics'

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
	  '200' => 'Appliance::Array<ApplianceObservabilityDefaultMetricsSummary>',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityDefaultMetricsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param metric Identifier of the metric for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.metric.
    # @param status The DefaultMetrics.Status enumerated type defines the enablement status of DefaultMetrics. Note: This enumeration is restricted for VMware internal use only.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def update(metric, status, opts = {})
      update_with_http_info(metric, status, opts)
      nil
    end

    # Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param metric Identifier of the metric for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.metric.
    # @param status The DefaultMetrics.Status enumerated type defines the enablement status of DefaultMetrics. Note: This enumeration is restricted for VMware internal use only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(metric, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityDefaultMetricsApi.update ...'
      end
      # verify the required parameter 'metric' is set
      if @api_client.config.client_side_validation && metric.nil?
        fail ArgumentError, "Missing the required parameter 'metric' when calling ObservabilityDefaultMetricsApi.update"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling ObservabilityDefaultMetricsApi.update"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['ENABLED', 'DISABLED'].include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of ENABLED, DISABLED"
      end
      # resource path
      local_var_path = '/api/appliance/observability/default-metrics/{metric}'.sub('{' + 'metric' + '}', metric.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityDefaultMetricsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
