# VSphereAutomation::Appliance::RecoveryBackupJobDetailsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RecoveryBackupJobDetailsApi.md#list) | **GET** /rest/appliance/recovery/backup/job/details | Returns detailed information about the current and historical backup jobs.


# **list**
> ApplianceRecoveryBackupJobDetailsListResp list(opts)

Returns detailed information about the current and historical backup jobs.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[**ApplianceRecoveryBackupJobDetailsListResp**](ApplianceRecoveryBackupJobDetailsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



