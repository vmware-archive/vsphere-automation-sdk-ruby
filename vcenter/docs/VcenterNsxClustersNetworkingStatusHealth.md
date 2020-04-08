# VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusHealth

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of error messages indicating the issues with the health of the entity. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of NetworkingStatus.Health.status is one of INDETERMINATE or UNHEALTHY. | [optional] 
**status** | [**VcenterNsxClustersNetworkingStatusHealthStatus**](VcenterNsxClustersNetworkingStatusHealthStatus.md) |  | 
**warnings** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of warning messages indicating the issues with the health of the entity that may require attention. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of NetworkingStatus.Health.status is one of HEALTHY_WITH_WARNINGS or INDETERMINATE. | [optional] 


