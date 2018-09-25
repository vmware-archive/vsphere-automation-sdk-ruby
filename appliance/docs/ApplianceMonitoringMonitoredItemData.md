# VSphereAutomation::Appliance::ApplianceMonitoringMonitoredItemData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Monitored item IDs Ex: CPU, MEMORY, STORAGE_TOTAL | [optional] 
**interval** | [**ApplianceMonitoringIntervalType**](ApplianceMonitoringIntervalType.md) |  | [optional] 
**function** | [**ApplianceMonitoringFunctionType**](ApplianceMonitoringFunctionType.md) |  | [optional] 
**start_time** | **DateTime** | Start time in UTC | [optional] 
**end_time** | **DateTime** | End time in UTC | [optional] 
**data** | **Array&lt;String&gt;** | list of values | [optional] 


