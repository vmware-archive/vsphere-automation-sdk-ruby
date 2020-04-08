# VSphereAutomation::VCenter::VcenterExtensionTasksUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**end_time** | **DateTime** | Time when the operation is completed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the status is not SUCCEEDED or FAILED. If status is SUCCEEDED or FAILED and client does not this field, the current system time will be set. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset when status is \&quot;FAILED\&quot;, InvalidArgument exception will be thrown. | [optional] 
**percent_done** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**result** | [**Object**](.md) | Result of the operation. If an operation reports partial results before it completes, this field could be set before the status has the value \&quot;SUCCEEDED\&quot;. The value could change as the operation progresses. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the operation does not return a result or if the result is not available at the current step of the operation. | [optional] 
**start_time** | **DateTime** | Time when the operation is started. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the status is PENDING. If the status is not PENDING, and the client does not provide this field, the current system time will be set. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | [optional] 


