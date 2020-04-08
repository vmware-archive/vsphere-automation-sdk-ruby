# VSphereAutomation::VStats::VstatsTelemetryFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prefix** | **String** | To query telemetry by name prefix. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset all telemetry data is returned. When set, returns the data where telemetry name starts with the prefix. | [optional] 
**types** | [**Array&lt;VstatsTelemetryTelemetryType&gt;**](VstatsTelemetryTelemetryType.md) | Specifies metric types to return. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset data for all telemetry metric types will be returned. | [optional] 


