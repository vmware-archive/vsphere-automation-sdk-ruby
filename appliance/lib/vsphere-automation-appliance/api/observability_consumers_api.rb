# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'uri'

module VSphereAutomation
  module Appliance
  class ObservabilityConsumersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityConsumersCreateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityConsumersCreateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityConsumersApi.create ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/consumers'

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
        @api_client.config.logger.debug "API called: ObservabilityConsumersApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the consumer to be removed. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def delete(name, opts = {})
      delete_with_http_info(name, opts)
      nil
    end

    # Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the consumer to be removed. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityConsumersApi.delete ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityConsumersApi.delete"
      end
      # resource path
      local_var_path = '/api/appliance/observability/consumers/{name}'.sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityConsumersApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the consumer for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceObservabilityConsumersInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(name, opts = {})
      data, _status_code, _headers = get_with_http_info(name, opts)
      data
    end

    # Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the consumer for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceObservabilityConsumersInfo|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityConsumersApi.get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityConsumersApi.get"
      end
      # resource path
      local_var_path = '/api/appliance/observability/consumers/{name}'.sub('{' + 'name' + '}', name.to_s)

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
	  '200' => 'Appliance::ApplianceObservabilityConsumersInfo',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '404' => 'Appliance::VapiStdErrorsNotFound',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityConsumersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param [Hash] opts the optional parameters
    # @return [Array<ApplianceObservabilityConsumersSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApplianceObservabilityConsumersSummary>|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityConsumersApi.list ...'
      end
      # resource path
      local_var_path = '/api/appliance/observability/consumers'

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
	  '200' => 'Appliance::Array<ApplianceObservabilityConsumersSummary>',
	  '403' => 'Appliance::VapiStdErrorsUnauthorized',
	  '500' => 'Appliance::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityConsumersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @param name Identifier of the consumer to be updated. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityConsumersUpdateSpec] :request_body 
    # @return [|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil]
    def update(name, opts = {})
      update_with_http_info(name, opts)
      nil
    end

    # Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
    # @api private
    # @param name Identifier of the consumer to be updated. The parameter must be an identifier for the resource type: appliance.observability.consumer.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceObservabilityConsumersUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthorized|VapiStdErrorsError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityConsumersApi.update ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ObservabilityConsumersApi.update"
      end
      # resource path
      local_var_path = '/api/appliance/observability/consumers/{name}'.sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ObservabilityConsumersApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
