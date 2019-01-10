# VSphereAutomation::VAPI::MetadataAuthenticationServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/service/id:{service_id} | Retrieves authentication information about the service element corresponding to {@param.name serviceId}.
[**list**](MetadataAuthenticationServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/service | Returns the identifiers for the service elements that have authentication information.


# **get**
> VapiMetadataAuthenticationServiceResult get(service_id)

Retrieves authentication information about the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Retrieves authentication information about the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataAuthenticationServiceResult**](VapiMetadataAuthenticationServiceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataAuthenticationServiceListResult list

Returns the identifiers for the service elements that have authentication information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceApi.new

begin
  #Returns the identifiers for the service elements that have authentication information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataAuthenticationServiceListResult**](VapiMetadataAuthenticationServiceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



