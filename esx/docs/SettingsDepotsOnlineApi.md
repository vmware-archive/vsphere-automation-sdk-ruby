# VSphereAutomation::ESX::SettingsDepotsOnlineApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SettingsDepotsOnlineApi.md#create) | **POST** /api/esx/settings/depots/online | Adds a new online software depot to the list of currently configured online software depots.
[**delete**](SettingsDepotsOnlineApi.md#delete) | **DELETE** /api/esx/settings/depots/online/{depot} | Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
[**get**](SettingsDepotsOnlineApi.md#get) | **GET** /api/esx/settings/depots/online/{depot} | Gets the information about a currently configured online software depot.
[**list**](SettingsDepotsOnlineApi.md#list) | **GET** /api/esx/settings/depots/online | Returns a list of currently configured online software depots.
[**update**](SettingsDepotsOnlineApi.md#update) | **PATCH** /api/esx/settings/depots/online/{depot} | Updates the configuration of a currently configured online software depot.


# **create**
> String create(opts)

Adds a new online software depot to the list of currently configured online software depots.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new
opts = {
  request_body: ESX::EsxSettingsDepotsOnlineCreateSpec.new # EsxSettingsDepotsOnlineCreateSpec | 
}

begin
  #Adds a new online software depot to the list of currently configured online software depots.
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOnlineApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDepotsOnlineCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(depot)

Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new
depot = 'depot_example' # String | Identifier of the depot to be removed.

begin
  #Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
  api_instance.delete(depot)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOnlineApi->delete: #{e}"
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
> EsxSettingsDepotsOnlineInfo get(depot)

Gets the information about a currently configured online software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new
depot = 'depot_example' # String | Identifier for the depot.

begin
  #Gets the information about a currently configured online software depot.
  result = api_instance.get(depot)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOnlineApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depot** | **String**| Identifier for the depot. | 

### Return type

[**EsxSettingsDepotsOnlineInfo**](EsxSettingsDepotsOnlineInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsDepotsOnlineSummary&gt; list

Returns a list of currently configured online software depots.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new

begin
  #Returns a list of currently configured online software depots.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOnlineApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, EsxSettingsDepotsOnlineSummary&gt;**](EsxSettingsDepotsOnlineSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(depot, opts)

Updates the configuration of a currently configured online software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsOnlineApi.new
depot = 'depot_example' # String | Identifier of the depot to be updated.
opts = {
  request_body: ESX::EsxSettingsDepotsOnlineUpdateSpec.new # EsxSettingsDepotsOnlineUpdateSpec | 
}

begin
  #Updates the configuration of a currently configured online software depot.
  api_instance.update(depot, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsOnlineApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depot** | **String**| Identifier of the depot to be updated. | 
 **request_body** | **EsxSettingsDepotsOnlineUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



