=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'uri'

module VSphereAutomation
  module Content
  class LibrarySubscribedItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Evicts the cached content of a library item in a subscribed library. <p> This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
    # @param library_item_id Identifier of the library item whose content should be evicted.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def evict(library_item_id, opts = {})
      evict_with_http_info(library_item_id, opts)
      nil
    end

    # Evicts the cached content of a library item in a subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
    # @api private
    # @param library_item_id Identifier of the library item whose content should be evicted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def evict_with_http_info(library_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscribedItemApi.evict ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibrarySubscribedItemApi.evict"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscribed-item/id:{library_item_id}?~action=evict'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
        @api_client.config.logger.debug "API called: LibrarySubscribedItemApi#evict\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forces the synchronization of an individual library item in a subscribed library. <p> Synchronizing an individual item will update that item's metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. <p> The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. <ul> <li>If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.</li> <li>If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.</li> </ul> When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. <p> This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.
    # @param library_item_id Identifier of the library item to synchronize.
    # @param content_library_subscribed_item_sync 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil]
    def sync(library_item_id, content_library_subscribed_item_sync, opts = {})
      sync_with_http_info(library_item_id, content_library_subscribed_item_sync, opts)
      nil
    end

    # Forces the synchronization of an individual library item in a subscribed library. &lt;p&gt; Synchronizing an individual item will update that item&#39;s metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. &lt;p&gt; The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. &lt;ul&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.&lt;/li&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.&lt;/li&gt; &lt;/ul&gt; When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. &lt;p&gt; This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.
    # @api private
    # @param library_item_id Identifier of the library item to synchronize.
    # @param content_library_subscribed_item_sync 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def sync_with_http_info(library_item_id, content_library_subscribed_item_sync, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibrarySubscribedItemApi.sync ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibrarySubscribedItemApi.sync"
      end
      # verify the required parameter 'content_library_subscribed_item_sync' is set
      if @api_client.config.client_side_validation && content_library_subscribed_item_sync.nil?
        fail ArgumentError, "Missing the required parameter 'content_library_subscribed_item_sync' when calling LibrarySubscribedItemApi.sync"
      end
      # resource path
      local_var_path = '/com/vmware/content/library/subscribed-item/id:{library_item_id}?~action=sync'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(content_library_subscribed_item_sync)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibrarySubscribedItemApi#sync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
