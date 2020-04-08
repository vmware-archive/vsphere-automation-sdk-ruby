# VSphereAutomation::VCenter::VcenterNsxManagementNetworkCompatibilitySummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dv_portgroup** | **String** | Identifier of the Distributed Port Group (DVPG). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: DistributedVirtualPortgroup. When operations return a value of this structure as a result, the field will be an identifier for the resource type: DistributedVirtualPortgroup. | 
**host_vmknics** | [**Array&lt;VcenterNsxManagementNetworkCompatibilityHostVmknicInfo&gt;**](VcenterNsxManagementNetworkCompatibilityHostVmknicInfo.md) | The list of configurations of VMKernel NICs attached to the distributed port group. This list will be empty when hosts from the specified cluster do not have any VMKernel NIC attached to a port on the distributed port group. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**name** | **String** | Name of the Distributed Port Group (DVPG). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


