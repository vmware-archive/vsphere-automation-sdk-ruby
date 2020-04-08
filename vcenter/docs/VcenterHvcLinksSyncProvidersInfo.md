# VSphereAutomation::VCenter::VcenterHvcLinksSyncProvidersInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_session_info** | [**VcenterHvcLinksSyncProvidersSessionInfo**](VcenterHvcLinksSyncProvidersSessionInfo.md) |  | [optional] 
**last_sync_time** | **DateTime** | Last sync time for the provider. This indicates the last time that either a background sync or a force sync was started for the provider Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | [optional] 
**polling_interval_in_seconds** | **Integer** | Sync Polling interval between local and remote replicas for the provider Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 
**status** | [**VcenterHvcLinksSyncProvidersStatus**](VcenterHvcLinksSyncProvidersStatus.md) |  | 
**status_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 


