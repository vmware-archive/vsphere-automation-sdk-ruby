# VSphereAutomation::ESX::SettingsDepotsSyncScheduleApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDepotsSyncScheduleApi.md#get) | **GET** /api/esx/settings/depots/sync-schedule | Returns the currently configured software depot sync schedule.
[**set**](SettingsDepotsSyncScheduleApi.md#set) | **PUT** /api/esx/settings/depots/sync-schedule | Sets the software depot sync schedule.


# **get**
> EsxSettingsDepotsSyncScheduleSpec get

Returns the currently configured software depot sync schedule.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsDepotsSyncScheduleApi.new

begin
  #Returns the currently configured software depot sync schedule.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsSyncScheduleApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDepotsSyncScheduleSpec**](EsxSettingsDepotsSyncScheduleSpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(opts)

Sets the software depot sync schedule.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsDepotsSyncScheduleApi.new
opts = {
  request_body: ESX::EsxSettingsDepotsSyncScheduleSpec.new # EsxSettingsDepotsSyncScheduleSpec | 
}

begin
  #Sets the software depot sync schedule.
  api_instance.set(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsSyncScheduleApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDepotsSyncScheduleSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



