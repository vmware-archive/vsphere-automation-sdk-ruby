# VSphereAutomation::VCenter::VcenterNsxManagementNetworkCompatibilityHostVmknicInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**best_practice_violations** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of violations of VMware Best Practice Guidelines for management network configuration. If list of violations is not empty, then this ManagementNetworkCompatibility.HostVmknicInfo.vmknic may be used for the management network configuration, but it might not work as expected. This field is for future use. It is not supported yet. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**gateway** | **String** | Gateway IP address for the VMKernel NIC on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**host** | **String** | Identifier of the Host. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. | 
**incompatible_reasons** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of reasons for incompatibility of the ManagementNetworkCompatibility.HostVmknicInfo.vmknic for management network configuration. If list of reasons is not empty, then this ManagementNetworkCompatibility.HostVmknicInfo.vmknic cannot be used for the management network configuration. This field is for future use. It is not supported yet. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**subnet_mask** | **String** | Subnet mask for the VMKernel NIC on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**vmknic** | **String** | Name of the VMKernel NIC. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


