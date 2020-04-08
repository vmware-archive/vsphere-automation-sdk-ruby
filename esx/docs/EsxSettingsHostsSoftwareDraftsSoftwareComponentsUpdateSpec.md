# VSphereAutomation::ESX::EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**components_to_delete** | **Array&lt;String&gt;** | List of components to be removed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**components_to_set** | **Hash&lt;String, String&gt;** | List of components to be updated. If the component already exists in the draft, the version is updated, else it is added. If a component is provided without version, then its version will be chosen based on constraints in the system. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 


