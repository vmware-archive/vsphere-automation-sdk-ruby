# VSphereAutomation::CIS::CisTaggingCategoryUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The display name of the category. | [optional] 
**description** | **String** | The description of the category. | [optional] 
**cardinality** | [**CisTaggingCategoryModelCardinality**](CisTaggingCategoryModelCardinality.md) |  | [optional] 
**associable_types** | **Array&lt;String&gt;** | Object types to which this category&#39;s tags can be attached. &lt;p&gt; The {@term set} of associable types cannot be updated incrementally. For example, if {@link #associableTypes} originally contains {A,B,C} and you want to add D, then you need to pass {A,B,C,D} in your update specification. You also cannot remove any item from this {@term set}. For example, if you have {A,B,C}, then you cannot remove say {A} from it. Similarly, if you start with an empty {@term set}, then that implies that you can tag any object and hence you cannot later pass say {A}, because that would be restricting the type of objects you want to tag. Thus, associable types can only grow and not shrink. | [optional] 


