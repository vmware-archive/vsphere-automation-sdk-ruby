# VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall_compliance** | [**VcenterVmStoragePolicyComplianceStatus**](VcenterVmStoragePolicyComplianceStatus.md) |  | 
**vm_home** | [**VcenterVmStoragePolicyComplianceVmComplianceInfo**](VcenterVmStoragePolicyComplianceVmComplianceInfo.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | The compliance information Compliance.VmComplianceInfo for the virtual machine&#39;s virtual disks that are currently associated with a storage policy. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | 


