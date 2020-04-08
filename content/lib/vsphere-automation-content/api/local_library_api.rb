# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LocalLibraryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new local library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLocalLibraryCreateResp|VapiStdErrorsUnsupportedError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a new local library.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLocalLibraryCreateResp|VapiStdErrorsUnsupportedError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LocalLibraryApi.create"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library'

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
	  '200' => 'Content::ContentLocalLibraryCreateResp',
	  '400' => 'Content::VapiStdErrorsUnsupportedError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalLibraryApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the specified local library. <p> Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
    # @param library_id Identifier of the local library to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def delete(library_id, opts = {})
      delete_with_http_info(library_id, opts)
      nil
    end

    # Deletes the specified local library. &lt;p&gt; Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
    # @api private
    # @param library_id Identifier of the local library to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.delete ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LocalLibraryApi.delete"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
        @api_client.config.logger.debug "API called: LocalLibraryApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a given local library.
    # @param library_id Identifier of the local library to return.
    # @param [Hash] opts the optional parameters
    # @return [ContentLocalLibraryResp|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|]
    def get(library_id, opts = {})
      data, _status_code, _headers = get_with_http_info(library_id, opts)
      data
    end

    # Returns a given local library.
    # @api private
    # @param library_id Identifier of the local library to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLocalLibraryResp|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.get ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LocalLibraryApi.get"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
	  '200' => 'Content::ContentLocalLibraryResp',
	  '400' => 'Content::VapiStdErrorsInvalidElementTypeError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalLibraryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all local libraries in the Content Library.
    # @param [Hash] opts the optional parameters
    # @return [ContentLocalLibraryListResp|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all local libraries in the Content Library.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLocalLibraryListResp|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.list ...'
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library'

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
	  '200' => 'Content::ContentLocalLibraryListResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalLibraryApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Publishes the library to specified subscriptions. If no subscriptions are specified, then publishes the library to all its subscriptions.
    # @param library_id Identifier of the published library.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLocalLibraryPublish] :request_body 
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def publish(library_id, opts = {})
      publish_with_http_info(library_id, opts)
      nil
    end

    # Publishes the library to specified subscriptions. If no subscriptions are specified, then publishes the library to all its subscriptions.
    # @api private
    # @param library_id Identifier of the published library.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLocalLibraryPublish] :request_body 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def publish_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.publish ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LocalLibraryApi.publish"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library/id:{library_id}?~action=publish'.sub('{' + 'library_id' + '}', library_id.to_s)

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
        @api_client.config.logger.debug "API called: LocalLibraryApi#publish\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a local library. <p> This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
    # @param library_id Identifier of the local library to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsConcurrentChangeError|VapiStdErrorsNotFoundError|nil]
    def update(library_id, request_body, opts = {})
      update_with_http_info(library_id, request_body, opts)
      nil
    end

    # Updates the properties of a local library. &lt;p&gt; This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
    # @api private
    # @param library_id Identifier of the local library to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsConcurrentChangeError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalLibraryApi.update ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LocalLibraryApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LocalLibraryApi.update"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/local-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalLibraryApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
