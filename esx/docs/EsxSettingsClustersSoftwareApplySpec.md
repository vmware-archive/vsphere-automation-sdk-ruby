# VSphereAutomation::ESX::EsxSettingsClustersSoftwareApplySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accept_eula** | **Boolean** | Accept the VMware End User License Agreement (EULA) before starting the {@link esx.settings.clusters.Software#apply} {@term operation}. The VMware EULA is available for download at, https://www.vmware.com/download/eula.html | [optional] 
**commit** | **String** | The minimum commit identifier of the desired software document to be used during the {@link esx.settings.clusters.Software#apply} {@term operation}. | [optional] 
**hosts** | **Array&lt;String&gt;** | The specific hosts within the cluster to be considered during the {@link esx.settings.clusters.Software#apply} {@term operation}. | [optional] 


