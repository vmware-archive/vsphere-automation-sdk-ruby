# VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the specification. | 
**fingerprint** | **String** | The fingerprint is a unique identifier for a given version of the configuration. Each change to the configuration will update this value. A client cannot change this value. If specified when updating a specification, the changes will only be applied if the current fingerprint matches the specified fingerprint. This field can be used to guard against updates that has happened between the specification content was read and until it is applied. | 
**name** | **String** | Name of the specification. | 
**spec** | [**VcenterGuestCustomizationSpec**](VcenterGuestCustomizationSpec.md) |  | 


