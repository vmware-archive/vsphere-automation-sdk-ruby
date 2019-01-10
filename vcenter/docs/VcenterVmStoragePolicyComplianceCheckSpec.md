# VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceCheckSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm_home** | **BOOLEAN** | Invoke compliance check on the virtual machine home directory if set to true. | 
**disks** | **Array&lt;String&gt;** | Identifiers of the virtual machine&#39;s virtual disks for which compliance should be checked. If unset or empty, compliance check is invoked on all the associated disks. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.vm.hardware.Disk. | [optional] 


