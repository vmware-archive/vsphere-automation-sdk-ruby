# VSphereAutomation::VCenter::VcenterStoragePoliciesVMInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm_home** | **BOOLEAN** | Flag to indicate whether or not the virtual machine home is associated with the given storage policy. | [optional] 
**disks** | **Array&lt;String&gt;** | List of the virtual disks that are associated with the given storage policy. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: com.vmware.vcenter.vm.hardware.Disk. | [optional] 


