=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class SubscribedLibraryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
    # @param content_subscribed_library_create 
    # @param [Hash] opts the optional parameters
    # @return [ContentSubscribedLibraryCreateResult|VapiStdErrorsResourceInaccessibleError|]
    def create(content_subscribed_library_create, opts = {})
      data, _status_code, _headers = create_with_http_info(content_subscribed_library_create, opts)
      data
    end

    # Creates a new subscribed library. &lt;p&gt; Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
    # @api private
    # @param content_subscribed_library_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentSubscribedLibraryCreateResult|VapiStdErrorsResourceInaccessibleError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(content_subscribed_library_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.create ...'
      end
      # verify the required parameter 'content_subscribed_library_create' is set
      if @api_client.config.client_side_validation && content_subscribed_library_create.nil?
        fail ArgumentError, "Missing the required parameter 'content_subscribed_library_create' when calling SubscribedLibraryApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library'

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
      post_body = @api_client.object_to_http_body(content_subscribed_library_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentSubscribedLibraryCreateResult',
	  '400' => 'Content::VapiStdErrorsResourceInaccessibleError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the specified subscribed library. <p> Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
    # @param library_id Identifier of the subscribed library to delete.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|nil]
    def delete(library_id, opts = {})
      delete_with_http_info(library_id, opts)
      nil
    end

    # Deletes the specified subscribed library. &lt;p&gt; Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
    # @api private
    # @param library_id Identifier of the subscribed library to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.delete ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling SubscribedLibraryApi.delete"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Evicts the cached content of an on-demand subscribed library. <p> This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
    # @param library_id Identifier of the subscribed library whose content should be evicted.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def evict(library_id, opts = {})
      evict_with_http_info(library_id, opts)
      nil
    end

    # Evicts the cached content of an on-demand subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
    # @api private
    # @param library_id Identifier of the subscribed library whose content should be evicted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def evict_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.evict ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling SubscribedLibraryApi.evict"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library/id:{library_id}?~action=evict'.sub('{' + 'library_id' + '}', library_id.to_s)

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
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#evict\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a given subscribed library.
    # @param library_id Identifier of the subscribed library to return.
    # @param [Hash] opts the optional parameters
    # @return [ContentSubscribedLibraryResult|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|]
    def get(library_id, opts = {})
      data, _status_code, _headers = get_with_http_info(library_id, opts)
      data
    end

    # Returns a given subscribed library.
    # @api private
    # @param library_id Identifier of the subscribed library to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentSubscribedLibraryResult|VapiStdErrorsInvalidElementTypeError|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.get ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling SubscribedLibraryApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
	  '200' => 'Content::ContentSubscribedLibraryResult',
	  '400' => 'Content::VapiStdErrorsInvalidElementTypeError',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all subscribed libraries in the Content Library.
    # @param [Hash] opts the optional parameters
    # @return [ContentSubscribedLibraryListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all subscribed libraries in the Content Library.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentSubscribedLibraryListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library'

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
	  '200' => 'Content::ContentSubscribedLibraryListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
    # @param content_subscribed_library_probe 
    # @param [Hash] opts the optional parameters
    # @return [ContentSubscribedLibraryProbeResult|]
    def probe(content_subscribed_library_probe, opts = {})
      data, _status_code, _headers = probe_with_http_info(content_subscribed_library_probe, opts)
      data
    end

    # Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
    # @api private
    # @param content_subscribed_library_probe 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentSubscribedLibraryProbeResult|, Fixnum, Hash)>]  data, response status code and response headers
    def probe_with_http_info(content_subscribed_library_probe, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.probe ...'
      end
      # verify the required parameter 'content_subscribed_library_probe' is set
      if @api_client.config.client_side_validation && content_subscribed_library_probe.nil?
        fail ArgumentError, "Missing the required parameter 'content_subscribed_library_probe' when calling SubscribedLibraryApi.probe"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library?~action=probe'

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
      post_body = @api_client.object_to_http_body(content_subscribed_library_probe)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentSubscribedLibraryProbeResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#probe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forces the synchronization of the subscribed library. <p> Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
    # @param library_id Identifier of the subscribed library to synchronize.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|nil]
    def sync(library_id, opts = {})
      sync_with_http_info(library_id, opts)
      nil
    end

    # Forces the synchronization of the subscribed library. &lt;p&gt; Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
    # @api private
    # @param library_id Identifier of the subscribed library to synchronize.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def sync_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.sync ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling SubscribedLibraryApi.sync"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library/id:{library_id}?~action=sync'.sub('{' + 'library_id' + '}', library_id.to_s)

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
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#sync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
    # @param library_id Identifier of the subscribed library to update.
    # @param content_subscribed_library_update 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsConcurrentChangeError|VapiStdErrorsNotFoundError|nil]
    def update(library_id, content_subscribed_library_update, opts = {})
      update_with_http_info(library_id, content_subscribed_library_update, opts)
      nil
    end

    # Updates the properties of a subscribed library. &lt;p&gt; This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
    # @api private
    # @param library_id Identifier of the subscribed library to update.
    # @param content_subscribed_library_update 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsConcurrentChangeError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library_id, content_subscribed_library_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscribedLibraryApi.update ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling SubscribedLibraryApi.update"
      end
      # verify the required parameter 'content_subscribed_library_update' is set
      if @api_client.config.client_side_validation && content_subscribed_library_update.nil?
        fail ArgumentError, "Missing the required parameter 'content_subscribed_library_update' when calling SubscribedLibraryApi.update"
      end
      # resource path
      local_var_path = '/com/vmware/content/subscribed-library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_subscribed_library_update)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscribedLibraryApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
