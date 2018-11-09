# VSphereAutomation::CIS::CisTaggingTagCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The display name of the tag. The name must be unique within its category. | 
**description** | **String** | The description of the tag. | 
**category_id** | **String** | The unique identifier of the parent category in which this tag will be created. | 
**tag_id** | **String** | The identifier of the tag. If specified, tag will be created with the specified identifier. This has to be of the tag ManagedObject Id format urn:vmomi:InventoryServiceTag:&lt;id&gt;:GLOBAL The &lt;id&gt; cannot contain special character &#39;:&#39; | [optional] 


