# VSphereAutomation::ESX::EsxHclHostsCompatibilityReportDeviceHclInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compatibility** | [**EsxHclCompatibilityStatus**](EsxHclCompatibilityStatus.md) |  | 
**device** | [**EsxHclPCIDevice**](EsxHclPCIDevice.md) |  | 
**device_constraints** | [**Array&lt;EsxHclHostsCompatibilityReportDeviceConstraint&gt;**](EsxHclHostsCompatibilityReportDeviceConstraint.md) | Lists the constraints the target ESXi release has for this PCI device | [optional] 
**notes** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Information that needs to be taken into account when considering this device hcl. | [optional] 
**supported_releases** | **Array&lt;String&gt;** | Provides information about supported releases for this device. | [optional] 
**vcg_link** | **String** | Provides link to the VMware Compatibility Guide for further information on the compatibility. | [optional] 


