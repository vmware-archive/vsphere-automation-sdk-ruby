# VSphereAutomation::Appliance::ObservabilityInternalPluginsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ObservabilityInternalPluginsApi.md#create) | **POST** /api/appliance/observability/internal/plugins | Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**delete**](ObservabilityInternalPluginsApi.md#delete) | **DELETE** /api/appliance/observability/internal/plugins/{name} | Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**get**](ObservabilityInternalPluginsApi.md#get) | **GET** /api/appliance/observability/internal/plugins/{name} | Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**list**](ObservabilityInternalPluginsApi.md#list) | **GET** /api/appliance/observability/internal/plugins | Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**list_names**](ObservabilityInternalPluginsApi.md#list_names) | **GET** /api/appliance/observability/internal/plugins/names | Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**update**](ObservabilityInternalPluginsApi.md#update) | **PATCH** /api/appliance/observability/internal/plugins/{name} | Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **create**
> create(opts)

Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new
opts = {
  request_body: Appliance::ApplianceObservabilityInternalPluginsCreateSpec.new # ApplianceObservabilityInternalPluginsCreateSpec | 
}

begin
  #Adds plugin into observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceObservabilityInternalPluginsCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(name)

Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new
name = 'name_example' # String | Identifier of the plugin to be removed. The parameter must be an identifier for the resource type: appliance.observability.plugin.

begin
  #Removes the plugin from observability plugin list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.delete(name)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the plugin to be removed. The parameter must be an identifier for the resource type: appliance.observability.plugin. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceObservabilityInternalPluginsInfo get(name)

Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new
name = 'name_example' # String | Identifier of the plugin for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.plugin.

begin
  #Gets detailed info about the particular plugin. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get(name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the plugin for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.plugin. | 

### Return type

[**ApplianceObservabilityInternalPluginsInfo**](ApplianceObservabilityInternalPluginsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;ApplianceObservabilityInternalPluginsSummary&gt; list

Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new

begin
  #Lists all the plugins in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceObservabilityInternalPluginsSummary&gt;**](ApplianceObservabilityInternalPluginsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_names**
> Array&lt;String&gt; list_names

Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new

begin
  #Lists all the plugin names exists in Observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list_names
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->list_names: #{e}"
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



# **update**
> update(name, opts)

Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityInternalPluginsApi.new
name = 'name_example' # String | Identifier of the plugin to be updated. The parameter must be an identifier for the resource type: appliance.observability.plugin.
opts = {
  request_body: Appliance::ApplianceObservabilityInternalPluginsUpdateSpec.new # ApplianceObservabilityInternalPluginsUpdateSpec | 
}

begin
  #Updates plugin details, expects all the required info of the plugin as part of spec not just the field/s that needs to be updated. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.update(name, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityInternalPluginsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the plugin to be updated. The parameter must be an identifier for the resource type: appliance.observability.plugin. | 
 **request_body** | **ApplianceObservabilityInternalPluginsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



