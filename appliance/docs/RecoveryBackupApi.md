# VSphereAutomation::Appliance::RecoveryBackupApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](RecoveryBackupApi.md#validate) | **POST** /rest/appliance/recovery/backup/validate | Check for backup errors without starting backup.


# **validate**
> ApplianceRecoveryBackupValidateResp validate(request_body)

Check for backup errors without starting backup.

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupApi.new
request_body = Appliance::ApplianceRecoveryBackupValidate.new # ApplianceRecoveryBackupValidate | 

begin
  #Check for backup errors without starting backup.
  result = api_instance.validate(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceRecoveryBackupValidate**](ApplianceRecoveryBackupValidate.md)|  | 

### Return type

[**ApplianceRecoveryBackupValidateResp**](ApplianceRecoveryBackupValidateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



