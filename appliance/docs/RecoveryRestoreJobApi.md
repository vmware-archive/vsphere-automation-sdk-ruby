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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> ApplianceRecoveryRestoreJobCreateResult create(request_body)

Initiate restore.

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

api_instance = VSphereAutomation::Appliance::RecoveryRestoreJobApi.new
request_body = Appliance::ApplianceRecoveryRestoreJobCreate.new # ApplianceRecoveryRestoreJobCreate | 

begin
  #Initiate restore.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryRestoreJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceRecoveryRestoreJobCreate**](ApplianceRecoveryRestoreJobCreate.md)|  | 

### Return type

[**ApplianceRecoveryRestoreJobCreateResult**](ApplianceRecoveryRestoreJobCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ApplianceRecoveryRestoreJobResult get

See restore job progress/result.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



