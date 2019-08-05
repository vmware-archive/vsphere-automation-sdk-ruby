# VSphereAutomation::VAPI::MetadataMetamodelComponentApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fingerprint**](MetadataMetamodelComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/metamodel/component/id:{component_id} | Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
[**get**](MetadataMetamodelComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/component/id:{component_id} | Retrieves metamodel information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the metamodel information about the component and it&#39;s fingerprint. It contains information about all the package elements that are contained in this component element.
[**list**](MetadataMetamodelComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/component | Returns the identifiers for the component elements that are registered with the infrastructure.


# **fingerprint**
> VapiMetadataMetamodelComponentFingerprintResult fingerprint(component_id, action)

Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.
action = 'action_example' # String | ~action=fingerprint

begin
  #Retrieves the fingerprint computed from the metamodel metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component element has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.metamodel.Component#get}.
  result = api_instance.fingerprint(component_id, action)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelComponentApi->fingerprint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 
 **action** | **String**| ~action&#x3D;fingerprint | 

### Return type

[**VapiMetadataMetamodelComponentFingerprintResult**](VapiMetadataMetamodelComponentFingerprintResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VapiMetadataMetamodelComponentResult get(component_id)

Retrieves metamodel information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the metamodel information about the component and it's fingerprint. It contains information about all the package elements that are contained in this component element.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves metamodel information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the metamodel information about the component and it's fingerprint. It contains information about all the package elements that are contained in this component element.
  result = api_instance.get(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelComponentApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 

### Return type

[**VapiMetadataMetamodelComponentResult**](VapiMetadataMetamodelComponentResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataMetamodelComponentListResult list

Returns the identifiers for the component elements that are registered with the infrastructure.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelComponentApi.new

begin
  #Returns the identifiers for the component elements that are registered with the infrastructure.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelComponentApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelComponentListResult**](VapiMetadataMetamodelComponentListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



