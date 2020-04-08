# VSphereAutomation::Content::ContentLibrarySubscriptionsCreateSpecNewSubscribedLibrary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_sync_enabled** | **Boolean** | Specifies whether the library should participate in automatic library synchronization. | 
**description** | **String** | Description of the subscribed library. | [optional] 
**name** | **String** | Name of the subscribed library. | 
**on_demand** | **Boolean** | Specifies whether a library item&#39;s content will be synchronized only on demand. | 
**storage_backings** | [**Array&lt;ContentLibraryStorageBacking&gt;**](ContentLibraryStorageBacking.md) | The list of default storage backings for this library. &lt;p&gt; The list must contain exactly one storage backing. Multiple default storage locations are not currently supported but may become supported in future releases. | 


