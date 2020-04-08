# VSphereAutomation::VCenter::VcenterTagAssociationsHostListResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**associations** | [**Array&lt;VcenterTagAssociationsHostSummary&gt;**](VcenterTagAssociationsHostSummary.md) | List of tag associations. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**marker** | **String** | Marker is an opaque data structure that allows the caller to request the next page of tag associations. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, there are no more tag associations to request. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tag_associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tag_associations.Marker. | [optional] 
**status** | [**VcenterTagAssociationsHostLastIterationStatus**](VcenterTagAssociationsHostLastIterationStatus.md) |  | 


