# VSphereAutomation::VCenter::VchaClusterDeploymentTypeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaClusterDeploymentTypeApi.md#get) | **GET** /vcenter/vcha/cluster/deployment-type | Retrieves the deployment type of a VCHA cluster.


# **get**
> VcenterVchaClusterDeploymentTypeResult get

Retrieves the deployment type of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaClusterDeploymentTypeApi.new

begin
  #Retrieves the deployment type of a VCHA cluster.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaClusterDeploymentTypeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterVchaClusterDeploymentTypeResult**](VcenterVchaClusterDeploymentTypeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



