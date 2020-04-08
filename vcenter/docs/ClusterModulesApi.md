# VSphereAutomation::VCenter::ClusterModulesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ClusterModulesApi.md#create) | **POST** /rest/vcenter/cluster/modules | Creates a new module in a vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](ClusterModulesApi.md#delete) | **DELETE** /rest/vcenter/cluster/modules/{module} | Deletes a specific module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](ClusterModulesApi.md#list) | **GET** /rest/vcenter/cluster/modules | Returns information about the modules available in this vCenter server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> VcenterClusterModulesCreateResp create(request_body)

Creates a new module in a vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesApi.new
request_body = VCenter::VcenterClusterModulesCreate.new # VcenterClusterModulesCreate | 

begin
  #Creates a new module in a vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterClusterModulesCreate**](VcenterClusterModulesCreate.md)|  | 

### Return type

[**VcenterClusterModulesCreateResp**](VcenterClusterModulesCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(_module)

Deletes a specific module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesApi.new
_module = '_module_example' # String | Identifier of the module to be deleted. The parameter must be an identifier for the resource type: vcenter.cluster.modules.

begin
  #Deletes a specific module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(_module)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_module** | **String**| Identifier of the module to be deleted. The parameter must be an identifier for the resource type: vcenter.cluster.modules. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterClusterModulesListResp list

Returns information about the modules available in this vCenter server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesApi.new

begin
  #Returns information about the modules available in this vCenter server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterClusterModulesListResp**](VcenterClusterModulesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



