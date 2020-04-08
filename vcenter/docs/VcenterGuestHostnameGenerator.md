# VSphereAutomation::VCenter::VcenterGuestHostnameGenerator

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fixed_name** | **String** | The virtual machine name specified by the client. This field is optional and it is only relevant when the value of HostnameGenerator.type is FIXED. | [optional] 
**prefix** | **String** | Base prefix, to which a unique number is appended. This field is optional and it is only relevant when the value of HostnameGenerator.type is PREFIX. | [optional] 
**type** | [**VcenterGuestHostnameGeneratorType**](VcenterGuestHostnameGeneratorType.md) |  | 


