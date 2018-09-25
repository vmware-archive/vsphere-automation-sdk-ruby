# VSphereAutomation::Content::ContentLibraryPublishInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_method** | [**ContentLibraryPublishInfoAuthenticationMethod**](ContentLibraryPublishInfoAuthenticationMethod.md) |  | [optional] 
**published** | **BOOLEAN** | Whether the local library is published. | [optional] 
**publish_url** | **String** | The URL to which the library metadata is published by the Content Library Service. &lt;p&gt; This value can be used to set the {@link SubscriptionInfo#subscriptionUrl} property when creating a subscribed library. | [optional] 
**user_name** | **String** | The username to require for authentication. | [optional] 
**password** | **String** | The new password to require for authentication. | [optional] 
**current_password** | **String** | The current password to verify. This {@term field} is available starting in vSphere 6.7. | [optional] 
**persist_json_enabled** | **BOOLEAN** | Whether library and library item metadata are persisted in the storage backing as JSON files. This flag only applies if the local library is published. &lt;p&gt; Enabling JSON persistence allows you to synchronize a subscribed library manually instead of over HTTP. You copy the local library content and metadata to another storage backing manually and then create a subscribed library referencing the location of the library JSON file in the {@link SubscriptionInfo#subscriptionUrl}. When the subscribed library&#39;s storage backing matches the subscription URL, files do not need to be copied to the subscribed library. &lt;p&gt; For a library backed by a datastore, the library JSON file will be stored at the path contentlib-{library_id}/lib.json on the datastore. &lt;p&gt; For a library backed by a remote file system, the library JSON file will be stored at {library_id}/lib.json in the remote file system path. | [optional] 


