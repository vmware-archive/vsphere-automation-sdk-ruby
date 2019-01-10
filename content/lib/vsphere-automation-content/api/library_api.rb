=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibraryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
    # @param content_library_find 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryFindResult|VapiStdErrorsInvalidArgumentError|]
    def find(content_library_find, opts = {})
      data, _status_code, _headers = find_with_http_info(content_library_find, opts)
      data
    end

    # Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
    # @api private
    # @param content_library_find 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryFindResult|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def find_with_http_info(content_library_find, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.find ...'
      end
      # verify the required parameter 'content_library_find' is set
      if @api_client.config.client_side_validation && content_library_find.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_find' when calling LibraryApi.find"
      end
      # resource path
      local_var_path = '/com/vmware/content/library?~action=find'

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
      post_body = @api_client.object_to_http_body(content_library_find)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryFindResult',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a given {@link LibraryModel}.
    # @param library_id Identifier of the library to return.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryResult|VapiStdErrorsNotFoundError|]
    def get(library_id, opts = {})
      data, _status_code, _headers = get_with_http_info(library_id, opts)
      data
    end

    # Returns a given {@link LibraryModel}.
    # @api private
    # @param library_id Identifier of the library to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.get ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LibraryApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
	  '200' => 'Content::ContentLibraryResult',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all libraries of any type in the Content Library.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all libraries of any type in the Content Library.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/content/library'

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
	  '200' => 'Content::ContentLibraryListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a library. <p> This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
    # @param library_id Identifier of the library to update.
    # @param content_library_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def update(library_id, content_library_update, opts = {})
      update_with_http_info(library_id, content_library_update, opts)
      nil
    end

    # Updates the properties of a library. &lt;p&gt; This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
    # @api private
    # @param library_id Identifier of the library to update.
    # @param content_library_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library_id, content_library_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.update ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LibraryApi.update"
      end
      # verify the required parameter 'content_library_update' is set
      if @api_client.config.client_side_validation && content_library_update.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_update' when calling LibraryApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
