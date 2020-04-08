# VSphereAutomation::VCenter::VcenterNsxRecoveryExecutionStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_time** | **DateTime** | End time of the recovery operation. It can be unspecified if the recovery operation is in progress. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**errors** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Error that occurred during the recovery operation. This error does not represent any error that occurs while recovering the NSX infrastructure. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, no error occurred. | [optional] 
**stage** | [**VcenterNsxRecoveryRecoveryStage**](VcenterNsxRecoveryRecoveryStage.md) |  | 
**start_time** | **DateTime** | Start time of the recovery operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**warnings** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Warnings that occurred during the recovery operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, no warnings occurred. | [optional] 


