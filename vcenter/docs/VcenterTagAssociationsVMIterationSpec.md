# VSphereAutomation::VCenter::VcenterTagAssociationsVMIterationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**marker** | **String** | Marker is an opaque data structure that allows the VM service to find where the previously returned page of tag associations has ended and where the new page should begin. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, first page of tag associations will be returned. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker. | [optional] 
**size** | **Integer** | Size specifies the maximum number of results to return. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset defaults to 5000. | [optional] 


