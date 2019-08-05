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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



