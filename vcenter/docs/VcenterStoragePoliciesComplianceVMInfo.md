# VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm_home** | [**VcenterStoragePoliciesComplianceVMStatus**](VcenterStoragePoliciesComplianceVMStatus.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | A Map of virtual disks and their compliance status If empty, the virtual machine does not have any disks or its disks are not associated with a storage policy. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | 


