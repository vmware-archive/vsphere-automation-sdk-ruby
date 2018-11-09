# VSphereAutomation::VCenter::VcenterGuestCustomizationSpecsFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**names** | **Array&lt;String&gt;** | Names that guest customization specifications must have to match the filter (see CustomizationSpecs.Summary.name). If unset or empty, guest customization specifications with any name match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.guest.CustomizationSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.guest.CustomizationSpec. | [optional] 
**os_type** | [**VcenterGuestCustomizationSpecsOsType**](VcenterGuestCustomizationSpecsOsType.md) |  | [optional] 


