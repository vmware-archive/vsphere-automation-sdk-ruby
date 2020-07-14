# VSphereAutomation::VAPI::MetadataPrivilegeServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataPrivilegeServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/service/id:{service_id} | Retrieves privilege information about the service element corresponding to {@param.name serviceId}.
[**list**](MetadataPrivilegeServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/service | Returns the identifiers for the service elements that have privilege information.


# **get**
> VapiMetadataPrivilegeServiceResult get(service_id)

Retrieves privilege information about the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Retrieves privilege information about the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataPrivilegeServiceResult**](VapiMetadataPrivilegeServiceResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataPrivilegeServiceListResult list

Returns the identifiers for the service elements that have privilege information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceApi.new

begin
  #Returns the identifiers for the service elements that have privilege information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataPrivilegeServiceListResult**](VapiMetadataPrivilegeServiceListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



