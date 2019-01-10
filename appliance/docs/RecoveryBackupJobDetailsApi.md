# VSphereAutomation::Appliance::RecoveryBackupJobDetailsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RecoveryBackupJobDetailsApi.md#list) | **GET** /appliance/recovery/backup/job/details | Returns detailed information about the current and historical backup jobs.


# **list**
> ApplianceRecoveryBackupJobDetailsListResult list(opts)

Returns detailed information about the current and historical backup jobs.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobDetailsApi.new
opts = {
  filter_jobs: ['filter_jobs_example'] # Array<String> | Identifiers of backup jobs that can match the filter.
}

begin
  #Returns detailed information about the current and historical backup jobs.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobDetailsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_jobs** | [**Array&lt;String&gt;**](String.md)| Identifiers of backup jobs that can match the filter. | [optional] 

### Return type

[**ApplianceRecoveryBackupJobDetailsListResult**](ApplianceRecoveryBackupJobDetailsListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



