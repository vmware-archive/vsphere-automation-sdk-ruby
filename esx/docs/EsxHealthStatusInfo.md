# VSphereAutomation::ESX::EsxHealthStatusInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_statuses** | [**Array&lt;EsxHealthCheckStatus&gt;**](EsxHealthCheckStatus.md) | List of CheckStatus objects for all Checks, which were executed and did NOT return an OK Status. | 
**status** | [**EsxHealthStatus**](EsxHealthStatus.md) |  | 
**wait_duration** | **Integer** | If status value is WAIT the duration in miliseconds to wait before issuing status check again. | [optional] 


