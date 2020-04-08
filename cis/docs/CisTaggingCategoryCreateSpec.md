# VSphereAutomation::CIS::CisTaggingCategoryCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**associable_types** | **Array&lt;String&gt;** | Object types to which this category&#39;s tags can be attached. | 
**cardinality** | [**CisTaggingCategoryModelCardinality**](CisTaggingCategoryModelCardinality.md) |  | 
**category_id** | **String** | The identifier of the category. If specified, the category will be created with this identifier. This has to be of the category ManagedObject Id format urn:vmomi:InventoryServiceCategory:&lt;id&gt;:GLOBAL The &lt;id&gt; cannot contain special character &#39;:&#39; | [optional] 
**description** | **String** | The description of the category. | 
**name** | **String** | The display name of the category. | 


