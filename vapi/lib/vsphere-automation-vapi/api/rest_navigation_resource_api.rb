# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'uri'

module VSphereAutomation
  module VAPI
  class RestNavigationResourceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets List of all Operations about a vAPI REST Resource. Information is searched for by typeId and instanceId is used only in URLs.
    # @param type_id Resource type id. The parameter must be an identifier for the resource type: vapi.resource.
    # @param instance_id Resource instance id. If you provide instanceId parameter then returned URLs will be prepopulated with it. If instanceId parameter is unset then URLs will become URI templates with id place holders as per RFC 6570. The parameter must be an identifier for the resource type: vapi.resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [VapiRestNavigationResourceResp|]
    def get(type_id, instance_id, opts = {})
      data, _status_code, _headers = get_with_http_info(type_id, instance_id, opts)
      data
    end

    # Gets List of all Operations about a vAPI REST Resource. Information is searched for by typeId and instanceId is used only in URLs.
    # @api private
    # @param type_id Resource type id. The parameter must be an identifier for the resource type: vapi.resource.
    # @param instance_id Resource instance id. If you provide instanceId parameter then returned URLs will be prepopulated with it. If instanceId parameter is unset then URLs will become URI templates with id place holders as per RFC 6570. The parameter must be an identifier for the resource type: vapi.resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [Array<(VapiRestNavigationResourceResp|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(type_id, instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationResourceApi.get ...'
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling RestNavigationResourceApi.get"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling RestNavigationResourceApi.get"
      end
      # resource path
      local_var_path = '/rest/com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id}'.sub('{' + 'type_id' + '}', type_id.to_s).sub('{' + 'instance_id' + '}', instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'base_url'] = opts[:'base_url'] if !opts[:'base_url'].nil?

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
	  '200' => 'VAPI::VapiRestNavigationResourceResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationResourceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets list of all vAPI REST Resources.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [VapiRestNavigationResourceListResp|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Gets list of all vAPI REST Resources.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [Array<(VapiRestNavigationResourceListResp|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationResourceApi.list ...'
      end
      # resource path
      local_var_path = '/rest/com/vmware/vapi/rest/navigation/resource'

      # query parameters
      query_params = {}
      query_params[:'base_url'] = opts[:'base_url'] if !opts[:'base_url'].nil?

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
	  '200' => 'VAPI::VapiRestNavigationResourceListResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationResourceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
