# VSphereAutomation::Content::ContentConfigurationModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_sync_enabled** | **BOOLEAN** | Whether automatic synchronization is enabled. &lt;p&gt; When automatic synchronization is enabled, the Content Library Service will automatically synchronize all subscribed libraries on a daily basis. Subscribed libraries with the {@link SubscriptionInfo#automaticSyncEnabled} flag turned on will be synchronized every hour between {@link #automaticSyncStartHour} and {@link #automaticSyncStopHour}. | [optional] 
**automatic_sync_start_hour** | **Integer** | The hour at which the automatic synchronization will start. This value is between 0 (midnight) and 23 inclusive. | [optional] 
**automatic_sync_stop_hour** | **Integer** | The hour at which the automatic synchronization will stop. Any active synchronization operation will continue to run, however no new synchronization operations will be triggered after the stop hour. This value is between 0 (midnight) and 23 inclusive. | [optional] 
**maximum_concurrent_item_syncs** | **Integer** | The maximum allowed number of library items to synchronize concurrently from remote libraries. This must be a positive number. The service may not be able to guarantee the requested concurrency if there is no available capacity. &lt;p&gt; This setting is global across all subscribed libraries. | [optional] 


