# VSphereAutomation::Appliance::RecoveryBackupApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](RecoveryBackupApi.md#validate) | **POST** /appliance/recovery/backup/validate | Check for backup errors without starting backup.


# **validate**
> ApplianceRecoveryBackupValidateResult validate(appliance_recovery_backup_validate)

Check for backup errors without starting backup.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::RecoveryBackupApi.new
appliance_recovery_backup_validate = VSphereAutomation::ApplianceRecoveryBackupValidate.new # ApplianceRecoveryBackupValidate | 

begin
  #Check for backup errors without starting backup.
  result = api_instance.validate(appliance_recovery_backup_validate)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_recovery_backup_validate** | [**ApplianceRecoveryBackupValidate**](ApplianceRecoveryBackupValidate.md)|  | 

### Return type

[**ApplianceRecoveryBackupValidateResult**](ApplianceRecoveryBackupValidateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



