# VSphereAutomation::Appliance::RecoveryBackupSchedulesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](RecoveryBackupSchedulesApi.md#create) | **POST** /rest/appliance/recovery/backup/schedules/{schedule} | Creates a schedule
[**delete**](RecoveryBackupSchedulesApi.md#delete) | **DELETE** /rest/appliance/recovery/backup/schedules/{schedule} | Deletes an existing schedule
[**get**](RecoveryBackupSchedulesApi.md#get) | **GET** /rest/appliance/recovery/backup/schedules/{schedule} | Returns an existing schedule information based on id
[**list**](RecoveryBackupSchedulesApi.md#list) | **GET** /rest/appliance/recovery/backup/schedules | Returns a list of existing schedules with details
[**run**](RecoveryBackupSchedulesApi.md#run) | **POST** /rest/appliance/recovery/backup/schedules/{schedule}?action&#x3D;run | Initiate backup with the specified schedule
[**update**](RecoveryBackupSchedulesApi.md#update) | **PUT** /rest/appliance/recovery/backup/schedules/update/{schedule} | Updates a schedule


# **create**
> create(schedule, request_body)

Creates a schedule

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
request_body = Appliance::ApplianceRecoveryBackupSchedulesCreate.new # ApplianceRecoveryBackupSchedulesCreate | 

begin
  #Creates a schedule
  api_instance.create(schedule, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **request_body** | [**ApplianceRecoveryBackupSchedulesCreate**](ApplianceRecoveryBackupSchedulesCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(schedule)

Deletes an existing schedule

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule

begin
  #Deletes an existing schedule
  api_instance.delete(schedule)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceRecoveryBackupSchedulesResp get(schedule)

Returns an existing schedule information based on id

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule

begin
  #Returns an existing schedule information based on id
  result = api_instance.get(schedule)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 

### Return type

[**ApplianceRecoveryBackupSchedulesResp**](ApplianceRecoveryBackupSchedulesResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ApplianceRecoveryBackupSchedulesListResp list

Returns a list of existing schedules with details

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new

begin
  #Returns a list of existing schedules with details
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceRecoveryBackupSchedulesListResp**](ApplianceRecoveryBackupSchedulesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **run**
> ApplianceRecoveryBackupSchedulesRunResp run(schedule, opts)

Initiate backup with the specified schedule

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
opts = {
  request_body: Appliance::ApplianceRecoveryBackupSchedulesRun.new # ApplianceRecoveryBackupSchedulesRun | 
}

begin
  #Initiate backup with the specified schedule
  result = api_instance.run(schedule, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **request_body** | [**ApplianceRecoveryBackupSchedulesRun**](ApplianceRecoveryBackupSchedulesRun.md)|  | [optional] 

### Return type

[**ApplianceRecoveryBackupSchedulesRunResp**](ApplianceRecoveryBackupSchedulesRunResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(schedule, request_body)

Updates a schedule

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

api_instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
schedule = 'schedule_example' # String | Identifier of the schedule
request_body = Appliance::ApplianceRecoveryBackupSchedulesUpdate.new # ApplianceRecoveryBackupSchedulesUpdate | 

begin
  #Updates a schedule
  api_instance.update(schedule, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RecoveryBackupSchedulesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule** | **String**| Identifier of the schedule | 
 **request_body** | [**ApplianceRecoveryBackupSchedulesUpdate**](ApplianceRecoveryBackupSchedulesUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



