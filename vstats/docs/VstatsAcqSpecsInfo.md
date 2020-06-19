# VSphereAutomation::VStats::VstatsAcqSpecsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**counters** | [**VstatsAcqSpecsCounterSpec**](VstatsAcqSpecsCounterSpec.md) |  | 
**endpoints** | **Array&lt;String&gt;** | A set of endpoint identifiers, each representing an endpoint to which stats data is to be pushed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, there are no endpoints to configure. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.Endpoint. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.Endpoint. | [optional] 
**expiration** | **Integer** | Expiration time for this acquisition specification represented as Unix UTC number of seconds (since epoch). Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When this field is unset or 0, default expiration duration is 100 minutes. | [optional] 
**id** | **String** | Acquisition specification identifier. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.AcqSpec. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.AcqSpec. | 
**interval** | **Integer** | Desired sampling rate in seconds. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When this field is unset, default interval is 10 seconds. | [optional] 
**memo_** | **String** | Consumer provided text about this Acquisition Specification. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 
**resources** | [**Array&lt;VstatsRsrcId&gt;**](VstatsRsrcId.md) | A set of resource identifiers representing a single resource to be monitored. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 
**status** | [**VstatsAcqSpecsStatus**](VstatsAcqSpecsStatus.md) |  | 
**status_reason** | **String** | The reason explaining why the status of an Acquisition Specification is either DISABLED, INVALID or EXPIRED. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, it means status is ENABLED. | [optional] 

