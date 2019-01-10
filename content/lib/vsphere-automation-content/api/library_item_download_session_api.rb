=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemDownloadSessionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
    # @param download_session_id Identifer of the download session that should be canceled.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def cancel(download_session_id, opts = {})
      cancel_with_http_info(download_session_id, opts)
      nil
    end

    # Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
    # @api private
    # @param download_session_id Identifer of the download session that should be canceled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_with_http_info(download_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.cancel ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadSessionApi.cancel"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session/id:{download_session_id}?~action=cancel'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new download session.
    # @param content_library_item_download_session_create 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemDownloadSessionCreateResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|]
    def create(content_library_item_download_session_create, opts = {})
      data, _status_code, _headers = create_with_http_info(content_library_item_download_session_create, opts)
      data
    end

    # Creates a new download session.
    # @api private
    # @param content_library_item_download_session_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemDownloadSessionCreateResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(content_library_item_download_session_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.create ...'
      end
      # verify the required parameter 'content_library_item_download_session_create' is set
      if @api_client.config.client_side_validation && content_library_item_download_session_create.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_download_session_create' when calling LibraryItemDownloadSessionApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session'

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
      post_body = @api_client.object_to_http_body(content_library_item_download_session_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemDownloadSessionCreateResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a download session. This removes the session and all information associated with it. <p> Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. <p> Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
    # @param download_session_id Identifier of the download session to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotFoundError|nil]
    def delete(download_session_id, opts = {})
      delete_with_http_info(download_session_id, opts)
      nil
    end

    # Deletes a download session. This removes the session and all information associated with it. &lt;p&gt; Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. &lt;p&gt; Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
    # @api private
    # @param download_session_id Identifier of the download session to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(download_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.delete ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadSessionApi.delete"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session/id:{download_session_id}'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Terminates the download session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
    # @param download_session_id Identifier of the download session to fail.
    # @param content_library_item_download_session_fail 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def fail(download_session_id, content_library_item_download_session_fail, opts = {})
      fail_with_http_info(download_session_id, content_library_item_download_session_fail, opts)
      nil
    end

    # Terminates the download session with a client specified error message. &lt;p&gt; This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
    # @api private
    # @param download_session_id Identifier of the download session to fail.
    # @param content_library_item_download_session_fail 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def fail_with_http_info(download_session_id, content_library_item_download_session_fail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.fail ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadSessionApi.fail"
      end
      # verify the required parameter 'content_library_item_download_session_fail' is set
      if @api_client.config.client_side_validation && content_library_item_download_session_fail.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_download_session_fail' when calling LibraryItemDownloadSessionApi.fail"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session/id:{download_session_id}?~action=fail'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_download_session_fail)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#fail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the download session with the specified identifier, including the most up-to-date status information for the session.
    # @param download_session_id Identifier of the download session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemDownloadSessionResult|VapiStdErrorsNotFoundError|]
    def get(download_session_id, opts = {})
      data, _status_code, _headers = get_with_http_info(download_session_id, opts)
      data
    end

    # Gets the download session with the specified identifier, including the most up-to-date status information for the session.
    # @api private
    # @param download_session_id Identifier of the download session to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemDownloadSessionResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(download_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.get ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadSessionApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session/id:{download_session_id}'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemDownloadSessionResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. <p> If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.
    # @param download_session_id Identifier of the download session whose lifetime should be extended.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLibraryItemDownloadSessionKeepAlive] :content_library_item_download_session_keep_alive 
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def keep_alive(download_session_id, opts = {})
      keep_alive_with_http_info(download_session_id, opts)
      nil
    end

    # Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. &lt;p&gt; If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.
    # @api private
    # @param download_session_id Identifier of the download session whose lifetime should be extended.
    # @param [Hash] opts the optional parameters
    # @option opts [ContentLibraryItemDownloadSessionKeepAlive] :content_library_item_download_session_keep_alive 
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def keep_alive_with_http_info(download_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.keep_alive ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadSessionApi.keep_alive"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session/id:{download_session_id}?~action=keep-alive'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'content_library_item_download_session_keep_alive'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#keep_alive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :library_item_id Library item identifier on which to filter results.
    # @return [ContentLibraryItemDownloadSessionListResult|VapiStdErrorsNotFoundError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :library_item_id Library item identifier on which to filter results.
    # @return [Array<(ContentLibraryItemDownloadSessionListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadSessionApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/download-session'

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
	  '200' => 'Content::ContentLibraryItemDownloadSessionListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadSessionApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
