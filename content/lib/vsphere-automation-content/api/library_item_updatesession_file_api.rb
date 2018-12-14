=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemUpdatesessionFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. <p> When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
    # @param update_session_id Identifier of the update session to be modified.
    # @param content_library_item_updatesession_file_add 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileAddResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def add(update_session_id, content_library_item_updatesession_file_add, opts = {})
      data, _status_code, _headers = add_with_http_info(update_session_id, content_library_item_updatesession_file_add, opts)
      data
    end

    # Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. &lt;p&gt; When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
    # @api private
    # @param update_session_id Identifier of the update session to be modified.
    # @param content_library_item_updatesession_file_add 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileAddResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def add_with_http_info(update_session_id, content_library_item_updatesession_file_add, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.add ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.add"
      end
      # verify the required parameter 'content_library_item_updatesession_file_add' is set
      if @api_client.config.client_side_validation && content_library_item_updatesession_file_add.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_updatesession_file_add' when calling LibraryItemUpdatesessionFileApi.add"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=add'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_updatesession_file_add)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileAddResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
    # @param update_session_id Identifier of the update session.
    # @param content_library_item_updatesession_file_get 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|]
    def get(update_session_id, content_library_item_updatesession_file_get, opts = {})
      data, _status_code, _headers = get_with_http_info(update_session_id, content_library_item_updatesession_file_get, opts)
      data
    end

    # Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param content_library_item_updatesession_file_get 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(update_session_id, content_library_item_updatesession_file_get, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.get ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.get"
      end
      # verify the required parameter 'content_library_item_updatesession_file_get' is set
      if @api_client.config.client_side_validation && content_library_item_updatesession_file_get.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_updatesession_file_get' when calling LibraryItemUpdatesessionFileApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=get'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_updatesession_file_get)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all files in the library item associated with the update session.
    # @param update_session_id Identifier of the update session.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileListResult|VapiStdErrorsNotFoundError|]
    def list(update_session_id, opts = {})
      data, _status_code, _headers = list_with_http_info(update_session_id, opts)
      data
    end

    # Lists all files in the library item associated with the update session.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.list ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/updatesession/file'

      # query parameters
      query_params = {}
      query_params[:'update_session_id'] = update_session_id

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
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Requests a file to be removed. The file will only be effectively removed when the update session is completed.
    # @param update_session_id Identifier of the update session.
    # @param content_library_item_updatesession_file_remove 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def remove(update_session_id, content_library_item_updatesession_file_remove, opts = {})
      remove_with_http_info(update_session_id, content_library_item_updatesession_file_remove, opts)
      nil
    end

    # Requests a file to be removed. The file will only be effectively removed when the update session is completed.
    # @api private
    # @param update_session_id Identifier of the update session.
    # @param content_library_item_updatesession_file_remove 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_with_http_info(update_session_id, content_library_item_updatesession_file_remove, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.remove ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.remove"
      end
      # verify the required parameter 'content_library_item_updatesession_file_remove' is set
      if @api_client.config.client_side_validation && content_library_item_updatesession_file_remove.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_updatesession_file_remove' when calling LibraryItemUpdatesessionFileApi.remove"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=remove'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_updatesession_file_remove)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#remove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
    # @param update_session_id Identifier of the update session to validate.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemUpdatesessionFileValidateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|]
    def validate(update_session_id, opts = {})
      data, _status_code, _headers = validate_with_http_info(update_session_id, opts)
      data
    end

    # Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
    # @api private
    # @param update_session_id Identifier of the update session to validate.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemUpdatesessionFileValidateResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def validate_with_http_info(update_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemUpdatesessionFileApi.validate ...'
      end
      # verify the required parameter 'update_session_id' is set
      if @api_client.config.client_side_validation && update_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_session_id' when calling LibraryItemUpdatesessionFileApi.validate"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action=validate'.sub('{' + 'update_session_id' + '}', update_session_id.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemUpdatesessionFileValidateResult',
	  '400' => 'Content::VapiStdErrorsNotAllowedInCurrentStateError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemUpdatesessionFileApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
