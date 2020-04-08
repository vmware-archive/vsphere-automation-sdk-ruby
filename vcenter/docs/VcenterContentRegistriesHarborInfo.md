# VSphereAutomation::VCenter::VcenterContentRegistriesHarborInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cert_chain** | **Array&lt;String&gt;** | Harbor certificate chain in base64 format. | 
**cluster** | **String** | Identifier of the cluster. | [optional] 
**creation_time** | **DateTime** | The date and time when the harbor registry was created. | 
**garbage_collection** | [**VcenterContentRegistriesHarborGarbageCollection**](VcenterContentRegistriesHarborGarbageCollection.md) |  | 
**health** | [**VcenterContentRegistriesHealthInfo**](VcenterContentRegistriesHealthInfo.md) |  | 
**namespace** | **String** | Identifier of the Harbor namespace in case it is created in a Kubernetes environment. | [optional] 
**storage** | [**Array&lt;VcenterContentRegistriesHarborStorageInfo&gt;**](VcenterContentRegistriesHarborStorageInfo.md) | Storage information associated with the registry. | 
**ui_access_url** | **String** | URL to access the UI of the registry. | 
**version** | **String** | Version of the registry. | 


