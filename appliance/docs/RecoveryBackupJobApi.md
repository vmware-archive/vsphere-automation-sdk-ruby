# VSphereAutomation::Appliance::RecoveryBackupJobApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](RecoveryBackupJobApi.md#cancel) | **POST** /rest/appliance/recovery/backup/job/{id}/cancel | Cancel the backup job.
[**create**](RecoveryBackupJobApi.md#create) | **POST** /rest/appliance/recovery/backup/job | Initiate backup.
[**get**](RecoveryBackupJobApi.md#get) | **GET** /rest/appliance/recovery/backup/job/{id} | See backup job progress/result.
[**list**](RecoveryBackupJobApi.md#list) | **GET** /rest/appliance/recovery/backup/job | Get list of backup jobs


# **cancel**
> ApplianceRecoveryBackupJobCancelResp cancel(id)

Cancel the backup job.

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
id = 'id_example' # String | ID (ID of job)

begin
  #Cancel the backup job.
  result = api_instance.cancel(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID (ID of job) | 

### Return type

[**ApplianceRecoveryBackupJobCancelResp**](ApplianceRecoveryBackupJobCancelResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> ApplianceRecoveryBackupJobCreateResp create(request_body)

Initiate backup.

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
request_body = Appliance::ApplianceRecoveryBackupJobCreate.new # ApplianceRecoveryBackupJobCreate | 

begin
  #Initiate backup.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceRecoveryBackupJobCreate**](ApplianceRecoveryBackupJobCreate.md)|  | 

### Return type

[**ApplianceRecoveryBackupJobCreateResp**](ApplianceRecoveryBackupJobCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ApplianceRecoveryBackupJobResp get(id)

See backup job progress/result.

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new
id = 'id_example' # String | ID (ID of job)

begin
  #See backup job progress/result.
  result = api_instance.get(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID (ID of job) | 

### Return type

[**ApplianceRecoveryBackupJobResp**](ApplianceRecoveryBackupJobResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceRecoveryBackupJobListResp list

Get list of backup jobs

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupJobApi.new

begin
  #Get list of backup jobs
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupJobApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryBackupJobListResp**](ApplianceRecoveryBackupJobListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



