# VSphereAutomation::VCenter::VcenterVmStoragePolicyInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm_home** | **String** | Storage Policy associated with virtual machine home. Ifunset, the virtual machine&#39;s home directory doesn&#39;t have any storage policy. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.StoragePolicy. | [optional] 
**disks** | **Array&lt;Object&gt;** | Storage policies associated with virtual disks. The values in this map are storage policy identifiers. They will be identifiers for the resource type:vcenter.StoragePolicy If the map is empty, the virtual machine does not have any disks or its disks are not associated with a storage policy. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | 


