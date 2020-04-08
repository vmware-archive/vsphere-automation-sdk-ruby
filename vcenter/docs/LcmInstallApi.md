# VSphereAutomation::VCenter::LcmInstallApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](LcmInstallApi.md#check) | **POST** /rest/vcenter/lcm/install?action&#x3D;check | Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
[**start**](LcmInstallApi.md#start) | **POST** /rest/vcenter/lcm/install?action&#x3D;start | Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **check**
> VcenterLcmInstallCheckResp check(request_body)

Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmInstallApi.new
request_body = VCenter::VcenterLcmInstallCheck.new # VcenterLcmInstallCheck | 

begin
  #Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.check(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmInstallApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterLcmInstallCheck**](VcenterLcmInstallCheck.md)|  | 

### Return type

[**VcenterLcmInstallCheckResp**](VcenterLcmInstallCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **start**
> VcenterLcmInstallStartResp start(request_body)

Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmInstallApi.new
request_body = VCenter::VcenterLcmInstallStart.new # VcenterLcmInstallStart | 

begin
  #Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.start(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmInstallApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterLcmInstallStart**](VcenterLcmInstallStart.md)|  | 

### Return type

[**VcenterLcmInstallStartResp**](VcenterLcmInstallStartResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



