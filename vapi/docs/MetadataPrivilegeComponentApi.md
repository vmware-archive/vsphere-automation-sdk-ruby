# VSphereAutomation::VAPI::MetadataPrivilegeComponentApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fingerprint**](MetadataPrivilegeComponentApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/privilege/component/id:{component_id}?~action&#x3D;fingerprint | Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.
[**get**](MetadataPrivilegeComponentApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/component/id:{component_id} | Retrieves privilege information about the component element corresponding to {@param.name componentId}. &lt;p&gt; The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
[**list**](MetadataPrivilegeComponentApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/component | Returns the identifiers for the component elements that have privilege information.


# **fingerprint**
> VapiMetadataPrivilegeComponentFingerprintResult fingerprint(component_id)

Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves the fingerprint computed from the privilege metadata of the component element corresponding to {@param.name componentId}. <p> The fingerprint provides clients an efficient way to check if the metadata for a particular component has been modified on the server. The client can do this by comparing the result of this operation with the fingerprint returned in the result of {@link vapi.metadata.privilege.Component#get}.
  result = api_instance.fingerprint(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeComponentApi->fingerprint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 

### Return type

[**VapiMetadataPrivilegeComponentFingerprintResult**](VapiMetadataPrivilegeComponentFingerprintResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VapiMetadataPrivilegeComponentResult get(component_id)

Retrieves privilege information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeComponentApi.new
component_id = 'component_id_example' # String | Identifier of the component element.

begin
  #Retrieves privilege information about the component element corresponding to {@param.name componentId}. <p> The {@link ComponentData} contains the privilege information about the component element and its fingerprint. It contains information about all the package elements that belong to this component element.
  result = api_instance.get(component_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeComponentApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Identifier of the component element. | 

### Return type

[**VapiMetadataPrivilegeComponentResult**](VapiMetadataPrivilegeComponentResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataPrivilegeComponentListResult list

Returns the identifiers for the component elements that have privilege information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeComponentApi.new

begin
  #Returns the identifiers for the component elements that have privilege information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeComponentApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataPrivilegeComponentListResult**](VapiMetadataPrivilegeComponentListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



