# VSphereAutomation::VCenter::DeploymentApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DeploymentApi.md#get) | **GET** /vcenter/deployment | Get the current status of the appliance deployment.
[**rollback**](DeploymentApi.md#rollback) | **POST** /vcenter/deployment?action&#x3D;rollback | Rollback a failed appliance so it can be configured once again.


# **get**
> VcenterDeploymentResult get

Get the current status of the appliance deployment.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentApi.new

begin
  #Get the current status of the appliance deployment.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterDeploymentResult**](VcenterDeploymentResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **rollback**
> rollback

Rollback a failed appliance so it can be configured once again.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DeploymentApi.new

begin
  #Rollback a failed appliance so it can be configured once again.
  api_instance.rollback
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DeploymentApi->rollback: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



