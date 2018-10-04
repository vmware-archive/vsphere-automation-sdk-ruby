# VSphereAutomation::Appliance::RecoveryRestoreApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](RecoveryRestoreApi.md#validate) | **POST** /appliance/recovery/restore/validate | Get metadata before restore


# **validate**
> ApplianceRecoveryRestoreValidateResult validate(opts)

Get metadata before restore

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryRestoreApi.new
opts = {
  appliance_recovery_restore_validate: VSphereAutomation::ApplianceRecoveryRestoreValidate.new # ApplianceRecoveryRestoreValidate | 
}

begin
  #Get metadata before restore
  result = api_instance.validate(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_restore_validate** | [**ApplianceRecoveryRestoreValidate**](ApplianceRecoveryRestoreValidate.md)|  | [optional] 

### Return type

[**ApplianceRecoveryRestoreValidateResult**](ApplianceRecoveryRestoreValidateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



