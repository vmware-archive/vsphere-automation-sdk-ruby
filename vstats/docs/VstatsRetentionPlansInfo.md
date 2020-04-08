# VSphereAutomation::VStats::VstatsRetentionPlansInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Retention plan identifier. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.RetentionPlan. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.RetentionPlan. | 
**max_ages** | [**VstatsRetentionPlansMaxAgesInfo**](VstatsRetentionPlansMaxAgesInfo.md) |  | 
**memo_** | **String** | Consumer provided text about this Retention Plan. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. if unset no consumer text is set. | [optional] 


