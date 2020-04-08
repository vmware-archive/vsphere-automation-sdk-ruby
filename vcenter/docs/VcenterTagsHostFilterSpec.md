# VSphereAutomation::VCenter::VcenterTagsHostFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tags** | **Array&lt;String&gt;** | Tag associations need to have one of the tag identifiers in this set to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, returns all tag associations. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.tagging.Tag:HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.tagging.Tag:HostSystem. | [optional] 


