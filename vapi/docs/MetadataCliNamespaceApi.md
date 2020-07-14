# VSphereAutomation::VAPI::MetadataCliNamespaceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fingerprint**](MetadataCliNamespaceApi.md#fingerprint) | **POST** /com/vmware/vapi/metadata/cli/namespace?~action&#x3D;fingerprint | Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
[**get**](MetadataCliNamespaceApi.md#get) | **POST** /com/vmware/vapi/metadata/cli/namespace?~action&#x3D;get | Retreives information about a namespace including information about children of that namespace.
[**list**](MetadataCliNamespaceApi.md#list) | **GET** /com/vmware/vapi/metadata/cli/namespace | Returns the identifiers of all namespaces registered with the infrastructure.


# **fingerprint**
> VapiMetadataCliNamespaceFingerprintResult fingerprint

Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.

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

api_instance = VSphereAutomation::VAPI::MetadataCliNamespaceApi.new

begin
  #Returns the aggregate fingerprint of all the namespace metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for namespaces has been modified on the server.
  result = api_instance.fingerprint
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliNamespaceApi->fingerprint: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataCliNamespaceFingerprintResult**](VapiMetadataCliNamespaceFingerprintResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VapiMetadataCliNamespaceResult get(request_body)

Retreives information about a namespace including information about children of that namespace.

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

api_instance = VSphereAutomation::VAPI::MetadataCliNamespaceApi.new
request_body = VAPI::VapiMetadataCliNamespaceGet.new # VapiMetadataCliNamespaceGet | 

begin
  #Retreives information about a namespace including information about children of that namespace.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliNamespaceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VapiMetadataCliNamespaceGet**](VapiMetadataCliNamespaceGet.md)|  | 

### Return type

[**VapiMetadataCliNamespaceResult**](VapiMetadataCliNamespaceResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VapiMetadataCliNamespaceListResult list

Returns the identifiers of all namespaces registered with the infrastructure.

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

api_instance = VSphereAutomation::VAPI::MetadataCliNamespaceApi.new

begin
  #Returns the identifiers of all namespaces registered with the infrastructure.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataCliNamespaceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataCliNamespaceListResult**](VapiMetadataCliNamespaceListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



