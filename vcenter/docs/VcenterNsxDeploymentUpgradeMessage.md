# VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**msg** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**msg_type** | [**VcenterNsxDeploymentUpgradeMessageType**](VcenterNsxDeploymentUpgradeMessageType.md) |  | 
**unit_name** | **String** | If the type of the unit is manager, edge, host or cluster, this field will return the display name of the unit. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Upgrade.Message.unit-type is one of MANAGER, EDGE, HOST, or CLUSTER. | [optional] 
**unit_type** | [**VcenterNsxDeploymentUpgradeUnitType**](VcenterNsxDeploymentUpgradeUnitType.md) |  | 


