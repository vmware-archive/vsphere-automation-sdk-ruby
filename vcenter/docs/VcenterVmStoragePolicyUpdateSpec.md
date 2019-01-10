# VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm_home** | [**VcenterVmStoragePolicyVmHomePolicySpec**](VcenterVmStoragePolicyVmHomePolicySpec.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | Storage policy or policies to be used when reconfiguring virtual machine diks. if unset the current storage policy is retained. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | [optional] 


