# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.
    # @param source_library_item_id Identifier of the existing library item from which the content will be copied.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemCopyResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|]
    def copy(source_library_item_id, request_body, opts = {})
      data, _status_code, _headers = copy_with_http_info(source_library_item_id, request_body, opts)
      data
    end

    # Copies a library item. &lt;p&gt; Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. &lt;p&gt; If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. &lt;p&gt; A library item cannot be copied into a subscribed library.
    # @api private
    # @param source_library_item_id Identifier of the existing library item from which the content will be copied.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemCopyResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def copy_with_http_info(source_library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.copy ...'
      end
      # verify the required parameter 'source_library_item_id' is set
      if @api_client.config.client_side_validation && source_library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'source_library_item_id' when calling LibraryItemApi.copy"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemApi.copy"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/id:{source_library_item_id}?~action=copy'.sub('{' + 'source_library_item_id' + '}', source_library_item_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemCopyResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemApi#copy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemCreateResult|VapiStdErrorsAlreadyExistsError|VapiStdErrorsNotFoundError|]
    def create(request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(request_body, opts)
      data
    end

    # Creates a new library item. &lt;p&gt; A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. &lt;p&gt; A library item cannot be created in a subscribed library.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemCreateResult|VapiStdErrorsAlreadyExistsError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.create ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item'

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
	  '200' => 'Content::ContentLibraryItemCreateResult',
	  '400' => 'Content::VapiStdErrorsAlreadyExistsError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a library item. <p> This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. <p> This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
    # @param library_item_id Identifier of the library item to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|nil]
    def delete(library_item_id, opts = {})
      delete_with_http_info(library_item_id, opts)
      nil
    end

    # Deletes a library item. &lt;p&gt; This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. &lt;p&gt; This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
    # @api private
    # @param library_item_id Identifier of the library item to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(library_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.delete ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemApi.delete"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/id:{library_item_id}'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
        @api_client.config.logger.debug "API called: LibraryItemApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemFindResult|VapiStdErrorsInvalidArgumentError|]
    def find(request_body, opts = {})
      data, _status_code, _headers = find_with_http_info(request_body, opts)
      data
    end

    # Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemFindResult|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def find_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.find ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemApi.find"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item?~action=find'

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
	  '200' => 'Content::ContentLibraryItemFindResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the {@link ItemModel} with the given identifier.
    # @param library_item_id Identifier of the library item to return.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemResult|VapiStdErrorsNotFoundError|]
    def get(library_item_id, opts = {})
      data, _status_code, _headers = get_with_http_info(library_item_id, opts)
      data
    end

    # Returns the {@link ItemModel} with the given identifier.
    # @api private
    # @param library_item_id Identifier of the library item to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.get ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/id:{library_item_id}'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all items in the given library.
    # @param library_id Identifier of the library whose items should be returned.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemListResult|VapiStdErrorsNotFoundError|]
    def list(library_id, opts = {})
      data, _status_code, _headers = list_with_http_info(library_id, opts)
      data
    end

    # Returns the identifiers of all items in the given library.
    # @api private
    # @param library_id Identifier of the library whose items should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.list ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LibraryItemApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item'

      # query parameters
      query_params = {}
      query_params[:'library_id'] = library_id

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
	  '200' => 'Content::ContentLibraryItemListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Publishes the library item to specified subscriptions of the library. If no subscriptions are specified, then publishes the library item to all subscriptions of the library.
    # @param library_item_id Library item identifier.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil]
    def publish(library_item_id, request_body, opts = {})
      publish_with_http_info(library_item_id, request_body, opts)
      nil
    end

    # Publishes the library item to specified subscriptions of the library. If no subscriptions are specified, then publishes the library item to all subscriptions of the library.
    # @api private
    # @param library_item_id Library item identifier.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def publish_with_http_info(library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.publish ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemApi.publish"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemApi.publish"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/id:{library_item_id}?~action=publish'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
        @api_client.config.logger.debug "API called: LibraryItemApi#publish\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
    # @param library_item_id Identifier of the library item to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsAlreadyExistsError|VapiStdErrorsNotFoundError|nil]
    def update(library_item_id, request_body, opts = {})
      update_with_http_info(library_item_id, request_body, opts)
      nil
    end

    # Updates the specified properties of a library item. &lt;p&gt; This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. &lt;p&gt; This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
    # @api private
    # @param library_item_id Identifier of the library item to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsAlreadyExistsError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemApi.update ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/id:{library_item_id}'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
        @api_client.config.logger.debug "API called: LibraryItemApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
