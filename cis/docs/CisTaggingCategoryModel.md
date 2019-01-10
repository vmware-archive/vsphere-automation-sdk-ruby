# VSphereAutomation::CIS::CisTaggingCategoryModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the category. | 
**name** | **String** | The display name of the category. | 
**description** | **String** | The description of the category. | 
**cardinality** | [**CisTaggingCategoryModelCardinality**](CisTaggingCategoryModelCardinality.md) |  | 
**associable_types** | **Array&lt;String&gt;** | The types of objects that the tags in this category can be attached to. If the {@term set} is empty, then tags can be attached to all types of objects. This field works only for objects that reside in Inventory Service (IS). For non IS objects, this check is not performed today and hence a tag can be attached to any non IS object. | 
**used_by** | **Array&lt;String&gt;** | The {@term set} of users that can use this category. To add users to this, you need to have the edit privilege on the category. Similarly, to unsubscribe from this category, you need the edit privilege on the category. You should not modify other users subscription from this {@term set}. | 


