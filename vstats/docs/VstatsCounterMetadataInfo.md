# VSphereAutomation::VStats::VstatsCounterMetadataInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cid** | **String** | Counter Id. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter. | 
**mid** | **String** | Metadata Id. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.CounterMetadata. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.CounterMetadata. | 
**pid** | **String** | ID of the respective provider. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. This field is unset in the current version. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Provider. | [optional] 
**scale** | [**VstatsCounterMetadataUnitsFactor**](VstatsCounterMetadataUnitsFactor.md) |  | [optional] 
**status** | [**VstatsCounterMetadataCounterEditionStatus**](VstatsCounterMetadataCounterEditionStatus.md) |  | 
**type** | [**VstatsCounterMetadataSampleType**](VstatsCounterMetadataSampleType.md) |  | 
**units** | [**VstatsCounterMetadataMetricUnits**](VstatsCounterMetadataMetricUnits.md) |  | 
**user_info** | [**VstatsUserInfo**](VstatsUserInfo.md) |  | [optional] 


