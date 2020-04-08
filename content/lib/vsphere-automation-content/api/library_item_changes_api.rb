# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemChangesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about a library item change.
    # @param library_item Library item identifer.
    # @param version Library item version.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemChangesResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(library_item, version, opts = {})
      data, _status_code, _headers = get_with_http_info(library_item, version, opts)
      data
    end

    # Returns information about a library item change.
    # @api private
    # @param library_item Library item identifer.
    # @param version Library item version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemChangesResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_item, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemChangesApi.get ...'
      end
      # verify the required parameter 'library_item' is set
      if @api_client.config.client_side_validation && library_item.nil?
        fail ArgumentError, "Missing the required parameter 'library_item' when calling LibraryItemChangesApi.get"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling LibraryItemChangesApi.get"
      end
      # resource path
      local_var_path = '/rest/content/library/item/{library_item}/changes/{version}'.sub('{' + 'library_item' + '}', library_item.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'Content::ContentLibraryItemChangesResp',
	  '400' => 'Content::VapiStdErrorsErrorError',
	  '401' => 'Content::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemChangesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the content changes made to a library item.
    # @param library_item Library item identifier.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemChangesListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(library_item, opts = {})
      data, _status_code, _headers = list_with_http_info(library_item, opts)
      data
    end

    # Returns commonly used information about the content changes made to a library item.
    # @api private
    # @param library_item Library item identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemChangesListResp|VapiStdErrorsErrorError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemChangesApi.list ...'
      end
      # verify the required parameter 'library_item' is set
      if @api_client.config.client_side_validation && library_item.nil?
        fail ArgumentError, "Missing the required parameter 'library_item' when calling LibraryItemChangesApi.list"
      end
      # resource path
      local_var_path = '/rest/content/library/item/{library_item}/changes'.sub('{' + 'library_item' + '}', library_item.to_s)

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
	  '200' => 'Content::ContentLibraryItemChangesListResp',
	  '400' => 'Content::VapiStdErrorsErrorError',
	  '401' => 'Content::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemChangesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
