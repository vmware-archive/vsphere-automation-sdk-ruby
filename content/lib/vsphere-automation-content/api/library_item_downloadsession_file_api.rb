=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemDownloadsessionFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves file download information for a specific file.
    # @param download_session_id Identifier of the download session.
    # @param content_library_item_downloadsession_file_get 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemDownloadsessionFileResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|]
    def get(download_session_id, content_library_item_downloadsession_file_get, opts = {})
      data, _status_code, _headers = get_with_http_info(download_session_id, content_library_item_downloadsession_file_get, opts)
      data
    end

    # Retrieves file download information for a specific file.
    # @api private
    # @param download_session_id Identifier of the download session.
    # @param content_library_item_downloadsession_file_get 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemDownloadsessionFileResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(download_session_id, content_library_item_downloadsession_file_get, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadsessionFileApi.get ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadsessionFileApi.get"
      end
      # verify the required parameter 'content_library_item_downloadsession_file_get' is set
      if @api_client.config.client_side_validation && content_library_item_downloadsession_file_get.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_downloadsession_file_get' when calling LibraryItemDownloadsessionFileApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action=get'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_downloadsession_file_get)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemDownloadsessionFileResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadsessionFileApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the information of all the files in the library item associated with the download session.
    # @param download_session_id Identifier of the download session.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemDownloadsessionFileListResult|VapiStdErrorsNotFoundError|]
    def list(download_session_id, opts = {})
      data, _status_code, _headers = list_with_http_info(download_session_id, opts)
      data
    end

    # Lists the information of all the files in the library item associated with the download session.
    # @api private
    # @param download_session_id Identifier of the download session.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemDownloadsessionFileListResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(download_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadsessionFileApi.list ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadsessionFileApi.list"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/downloadsession/file'

      # query parameters
      query_params = {}
      query_params[:'download_session_id'] = download_session_id

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
	  '200' => 'Content::ContentLibraryItemDownloadsessionFileListResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadsessionFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Requests a file to be prepared for download.
    # @param download_session_id Identifier of the download session.
    # @param content_library_item_downloadsession_file_prepare 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemDownloadsessionFilePrepareResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|]
    def prepare(download_session_id, content_library_item_downloadsession_file_prepare, opts = {})
      data, _status_code, _headers = prepare_with_http_info(download_session_id, content_library_item_downloadsession_file_prepare, opts)
      data
    end

    # Requests a file to be prepared for download.
    # @api private
    # @param download_session_id Identifier of the download session.
    # @param content_library_item_downloadsession_file_prepare 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemDownloadsessionFilePrepareResult|VapiStdErrorsInvalidArgumentError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def prepare_with_http_info(download_session_id, content_library_item_downloadsession_file_prepare, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemDownloadsessionFileApi.prepare ...'
      end
      # verify the required parameter 'download_session_id' is set
      if @api_client.config.client_side_validation && download_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'download_session_id' when calling LibraryItemDownloadsessionFileApi.prepare"
      end
      # verify the required parameter 'content_library_item_downloadsession_file_prepare' is set
      if @api_client.config.client_side_validation && content_library_item_downloadsession_file_prepare.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_item_downloadsession_file_prepare' when calling LibraryItemDownloadsessionFileApi.prepare"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action=prepare'.sub('{' + 'download_session_id' + '}', download_session_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_item_downloadsession_file_prepare)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryItemDownloadsessionFilePrepareResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	  '403' => 'Content::VapiStdErrorsUnauthorizedError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemDownloadsessionFileApi#prepare\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
