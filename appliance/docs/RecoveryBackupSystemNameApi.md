# VSphereAutomation::Appliance::RecoveryBackupSystemNameApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RecoveryBackupSystemNameApi.md#list) | **GET** /appliance/recovery/backup/system-name | Returns a list of system names for which backup archives exist under {@param.name locSpec}.


# **list**
> ApplianceRecoveryBackupSystemNameListResult list(loc_spec)

Returns a list of system names for which backup archives exist under {@param.name locSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameApi.new
loc_spec = nil # Object | LocationSpec Structure

begin
  #Returns a list of system names for which backup archives exist under {@param.name locSpec}.
  result = api_instance.list(loc_spec)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSystemNameApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loc_spec** | [**Object**](.md)| LocationSpec Structure | 

### Return type

[**ApplianceRecoveryBackupSystemNameListResult**](ApplianceRecoveryBackupSystemNameListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



