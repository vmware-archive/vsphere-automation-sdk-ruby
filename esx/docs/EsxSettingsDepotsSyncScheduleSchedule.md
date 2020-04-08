# VSphereAutomation::ESX::EsxSettingsDepotsSyncScheduleSchedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**day_of_month** | **Integer** | Day at which schedule should be run. The value must be within the range 1 to 31. If the value exceeds the total number of days in the month, the schedule will run on the last day of the month. | [optional] 
**day_of_week** | [**EsxSettingsDepotsSyncScheduleDayOfWeek**](EsxSettingsDepotsSyncScheduleDayOfWeek.md) |  | [optional] 
**hour** | **Integer** | Hour at which schedule should be run. The value must be within the range 0 to 23. | [optional] 
**minute** | **Integer** | Minute at which schedule should be run. The value must be within the range 0 to 59. | [optional] 
**skip** | **Integer** | This determines the units of {@name Recurrence} to skip before the scheduled task runs again. For example, value of 1 for HOURLY type means the scheduled task runs every 2 hours. The value must be within the range 0 to 998. | [optional] 
**type** | [**EsxSettingsDepotsSyncScheduleRecurrence**](EsxSettingsDepotsSyncScheduleRecurrence.md) |  | 


