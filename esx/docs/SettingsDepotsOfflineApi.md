# VSphereAutomation::ESX::SettingsDepotsOfflineApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](SettingsDepotsOfflineApi.md#create_task) | **POST** /api/esx/settings/depots/offline?vmw-task&#x3D;true | Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**delete**](SettingsDepotsOfflineApi.md#delete) | **DELETE** /api/esx/settings/depots/offline/{depot} | Removes a depot from the list of imported offline software depots.
[**get**](SettingsDepotsOfflineApi.md#get) | **GET** /api/esx/settings/depots/offline/{depot} | Gets the information about an imported offline software depot.
[**list**](SettingsDepotsOfflineApi.md#list) | **GET** /api/esx/settings/depots/offline | Returns currently imported offline software depots.


# **create_task**
> String create_task(opts)

Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOfflineApi.new
opts = {
  request_body: ESX::EsxSettingsDepotsOfflineCreateSpec.new # EsxSettingsDepotsOfflineCreateSpec | 
}

begin
  #Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.create_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOfflineApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDepotsOfflineCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(depot)

Removes a depot from the list of imported offline software depots.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOfflineApi.new
depot = 'depot_example' # String | Identifier of the depot to be removed.

begin
  #Removes a depot from the list of imported offline software depots.
  api_instance.delete(depot)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOfflineApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depot** | **String**| Identifier of the depot to be removed. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsDepotsOfflineInfo get(depot)

Gets the information about an imported offline software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOfflineApi.new
depot = 'depot_example' # String | Identifier for the depot.

begin
  #Gets the information about an imported offline software depot.
  result = api_instance.get(depot)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOfflineApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depot** | **String**| Identifier for the depot. | 

### Return type

[**EsxSettingsDepotsOfflineInfo**](EsxSettingsDepotsOfflineInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsDepotsOfflineSummary&gt; list

Returns currently imported offline software depots.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOfflineApi.new

begin
  #Returns currently imported offline software depots.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOfflineApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, EsxSettingsDepotsOfflineSummary&gt;**](EsxSettingsDepotsOfflineSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



