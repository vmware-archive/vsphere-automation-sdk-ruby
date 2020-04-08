# VSphereAutomation::VCenter::SettingsNamespacesItemsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsNamespacesItemsApi.md#list) | **GET** /rest/vcenter/settings/namespaces/{namespace}/items | Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**put**](SettingsNamespacesItemsApi.md#put) | **PATCH** /rest/vcenter/settings/namespaces/{namespace}/items | Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \&quot;\&quot;, is passed in as the value, the value is set to \&quot;\&quot;. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> VcenterSettingsNamespacesItemsListResp list(namespace, opts)

Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesItemsApi.new
namespace = 'namespace_example' # String | the targetted namespace
opts = {
  keys: ['keys_example'] # Array<String> | 
}

begin
  #Returns a map of  item values corresponding to the keys in the namespace. The readPrivilege defined in the namespace is checked before the operation is initiated. If keys is not passed in, the entire map of KV pairs are returned. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(namespace, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesItemsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| the targetted namespace | 
 **keys** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**VcenterSettingsNamespacesItemsListResp**](VcenterSettingsNamespacesItemsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put**
> put(namespace, request_body)

Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \"\", is passed in as the value, the value is set to \"\". Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesItemsApi.new
namespace = 'namespace_example' # String | the targetted namespace
request_body = VCenter::VcenterSettingsNamespacesItemsPut.new # VcenterSettingsNamespacesItemsPut | 

begin
  #Put a map of key value pairs in the namespace. This overrides any existing key/value if they already exist in the namespace. The writePrivilege defined in the namespace is checked before the operation is initiated. When the value is not passed in the map items, the item in the namespace is deleted. When an empty (0 length) String, \"\", is passed in as the value, the value is set to \"\". Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.put(namespace, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesItemsApi->put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| the targetted namespace | 
 **request_body** | [**VcenterSettingsNamespacesItemsPut**](VcenterSettingsNamespacesItemsPut.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



