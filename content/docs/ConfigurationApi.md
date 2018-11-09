# VSphereAutomation::Content::ConfigurationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ConfigurationApi.md#get) | **POST** /com/vmware/content/configuration?~action&#x3D;get | Retrieves the current configuration values.
[**update**](ConfigurationApi.md#update) | **PATCH** /com/vmware/content/configuration | Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn&#39;t guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.


# **get**
> ContentConfigurationResult get

Retrieves the current configuration values.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::ConfigurationApi.new

begin
  #Retrieves the current configuration values.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ConfigurationApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentConfigurationResult**](ContentConfigurationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(content_configuration_update)

Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::ConfigurationApi.new
content_configuration_update = VSphereAutomation::ContentConfigurationUpdate.new # ContentConfigurationUpdate | 

begin
  #Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn't guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
  api_instance.update(content_configuration_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ConfigurationApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_configuration_update** | [**ContentConfigurationUpdate**](ContentConfigurationUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



