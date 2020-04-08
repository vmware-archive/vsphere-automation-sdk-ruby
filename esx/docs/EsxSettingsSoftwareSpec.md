# VSphereAutomation::ESX::EsxSettingsSoftwareSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_on** | [**EsxSettingsAddOnSpec**](EsxSettingsAddOnSpec.md) |  | [optional] 
**base_image** | [**EsxSettingsBaseImageSpec**](EsxSettingsBaseImageSpec.md) |  | 
**components** | **Hash&lt;String, String&gt;** | Additional components which should be part of the software specification. If value is not given for a particular component then version for that component will be picked from the constraints. These override the components present in {@link #addOn} and {@link #baseImage}. | [optional] 
**hardware_support** | [**EsxSettingsHardwareSupportSpec**](EsxSettingsHardwareSupportSpec.md) |  | [optional] 
**solutions** | [**Hash&lt;String, EsxSettingsSolutionSpec&gt;**](EsxSettingsSolutionSpec.md) | Mapping from solution identifier to the solution specification. The key is the solution name and the value is the specification detailing components registered by that solution. | [optional] 


