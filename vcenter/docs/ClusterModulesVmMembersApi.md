# VSphereAutomation::VCenter::ClusterModulesVmMembersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](ClusterModulesVmMembersApi.md#add) | **POST** /rest/vcenter/cluster/modules/vm/{module}/members?action&#x3D;add | Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](ClusterModulesVmMembersApi.md#get) | **GET** /rest/vcenter/cluster/modules/vm/{module}/members | Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove**](ClusterModulesVmMembersApi.md#remove) | **POST** /rest/vcenter/cluster/modules/vm/{module}/members?action&#x3D;remove | Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterClusterModulesVmMembersAddResp add(_module, request_body)

Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesVmMembersApi.new
_module = '_module_example' # String | Identifier of the module to which the specified virtual machines are added. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
request_body = VCenter::VcenterClusterModulesVmMembersAdd.new # VcenterClusterModulesVmMembersAdd | 

begin
  #Adds virtual machines to the module. These virtual machines are required to be in the same vCenter cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(_module, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesVmMembersApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_module** | **String**| Identifier of the module to which the specified virtual machines are added. The parameter must be an identifier for the resource type: vcenter.cluster.modules. | 
 **request_body** | [**VcenterClusterModulesVmMembersAdd**](VcenterClusterModulesVmMembersAdd.md)|  | 

### Return type

[**VcenterClusterModulesVmMembersAddResp**](VcenterClusterModulesVmMembersAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterClusterModulesVmMembersResp get(_module)

Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesVmMembersApi.new
_module = '_module_example' # String | Identifier of the module to be queried for its virtual machines. The parameter must be an identifier for the resource type: vcenter.cluster.modules.

begin
  #Returns the virtual machines that are members of the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(_module)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesVmMembersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_module** | **String**| Identifier of the module to be queried for its virtual machines. The parameter must be an identifier for the resource type: vcenter.cluster.modules. | 

### Return type

[**VcenterClusterModulesVmMembersResp**](VcenterClusterModulesVmMembersResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> VcenterClusterModulesVmMembersRemoveResp remove(_module, request_body)

Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterModulesVmMembersApi.new
_module = '_module_example' # String | Identifier of the module from which the specified virtual machines are removed. The parameter must be an identifier for the resource type: vcenter.cluster.modules.
request_body = VCenter::VcenterClusterModulesVmMembersRemove.new # VcenterClusterModulesVmMembersRemove | 

begin
  #Removes virtual machines from the module. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove(_module, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterModulesVmMembersApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_module** | **String**| Identifier of the module from which the specified virtual machines are removed. The parameter must be an identifier for the resource type: vcenter.cluster.modules. | 
 **request_body** | [**VcenterClusterModulesVmMembersRemove**](VcenterClusterModulesVmMembersRemove.md)|  | 

### Return type

[**VcenterClusterModulesVmMembersRemoveResp**](VcenterClusterModulesVmMembersRemoveResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



