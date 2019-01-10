# VSphereAutomation::CIS::CisTaggingTagModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the tag. | 
**category_id** | **String** | The identifier of the parent category in which this tag will be created. | 
**name** | **String** | The display name of the tag. | 
**description** | **String** | The description of the tag. | 
**used_by** | **Array&lt;String&gt;** | The {@term set} of users that can use this tag. To add users to this, you need to have the edit privilege on the tag. Similarly, to unsubscribe from this tag, you need the edit privilege on the tag. You should not modify other users subscription from this {@term set}. | 


