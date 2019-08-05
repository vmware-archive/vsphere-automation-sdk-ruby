# VSphereAutomation::Content::ConfigurationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ConfigurationApi.md#get) | **POST** /com/vmware/content/configuration | Retrieves the current configuration values.
[**update**](ConfigurationApi.md#update) | **PATCH** /com/vmware/content/configuration | Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn&#39;t guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.


# **get**
> ContentConfigurationResult get(action)

Retrieves the current configuration values.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::ConfigurationApi.new
action = 'action_example' # String | ~action=get

begin
  #Retrieves the current configuration values.
  result = api_instance.get(action)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ConfigurationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| ~action&#x3D;get | 

### Return type

[**ContentConfigurationResult**](ContentConfigurationResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(request_body)

Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::ConfigurationApi.new
request_body = Content::ContentConfigurationUpdate.new # ContentConfigurationUpdate | 

begin
  #Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
  api_instance.update(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ConfigurationApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentConfigurationUpdate**](ContentConfigurationUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



