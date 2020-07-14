# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataCliNamespaceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliNamespaceFingerprintResult|]
    def fingerprint(opts = {})
      data, _status_code, _headers = fingerprint_with_http_info(opts)
      data
    end

    # Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliNamespaceFingerprintResult|, Fixnum, Hash)>]  data, response status code and response headers
    def fingerprint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliNamespaceApi.fingerprint ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/namespace?~action=fingerprint'

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
	  '200' => 'VAPI::VapiMetadataCliNamespaceFingerprintResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliNamespaceApi#fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retreives information about a namespace including information about children of that namespace.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliNamespaceResult|VapiStdErrorsNotFoundError|]
    def get(request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(request_body, opts)
      data
    end

    # Retreives information about a namespace including information about children of that namespace.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliNamespaceResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliNamespaceApi.get ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling MetadataCliNamespaceApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/namespace?~action=get'

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
	  '200' => 'VAPI::VapiMetadataCliNamespaceResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliNamespaceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all namespaces registered with the infrastructure.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliNamespaceListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all namespaces registered with the infrastructure.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliNamespaceListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliNamespaceApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/namespace'

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
	  '200' => 'VAPI::VapiMetadataCliNamespaceListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliNamespaceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
