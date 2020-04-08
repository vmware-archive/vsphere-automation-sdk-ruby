# VSphereAutomation::VCenter::VcenterVmGuestCustomizationSetSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the customization specification that has be retrieved from the virtual center inventory and applied for the virtual machine. Either one of Customization.SetSpec.name or Customization.SetSpec.spec or none of them should be specified. If unset and Customization.SetSpec.spec is also unset when executing Customization.set operationg, then any pending customization for the virtual machine will be cleared. | [optional] 
**spec** | [**VcenterGuestCustomizationSpec**](VcenterGuestCustomizationSpec.md) |  | [optional] 


