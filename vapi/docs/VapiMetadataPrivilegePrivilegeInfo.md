# VSphereAutomation::VAPI::VapiMetadataPrivilegePrivilegeInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_path** | **String** | The {@name #propertyPath} points to an entity that is used in the operation element. An entity can either be present in one of the parameter elements or if a parameter is a structure element, it could also be present in one of the field elements. &lt;p&gt; If the privilege is assigned to an entity used in the parameter, {@name #propertyPath} will just contain the name of the parameter field. If the privilege is assigned to an entity in one of the field elements of a parameter element that is a structure element, then {@name #propertyPath} will contain a path to the field element starting from the parameter name. | 
**privileges** | **Array&lt;String&gt;** | List of privileges assigned to the entity that is being referred by {@link #propertyPath}. | 


