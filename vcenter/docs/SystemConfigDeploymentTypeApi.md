# VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigDeploymentTypeApi.md#get) | **GET** /rest/vcenter/system-config/deployment-type | Get the type of the vCenter appliance.
[**reconfigure**](SystemConfigDeploymentTypeApi.md#reconfigure) | **POST** /rest/vcenter/system-config/deployment-type | Reconfigure the type of the vCenter appliance.


# **get**
> VcenterSystemConfigDeploymentTypeResp get

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

[**VcenterSystemConfigDeploymentTypeResp**](VcenterSystemConfigDeploymentTypeResp.md)

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



