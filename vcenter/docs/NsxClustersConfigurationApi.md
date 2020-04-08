# VSphereAutomation::VCenter::NsxClustersConfigurationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable**](NsxClustersConfigurationApi.md#disable) | **POST** /api/vcenter/nsx/clusters/{cluster}/configuration?action&#x3D;disable | Disables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**enable**](NsxClustersConfigurationApi.md#enable) | **POST** /api/vcenter/nsx/clusters/{cluster}/configuration?action&#x3D;enable | Enables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **disable**
> disable(cluster)

Disables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersConfigurationApi.new
cluster = 'cluster_example' # String | Identifier for the vSphere cluster on which NSX networking will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Disables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.disable(cluster)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersConfigurationApi->disable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the vSphere cluster on which NSX networking will be disabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable**
> enable(cluster, opts)

Enables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersConfigurationApi.new
cluster = 'cluster_example' # String | Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNsxClusterEnableSpec.new # VcenterNsxClusterEnableSpec | 
}

begin
  #Enables NSX networking on the hosts in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.enable(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersConfigurationApi->enable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the vSphere cluster on which NSX networking will be enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNsxClusterEnableSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



