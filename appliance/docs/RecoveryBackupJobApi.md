# VSphereAutomation::Appliance::RecoveryBackupJobApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](RecoveryBackupJobApi.md#cancel) | **POST** /appliance/recovery/backup/job/{id}/cancel | Cancel the backup job.
[**create**](RecoveryBackupJobApi.md#create) | **POST** /appliance/recovery/backup/job | Initiate backup.
[**get**](RecoveryBackupJobApi.md#get) | **GET** /appliance/recovery/backup/job/{id} | See backup job progress/result.
[**list**](RecoveryBackupJobApi.md#list) | **GET** /appliance/recovery/backup/job | Get list of backup jobs


# **cancel**
> ApplianceRecoveryBackupJobCancelResult cancel(id)

Cancel the backup job.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
id = 'id_example' # String | ID (ID of job)

begin
  #Cancel the backup job.
  result = api_instance.cancel(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID (ID of job) | 

### Return type

[**ApplianceRecoveryBackupJobCancelResult**](ApplianceRecoveryBackupJobCancelResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> ApplianceRecoveryBackupJobCreateResult create(appliance_recovery_backup_job_create)

Initiate backup.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
appliance_recovery_backup_job_create = VSphereAutomation::ApplianceRecoveryBackupJobCreate.new # ApplianceRecoveryBackupJobCreate | 

begin
  #Initiate backup.
  result = api_instance.create(appliance_recovery_backup_job_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_backup_job_create** | [**ApplianceRecoveryBackupJobCreate**](ApplianceRecoveryBackupJobCreate.md)|  | 

### Return type

[**ApplianceRecoveryBackupJobCreateResult**](ApplianceRecoveryBackupJobCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ApplianceRecoveryBackupJobResult get(id)

See backup job progress/result.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
id = 'id_example' # String | ID (ID of job)

begin
  #See backup job progress/result.
  result = api_instance.get(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID (ID of job) | 

### Return type

[**ApplianceRecoveryBackupJobResult**](ApplianceRecoveryBackupJobResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceRecoveryBackupJobListResult list

Get list of backup jobs

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new

begin
  #Get list of backup jobs
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryBackupJobListResult**](ApplianceRecoveryBackupJobListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



