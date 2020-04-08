# VSphereAutomation::Appliance::ObservabilityInternalSettingsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ObservabilityInternalSettingsApi.md#get) | **GET** /api/appliance/observability/internal/settings/{key} | Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**get_keys**](ObservabilityInternalSettingsApi.md#get_keys) | **GET** /api/appliance/observability/internal/settings/keys | Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**get_settings**](ObservabilityInternalSettingsApi.md#get_settings) | **GET** /api/appliance/observability/internal/settings | Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**update**](ObservabilityInternalSettingsApi.md#update) | **PATCH** /api/appliance/observability/internal/settings/{key} | Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **get**
> String get(key)

Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalSettingsApi.new
key = 'key_example' # String | Observability setting key for which value to be retrieved.

begin
  #Gets values for the particular key from observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get(key)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalSettingsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Observability setting key for which value to be retrieved. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_keys**
> Array&lt;String&gt; get_keys

Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalSettingsApi.new

begin
  #Gets keys of all the existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get_keys
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalSettingsApi->get_keys: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_settings**
> String get_settings

Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalSettingsApi.new

begin
  #Gets all existing observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get_settings
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalSettingsApi->get_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(key, opts)

Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalSettingsApi.new
key = 'key_example' # String | Key of Setting to be updated.
opts = {
  request_body: 'request_body_example' # String | 
}

begin
  #Updates observability settings. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.update(key, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalSettingsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Key of Setting to be updated. | 
 **request_body** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



