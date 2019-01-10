# VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigDeploymentTypeApi.md#get) | **GET** /vcenter/system-config/deployment-type | Get the type of the vCenter appliance.
[**reconfigure**](SystemConfigDeploymentTypeApi.md#reconfigure) | **POST** /vcenter/system-config/deployment-type | Reconfigure the type of the vCenter appliance.


# **get**
> VcenterSystemConfigDeploymentTypeResult get

Get the type of the vCenter appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **reconfigure**
> reconfigure(vcenter_system_config_deployment_type_reconfigure)

Reconfigure the type of the vCenter appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::SystemConfigDeploymentTypeApi.new
vcenter_system_config_deployment_type_reconfigure = VSphereAutomation::VcenterSystemConfigDeploymentTypeReconfigure.new # VcenterSystemConfigDeploymentTypeReconfigure | 

begin
  #Reconfigure the type of the vCenter appliance.
  api_instance.reconfigure(vcenter_system_config_deployment_type_reconfigure)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigDeploymentTypeApi->reconfigure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_system_config_deployment_type_reconfigure** | [**VcenterSystemConfigDeploymentTypeReconfigure**](VcenterSystemConfigDeploymentTypeReconfigure.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



