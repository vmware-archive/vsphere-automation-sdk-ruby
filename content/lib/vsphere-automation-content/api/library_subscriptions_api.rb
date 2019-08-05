# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibrarySubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a subscription of the published library.
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibrarySubscriptionsCreateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def create(library, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(library, request_body, opts)
      data
    end

    # Creates a subscription of the published library.
    # @api private
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibrarySubscriptionsCreateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(library, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscriptionsApi.create ...'
      end
      # verify the required parameter 'library' is set
      if @api_client.config.client_side_validation && library.nil?
        fail ArgumentError, "Missing the required parameter 'library' when calling LibrarySubscriptionsApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibrarySubscriptionsApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscriptions/id:{library}'.sub('{' + 'library' + '}', library.to_s)

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
	  '200' => 'Content::ContentLibrarySubscriptionsCreateResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'Content::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibrarySubscriptionsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def delete(library, request_body, opts = {})
      delete_with_http_info(library, request_body, opts)
      nil
    end

    # Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.
    # @api private
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(library, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscriptionsApi.delete ...'
      end
      # verify the required parameter 'library' is set
      if @api_client.config.client_side_validation && library.nil?
        fail ArgumentError, "Missing the required parameter 'library' when calling LibrarySubscriptionsApi.delete"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibrarySubscriptionsApi.delete"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscriptions/id:{library}?~action=delete'.sub('{' + 'library' + '}', library.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibrarySubscriptionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the specified subscription of the published library.
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibrarySubscriptionsResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def get(library, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(library, request_body, opts)
      data
    end

    # Returns information about the specified subscription of the published library.
    # @api private
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibrarySubscriptionsResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscriptionsApi.get ...'
      end
      # verify the required parameter 'library' is set
      if @api_client.config.client_side_validation && library.nil?
        fail ArgumentError, "Missing the required parameter 'library' when calling LibrarySubscriptionsApi.get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibrarySubscriptionsApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscriptions/id:{library}?~action=get'.sub('{' + 'library' + '}', library.to_s)

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
	  '200' => 'Content::ContentLibrarySubscriptionsResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'Content::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibrarySubscriptionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the subscriptions of the published library.
    # @param library Identifier of the published library.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibrarySubscriptionsListResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def list(library, opts = {})
      data, _status_code, _headers = list_with_http_info(library, opts)
      data
    end

    # Lists the subscriptions of the published library.
    # @api private
    # @param library Identifier of the published library.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibrarySubscriptionsListResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(library, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscriptionsApi.list ...'
      end
      # verify the required parameter 'library' is set
      if @api_client.config.client_side_validation && library.nil?
        fail ArgumentError, "Missing the required parameter 'library' when calling LibrarySubscriptionsApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscriptions'

      # query parameters
      query_params = {}
      query_params[:'library'] = library

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
	  '200' => 'Content::ContentLibrarySubscriptionsListResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'Content::VapiStdErrorsUnauthenticatedError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibrarySubscriptionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the specified subscription of the published library. <p> This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def update(library, request_body, opts = {})
      update_with_http_info(library, request_body, opts)
      nil
    end

    # Updates the specified subscription of the published library. &lt;p&gt; This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.
    # @api private
    # @param library Identifier of the published library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscriptionsApi.update ...'
      end
      # verify the required parameter 'library' is set
      if @api_client.config.client_side_validation && library.nil?
        fail ArgumentError, "Missing the required parameter 'library' when calling LibrarySubscriptionsApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibrarySubscriptionsApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscriptions/id:{library}'.sub('{' + 'library' + '}', library.to_s)

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
        @api_client.config.logger.debug "API called: LibrarySubscriptionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
