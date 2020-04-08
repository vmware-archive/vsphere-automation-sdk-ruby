# VSphereAutomation::VCenter::LcmInstallScheduledApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LcmInstallScheduledApi.md#get) | **GET** /rest/vcenter/lcm/install/scheduled/{task} | Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](LcmInstallScheduledApi.md#set) | **PUT** /rest/vcenter/lcm/install/scheduled/{task} | Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterLcmInstallScheduledResp get(task)

Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::LcmInstallScheduledApi.new
task = 'task_example' # String | The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.

begin
  #Retrieves information of the install operation that has the given id. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmInstallScheduledApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task. | 

### Return type

[**VcenterLcmInstallScheduledResp**](VcenterLcmInstallScheduledResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(task, request_body)

Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::LcmInstallScheduledApi.new
task = 'task_example' # String | The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task.
request_body = VCenter::VcenterLcmInstallScheduledSet.new # VcenterLcmInstallScheduledSet | 

begin
  #Updates the information of the task that has the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(task, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmInstallScheduledApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| The identifier of the task. The parameter must be an identifier for the resource type: vcenter.lcm.task. | 
 **request_body** | [**VcenterLcmInstallScheduledSet**](VcenterLcmInstallScheduledSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



