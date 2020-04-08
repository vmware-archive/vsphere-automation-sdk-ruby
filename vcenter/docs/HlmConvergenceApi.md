# VSphereAutomation::VCenter::HlmConvergenceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**converge_task**](HlmConvergenceApi.md#converge_task) | **GET** /rest/vcenter/hlm/convergence?vmw-task&#x3D;true | Performs convergence checks for whole community in all services. This can be called after link finished to check whether the system is available. Or anytime want to know whether the system is converged after data been modified. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **converge_task**
> VcenterHlmConvergenceConvergeTaskResp converge_task(opts)

Performs convergence checks for whole community in all services. This can be called after link finished to check whether the system is available. Or anytime want to know whether the system is converged after data been modified. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmConvergenceApi.new
opts = {
  hostname: 'hostname_example' # String | Running convergence check to which remote vCenter Server
}

begin
  #Performs convergence checks for whole community in all services. This can be called after link finished to check whether the system is available. Or anytime want to know whether the system is converged after data been modified. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.converge_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmConvergenceApi->converge_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostname** | **String**| Running convergence check to which remote vCenter Server | [optional] 

### Return type

[**VcenterHlmConvergenceConvergeTaskResp**](VcenterHlmConvergenceConvergeTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



