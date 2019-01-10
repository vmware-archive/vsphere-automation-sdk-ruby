# VSphereAutomation::Appliance::RecoveryBackupSchedulesApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RecoveryBackupSchedulesApi.md#create) | **POST** /appliance/recovery/backup/schedules/{schedule} | Creates a schedule
[**delete**](RecoveryBackupSchedulesApi.md#delete) | **DELETE** /appliance/recovery/backup/schedules/{schedule} | Deletes an existing schedule
[**get**](RecoveryBackupSchedulesApi.md#get) | **GET** /appliance/recovery/backup/schedules/{schedule} | Returns an existing schedule information based on id
[**list**](RecoveryBackupSchedulesApi.md#list) | **GET** /appliance/recovery/backup/schedules | Returns a list of existing schedules with details
[**run**](RecoveryBackupSchedulesApi.md#run) | **POST** /appliance/recovery/backup/schedules/{schedule}?action&#x3D;run | Initiate backup with the specified schedule
[**update**](RecoveryBackupSchedulesApi.md#update) | **PUT** /appliance/recovery/backup/schedules/update/{schedule} | Updates a schedule


# **create**
> create(schedule, appliance_recovery_backup_schedules_create)

Creates a schedule

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
appliance_recovery_backup_schedules_create = VSphereAutomation::ApplianceRecoveryBackupSchedulesCreate.new # ApplianceRecoveryBackupSchedulesCreate | 

begin
  #Creates a schedule
  api_instance.create(schedule, appliance_recovery_backup_schedules_create)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **appliance_recovery_backup_schedules_create** | [**ApplianceRecoveryBackupSchedulesCreate**](ApplianceRecoveryBackupSchedulesCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(schedule)

Deletes an existing schedule

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule

begin
  #Deletes an existing schedule
  api_instance.delete(schedule)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ApplianceRecoveryBackupSchedulesResult get(schedule)

Returns an existing schedule information based on id

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule

begin
  #Returns an existing schedule information based on id
  result = api_instance.get(schedule)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 

### Return type

[**ApplianceRecoveryBackupSchedulesResult**](ApplianceRecoveryBackupSchedulesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceRecoveryBackupSchedulesListResult list

Returns a list of existing schedules with details

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new

begin
  #Returns a list of existing schedules with details
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryBackupSchedulesListResult**](ApplianceRecoveryBackupSchedulesListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **run**
> ApplianceRecoveryBackupSchedulesRunResult run(schedule, opts)

Initiate backup with the specified schedule

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
opts = {
  appliance_recovery_backup_schedules_run: VSphereAutomation::ApplianceRecoveryBackupSchedulesRun.new # ApplianceRecoveryBackupSchedulesRun | 
}

begin
  #Initiate backup with the specified schedule
  result = api_instance.run(schedule, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **appliance_recovery_backup_schedules_run** | [**ApplianceRecoveryBackupSchedulesRun**](ApplianceRecoveryBackupSchedulesRun.md)|  | [optional] 

### Return type

[**ApplianceRecoveryBackupSchedulesRunResult**](ApplianceRecoveryBackupSchedulesRunResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update**
> update(schedule, appliance_recovery_backup_schedules_update)

Updates a schedule

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
appliance_recovery_backup_schedules_update = VSphereAutomation::ApplianceRecoveryBackupSchedulesUpdate.new # ApplianceRecoveryBackupSchedulesUpdate | 

begin
  #Updates a schedule
  api_instance.update(schedule, appliance_recovery_backup_schedules_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **appliance_recovery_backup_schedules_update** | [**ApplianceRecoveryBackupSchedulesUpdate**](ApplianceRecoveryBackupSchedulesUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



