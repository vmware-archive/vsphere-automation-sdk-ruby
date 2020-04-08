# VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeOperation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**end_time** | **DateTime** | The time when the operation ended. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if the operation is completed and the operation supports end time. | [optional] 
**messages** | [**Array&lt;VcenterNsxDeploymentUpgradeMessage&gt;**](VcenterNsxDeploymentUpgradeMessage.md) | The messages corresponding to the operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if messages are present. | [optional] 
**name** | **String** | The name of the operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**progress** | **Float** | The progress of the operation in percentage. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if the operation supports percentage progress. | [optional] 
**start_time** | **DateTime** | The time when the operation was started. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if the opeation is started and the operation supports start time. | [optional] 
**status** | [**VcenterNsxDeploymentUpgradeOperationStatus**](VcenterNsxDeploymentUpgradeOperationStatus.md) |  | 
**tasks** | [**Array&lt;VcenterNsxDeploymentUpgradeOperation&gt;**](VcenterNsxDeploymentUpgradeOperation.md) | The list of tasks associated with the current operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if sub tasks are present. | [optional] 


