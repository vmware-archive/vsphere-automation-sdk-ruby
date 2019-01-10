=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemUpdateSessionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. <p> This {@term operation} is not allowed if the session has been already completed. <p> Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
    # @param update_session_id Identifier of the update session that should be canceled.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def cancel(update_session_id, opts = {})
      cancel_with_http_info(update_session_id, opts)
      nil
    end

    # Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. &lt;p&gt; This {@term operation} is not allowed if the session has been already completed. &lt;p&gt; Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
    # @api private
    # @param update_session_id Identifier of the update session that should be canceled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.cancel ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.cancel"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}?~action=cancel'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. <p> Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. <p> Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
    # @param update_session_id Identifier of the update session that should be completed.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def complete(update_session_id, opts = {})
      complete_with_http_info(update_session_id, opts)
      nil
    end

    # Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. &lt;p&gt; Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. &lt;p&gt; Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
    # @api private
    # @param update_session_id Identifier of the update session that should be completed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def complete_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.complete ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.complete"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}?~action=complete'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. <p> Content Library Service allows only one single update session to be active for a specific library item.
    # @param content_library_item_update_session_create 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdateSessionCreateResult|VapiStdErrorsResourceBusyError|VapiStdErrorsNotFoundError|]
    def create(content_library_item_update_session_create, opts = {})
      data, _status_code, _headers = create_with_http_info(content_library_item_update_session_create, opts)
      data
    end

    # Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. &lt;p&gt; Content Library Service allows only one single update session to be active for a specific library item.
    # @api private
    # @param content_library_item_update_session_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdateSessionCreateResult|VapiStdErrorsResourceBusyError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(content_library_item_update_session_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.create ...'
      end
      # verify the required parameter 'content_library_item_update_session_create' is set
      if @api_client.config.client_side_validation && content_library_item_update_session_create.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_update_session_create' when calling LibraryItemUpdateSessionApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(content_library_item_update_session_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdateSessionCreateResult',
	  '400' => 'Content::VapiStdErrorsResourceBusyError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes an update session. This removes the session and all information associated with it. <p> Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. <p> Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
    # @param update_session_id Identifer of the update session to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def delete(update_session_id, opts = {})
      delete_with_http_info(update_session_id, opts)
      nil
    end

    # Deletes an update session. This removes the session and all information associated with it. &lt;p&gt; Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. &lt;p&gt; Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
    # @api private
    # @param update_session_id Identifer of the update session to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.delete ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.delete"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Terminates the update session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
    # @param update_session_id Identifier of the update session to fail.
    # @param content_library_item_update_session_fail 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def fail(update_session_id, content_library_item_update_session_fail, opts = {})
      fail_with_http_info(update_session_id, content_library_item_update_session_fail, opts)
      nil
    end

    # Terminates the update session with a client specified error message. &lt;p&gt; This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
    # @api private
    # @param update_session_id Identifier of the update session to fail.
    # @param content_library_item_update_session_fail 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def fail_with_http_info(update_session_id, content_library_item_update_session_fail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.fail ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.fail"
      end
      # verify the required parameter 'content_library_item_update_session_fail' is set
      if @api_client.config.client_side_validation && content_library_item_update_session_fail.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_update_session_fail' when calling LibraryItemUpdateSessionApi.fail"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}?~action=fail'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(content_library_item_update_session_fail)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#fail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the update session with the specified identifier, including the most up-to-date status information for the session.
    # @param update_session_id Identifier of the update session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdateSessionResult|VapiStdErrorsNotFoundError|]
    def get(update_session_id, opts = {})
      data, _status_code, _headers = get_with_http_info(update_session_id, opts)
      data
    end

    # Gets the update session with the specified identifier, including the most up-to-date status information for the session.
    # @api private
    # @param update_session_id Identifier of the update session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdateSessionResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.get ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdateSessionResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Keeps an update session alive. <p> If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
    # @param update_session_id Identifier of the update session whose lifetime should be extended.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLibraryItemUpdateSessionKeepAlive] :content_library_item_update_session_keep_alive 
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def keep_alive(update_session_id, opts = {})
      keep_alive_with_http_info(update_session_id, opts)
      nil
    end

    # Keeps an update session alive. &lt;p&gt; If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
    # @api private
    # @param update_session_id Identifier of the update session whose lifetime should be extended.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLibraryItemUpdateSessionKeepAlive] :content_library_item_update_session_keep_alive 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def keep_alive_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.keep_alive ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.keep_alive"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}?~action=keep-alive'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'content_library_item_update_session_keep_alive'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#keep_alive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :library_item_id Optional library item identifier on which to filter results.
    # @return [ContentLibraryItemUpdateSessionListResult|VapiStdErrorsNotFoundError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :library_item_id Optional library item identifier on which to filter results.
    # @return [Array<(ContentLibraryItemUpdateSessionListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session'

      # query parameters
      query_params = {}
      query_params[:'library_item_id'] = opts[:'library_item_id'] if !opts[:'library_item_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdateSessionListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of an update session. <p> This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.
    # @param update_session_id Identifer of the update session that should be updated.
    # @param content_library_item_update_session_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def update(update_session_id, content_library_item_update_session_update, opts = {})
      update_with_http_info(update_session_id, content_library_item_update_session_update, opts)
      nil
    end

    # Updates the properties of an update session. &lt;p&gt; This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.
    # @api private
    # @param update_session_id Identifer of the update session that should be updated.
    # @param content_library_item_update_session_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(update_session_id, content_library_item_update_session_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdateSessionApi.update ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdateSessionApi.update"
      end
      # verify the required parameter 'content_library_item_update_session_update' is set
      if @api_client.config.client_side_validation && content_library_item_update_session_update.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_update_session_update' when calling LibraryItemUpdateSessionApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/update-session/id:{update_session_id}'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(content_library_item_update_session_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdateSessionApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
