# VSphereAutomation::Appliance::RecoveryRestoreJobApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](RecoveryRestoreJobApi.md#cancel) | **POST** /appliance/recovery/restore/job/cancel | Cancel the restore job
[**create**](RecoveryRestoreJobApi.md#create) | **POST** /appliance/recovery/restore/job | Initiate restore.
[**get**](RecoveryRestoreJobApi.md#get) | **GET** /appliance/recovery/restore/job | See restore job progress/result.


# **cancel**
> ApplianceRecoveryRestoreJobCancelResult cancel

Cancel the restore job

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryRestoreJobApi.new

begin
  #Cancel the restore job
  result = api_instance.cancel
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreJobApi->cancel: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryRestoreJobCancelResult**](ApplianceRecoveryRestoreJobCancelResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> ApplianceRecoveryRestoreJobCreateResult create(appliance_recovery_restore_job_create)

Initiate restore.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryRestoreJobApi.new
appliance_recovery_restore_job_create = VSphereAutomation::ApplianceRecoveryRestoreJobCreate.new # ApplianceRecoveryRestoreJobCreate | 

begin
  #Initiate restore.
  result = api_instance.create(appliance_recovery_restore_job_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_restore_job_create** | [**ApplianceRecoveryRestoreJobCreate**](ApplianceRecoveryRestoreJobCreate.md)|  | 

### Return type

[**ApplianceRecoveryRestoreJobCreateResult**](ApplianceRecoveryRestoreJobCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ApplianceRecoveryRestoreJobResult get

See restore job progress/result.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryRestoreJobApi.new

begin
  #See restore job progress/result.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreJobApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryRestoreJobResult**](ApplianceRecoveryRestoreJobResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



