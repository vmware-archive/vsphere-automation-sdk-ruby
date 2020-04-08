# VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelEnumerationApi.md#get) | **GET** /rest/com/vmware/vapi/metadata/metamodel/enumeration/id:{enumeration_id} | Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. &lt;p&gt; The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
[**list**](MetadataMetamodelEnumerationApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/metamodel/enumeration | Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.


# **get**
> VapiMetadataMetamodelEnumerationResp get(enumeration_id)

Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi.new
enumeration_id = 'enumeration_id_example' # String | Identifier of the enumeration element.

begin
  #Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
  result = api_instance.get(enumeration_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelEnumerationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enumeration_id** | **String**| Identifier of the enumeration element. | 

### Return type

[**VapiMetadataMetamodelEnumerationResp**](VapiMetadataMetamodelEnumerationResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataMetamodelEnumerationListResp list

Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi.new

begin
  #Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelEnumerationApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelEnumerationListResp**](VapiMetadataMetamodelEnumerationListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



