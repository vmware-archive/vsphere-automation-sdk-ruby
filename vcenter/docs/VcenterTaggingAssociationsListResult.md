# VSphereAutomation::VCenter::VcenterTaggingAssociationsListResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**associations** | [**Array&lt;VcenterTaggingAssociationsSummary&gt;**](VcenterTaggingAssociationsSummary.md) | List of tag associations. | 
**marker** | **String** | Marker is an opaque data structure that allows the caller to request the next page of tag associations. If unset or empty, there are no more tag associations to request. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.tagging.associations.Marker. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.tagging.associations.Marker. | [optional] 
**status** | [**VcenterTaggingAssociationsLastIterationStatus**](VcenterTaggingAssociationsLastIterationStatus.md) |  | 


