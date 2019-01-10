# VSphereAutomation::Appliance::RecoveryRestoreApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](RecoveryRestoreApi.md#validate) | **POST** /appliance/recovery/restore/validate | Get metadata before restore


# **validate**
> ApplianceRecoveryRestoreValidateResult validate(appliance_recovery_restore_validate)

Get metadata before restore

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryRestoreApi.new
appliance_recovery_restore_validate = VSphereAutomation::ApplianceRecoveryRestoreValidate.new # ApplianceRecoveryRestoreValidate | 

begin
  #Get metadata before restore
  result = api_instance.validate(appliance_recovery_restore_validate)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_restore_validate** | [**ApplianceRecoveryRestoreValidate**](ApplianceRecoveryRestoreValidate.md)|  | 

### Return type

[**ApplianceRecoveryRestoreValidateResult**](ApplianceRecoveryRestoreValidateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



