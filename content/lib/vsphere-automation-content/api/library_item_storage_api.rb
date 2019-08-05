# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemStorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the storage information for a specific file in a library item.
    # @param library_item_id Identifier of the library item whose storage information should be retrieved.
    # @param action ~action&#x3D;get
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemStorageResult|VapiStdErrorsNotFoundError|]
    def get(library_item_id, action, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(library_item_id, action, request_body, opts)
      data
    end

    # Retrieves the storage information for a specific file in a library item.
    # @api private
    # @param library_item_id Identifier of the library item whose storage information should be retrieved.
    # @param action ~action&#x3D;get
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemStorageResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_item_id, action, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemStorageApi.get ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemStorageApi.get"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling LibraryItemStorageApi.get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['get'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemStorageApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/storage/id:{library_item_id}'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'~action'] = action

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
	  '200' => 'Content::ContentLibraryItemStorageResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemStorageApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all storage items for a given library item.
    # @param library_item_id Identifier of the library item whose storage information should be listed.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemStorageListResult|VapiStdErrorsNotFoundError|]
    def list(library_item_id, opts = {})
      data, _status_code, _headers = list_with_http_info(library_item_id, opts)
      data
    end

    # Lists all storage items for a given library item.
    # @api private
    # @param library_item_id Identifier of the library item whose storage information should be listed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemStorageListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(library_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemStorageApi.list ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemStorageApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/storage'

      # query parameters
      query_params = {}
      query_params[:'library_item_id'] = library_item_id

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
	  '200' => 'Content::ContentLibraryItemStorageListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemStorageApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
