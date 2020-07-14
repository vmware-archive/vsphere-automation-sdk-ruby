# VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_to_vcsa_embeddedtask**](SystemConfigDeploymentTypeApi.md#convert_to_vcsa_embeddedtask) | **POST** /vcenter/system-config/deployment-type?action&#x3D;convert-to-vcsa-embedded&amp;vmw-task&#x3D;true | Convert the type of the vCenter appliance to vCSA embedded.
[**get**](SystemConfigDeploymentTypeApi.md#get) | **GET** /vcenter/system-config/deployment-type | Get the type of the vCenter appliance.
[**reconfigure**](SystemConfigDeploymentTypeApi.md#reconfigure) | **POST** /vcenter/system-config/deployment-type | Reconfigure the type of the vCenter appliance.


# **convert_to_vcsa_embeddedtask**
> VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTaskResult convert_to_vcsa_embeddedtask(request_body)

Convert the type of the vCenter appliance to vCSA embedded.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi.new
request_body = VCenter::VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTask.new # VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTask | 

begin
  #Convert the type of the vCenter appliance to vCSA embedded.
  result = api_instance.convert_to_vcsa_embeddedtask(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigDeploymentTypeApi->convert_to_vcsa_embeddedtask: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTask**](VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTask.md)|  | 

### Return type

[**VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTaskResult**](VcenterSystemConfigDeploymentTypeConvertToVcsaEmbeddedTaskResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterSystemConfigDeploymentTypeResult get

Get the type of the vCenter appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi.new

begin
  #Get the type of the vCenter appliance.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigDeploymentTypeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSystemConfigDeploymentTypeResult**](VcenterSystemConfigDeploymentTypeResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reconfigure**
> reconfigure(request_body)

Reconfigure the type of the vCenter appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi.new
request_body = VCenter::VcenterSystemConfigDeploymentTypeReconfigure.new # VcenterSystemConfigDeploymentTypeReconfigure | 

begin
  #Reconfigure the type of the vCenter appliance.
  api_instance.reconfigure(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigDeploymentTypeApi->reconfigure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemConfigDeploymentTypeReconfigure**](VcenterSystemConfigDeploymentTypeReconfigure.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



