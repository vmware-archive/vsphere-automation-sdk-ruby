# VSphereAutomation::VCenter::HlmCommunityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_task**](HlmCommunityApi.md#add_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;add&amp;vmw-task&#x3D;true | Adds the target node to the community. By default, the first member of the community id the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**check**](HlmCommunityApi.md#check) | **POST** /rest/vcenter/hlm/community?action&#x3D;check | Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**check_task**](HlmCommunityApi.md#check_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;check&amp;vmw-task&#x3D;true | Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](HlmCommunityApi.md#get) | **GET** /rest/vcenter/hlm/community | Information about the community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove_task**](HlmCommunityApi.md#remove_task) | **POST** /rest/vcenter/hlm/community?action&#x3D;remove&amp;vmw-task&#x3D;true | Removes a specified node from a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add_task**
> VcenterHlmCommunityAddTaskResp add_task(request_body)

Adds the target node to the community. By default, the first member of the community id the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmCommunityApi.new
request_body = VCenter::VcenterHlmCommunityAddTask.new # VcenterHlmCommunityAddTask | 

begin
  #Adds the target node to the community. By default, the first member of the community id the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmCommunityApi->add_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmCommunityAddTask**](VcenterHlmCommunityAddTask.md)|  | 

### Return type

[**VcenterHlmCommunityAddTaskResp**](VcenterHlmCommunityAddTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check**
> VcenterHlmCommunityCheckResp check(opts)

Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmCommunityApi.new
opts = {
  request_body: VCenter::VcenterHlmCommunityCheck.new # VcenterHlmCommunityCheck | 
}

begin
  #Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmCommunityApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmCommunityCheck**](VcenterHlmCommunityCheck.md)|  | [optional] 

### Return type

[**VcenterHlmCommunityCheckResp**](VcenterHlmCommunityCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_task**
> VcenterHlmCommunityCheckTaskResp check_task(opts)

Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmCommunityApi.new
opts = {
  request_body: VCenter::VcenterHlmCommunityCheckTask.new # VcenterHlmCommunityCheckTask | 
}

begin
  #Performs network checks between nodes in the community. This can be called before the add to validate network requirements prior to performing the action or after adding to check network connectivity within a peers of a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.check_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmCommunityApi->check_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmCommunityCheckTask**](VcenterHlmCommunityCheckTask.md)|  | [optional] 

### Return type

[**VcenterHlmCommunityCheckTaskResp**](VcenterHlmCommunityCheckTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterHlmCommunityResp get

Information about the community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmCommunityApi.new

begin
  #Information about the community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmCommunityApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterHlmCommunityResp**](VcenterHlmCommunityResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_task**
> VcenterHlmCommunityRemoveTaskResp remove_task(request_body)

Removes a specified node from a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmCommunityApi.new
request_body = VCenter::VcenterHlmCommunityRemoveTask.new # VcenterHlmCommunityRemoveTask | 

begin
  #Removes a specified node from a community. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove_task(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmCommunityApi->remove_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmCommunityRemoveTask**](VcenterHlmCommunityRemoveTask.md)|  | 

### Return type

[**VcenterHlmCommunityRemoveTaskResp**](VcenterHlmCommunityRemoveTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



