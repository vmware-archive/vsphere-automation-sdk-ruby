# VSphereAutomation::Appliance::RecoveryRestoreApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](RecoveryRestoreApi.md#validate) | **POST** /appliance/recovery/restore/validate | Get metadata before restore


# **validate**
> ApplianceRecoveryRestoreValidateResult validate(request_body)

Get metadata before restore

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

api_instance = VSphereAutomation::Appliance::RecoveryRestoreApi.new
request_body = Appliance::ApplianceRecoveryRestoreValidate.new # ApplianceRecoveryRestoreValidate | 

begin
  #Get metadata before restore
  result = api_instance.validate(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceRecoveryRestoreValidate**](ApplianceRecoveryRestoreValidate.md)|  | 

### Return type

[**ApplianceRecoveryRestoreValidateResult**](ApplianceRecoveryRestoreValidateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



