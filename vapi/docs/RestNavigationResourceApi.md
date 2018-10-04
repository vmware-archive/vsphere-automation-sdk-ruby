# VSphereAutomation::VAPI::RestNavigationResourceApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationResourceApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id} | Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
[**list**](RestNavigationResourceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/resource | Gets list of all vAPI REST {@link Resource}s.


# **get**
> VapiRestNavigationResourceResult get(type_id, instance_id)

Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
type_id = 'type_id_example' # String | Resource type id.
instance_id = 'instance_id_example' # String | Resource instance id.

begin
  #Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
  result = api_instance.get(type_id, instance_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| Resource type id. | 
 **instance_id** | **String**| Resource instance id. | 

### Return type

[**VapiRestNavigationResourceResult**](VapiRestNavigationResourceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiRestNavigationResourceListResult list

Gets list of all vAPI REST {@link Resource}s.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new

begin
  #Gets list of all vAPI REST {@link Resource}s.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiRestNavigationResourceListResult**](VapiRestNavigationResourceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



