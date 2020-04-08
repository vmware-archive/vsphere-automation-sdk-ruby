# VSphereAutomation::ESX::SettingsDepotsUmdsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsDepotsUmdsApi.md#delete) | **DELETE** /api/esx/settings/depots/umds | Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
[**get**](SettingsDepotsUmdsApi.md#get) | **GET** /api/esx/settings/depots/umds | Gets the information about a currently configured UMDS software depot.
[**set**](SettingsDepotsUmdsApi.md#set) | **PUT** /api/esx/settings/depots/umds | Sets or overwrites information about an UMDS software depot.
[**update**](SettingsDepotsUmdsApi.md#update) | **PATCH** /api/esx/settings/depots/umds | Updates the configuration of a currently configured UMDS software depot.


# **delete**
> delete

Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsUmdsApi.new

begin
  #Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
  api_instance.delete
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsUmdsApi->delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsDepotsUmdsInfo get

Gets the information about a currently configured UMDS software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsUmdsApi.new

begin
  #Gets the information about a currently configured UMDS software depot.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsUmdsApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDepotsUmdsInfo**](EsxSettingsDepotsUmdsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(opts)

Sets or overwrites information about an UMDS software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsUmdsApi.new
opts = {
  request_body: ESX::EsxSettingsDepotsUmdsSetSpec.new # EsxSettingsDepotsUmdsSetSpec | 
}

begin
  #Sets or overwrites information about an UMDS software depot.
  api_instance.set(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsUmdsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDepotsUmdsSetSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(opts)

Updates the configuration of a currently configured UMDS software depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsUmdsApi.new
opts = {
  request_body: ESX::EsxSettingsDepotsUmdsUpdateSpec.new # EsxSettingsDepotsUmdsUpdateSpec | 
}

begin
  #Updates the configuration of a currently configured UMDS software depot.
  api_instance.update(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsUmdsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDepotsUmdsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



