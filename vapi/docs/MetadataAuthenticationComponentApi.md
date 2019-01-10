# VSphereAutomation::VAPI::MetadataAuthenticationComponentApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fingerprint**](MetadataAuthenticationComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/authentication/component/id:{component_id}?~action&#x3D;fingerprint | Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.authentication.Component#get}.
[**get**](MetadataAuthenticationComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/component/id:{component_id} | Retrieves authentication information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the authentication information about the component element and it&#39;s fingerprint. It contains information about all the package elements that belong to this component element.
[**list**](MetadataAuthenticationComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/component | Returns the identifiers for the component elements that have authentication information.


# **fingerprint**
> VapiMetadataAuthenticationComponentFingerprintResult fingerprint(component_id)

Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.authentication.Component#get}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves the fingerprint computed from the authentication metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.authentication.Component#get}.
  result = api_instance.fingerprint(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationComponentApi->fingerprint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 

### Return type

[**VapiMetadataAuthenticationComponentFingerprintResult**](VapiMetadataAuthenticationComponentFingerprintResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VapiMetadataAuthenticationComponentResult get(component_id)

Retrieves authentication information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the authentication information about the component element and it's fingerprint. It contains information about all the package elements that belong to this component element.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves authentication information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the authentication information about the component element and it's fingerprint. It contains information about all the package elements that belong to this component element.
  result = api_instance.get(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationComponentApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 

### Return type

[**VapiMetadataAuthenticationComponentResult**](VapiMetadataAuthenticationComponentResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataAuthenticationComponentListResult list

Returns the identifiers for the component elements that have authentication information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationComponentApi.new

begin
  #Returns the identifiers for the component elements that have authentication information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationComponentApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataAuthenticationComponentListResult**](VapiMetadataAuthenticationComponentListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



