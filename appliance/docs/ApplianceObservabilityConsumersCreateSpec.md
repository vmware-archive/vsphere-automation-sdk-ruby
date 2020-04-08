# VSphereAutomation::Appliance::ApplianceObservabilityConsumersCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the consumer which also an consumer identifier. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: appliance.observability.consumer. When operations return a value of this structure as a result, the field will be an identifier for the resource type: appliance.observability.consumer. | 
**status** | [**ApplianceObservabilityConsumersStatus**](ApplianceObservabilityConsumersStatus.md) |  | 
**topics** | **Array&lt;String&gt;** | Topics to which the consumer will be subscribed. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: appliance.observability.topic. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: appliance.observability.topic. | 


