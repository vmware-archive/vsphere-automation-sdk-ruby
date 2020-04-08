# VSphereAutomation::VCenter::NsxEdgeClustersConfigurationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disable**](NsxEdgeClustersConfigurationApi.md#disable) | **POST** /api/vcenter/nsx/edge-clusters/{cluster}/configuration?action&#x3D;disable | Disables NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**enable**](NsxEdgeClustersConfigurationApi.md#enable) | **POST** /api/vcenter/nsx/edge-clusters/{cluster}/configuration?action&#x3D;enable | Enable NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **disable**
> disable(cluster)

Disables NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxEdgeClustersConfigurationApi.new
cluster = 'cluster_example' # String | Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Disables NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.disable(cluster)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxEdgeClustersConfigurationApi->disable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable**
> enable(cluster, opts)

Enable NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxEdgeClustersConfigurationApi.new
cluster = 'cluster_example' # String | Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  request_body: VCenter::VcenterNsxEdgeClusterEnableSpec.new # VcenterNsxEdgeClusterEnableSpec | 
}

begin
  #Enable NSX Edge capabilities in a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.enable(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxEdgeClustersConfigurationApi->enable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | **VcenterNsxEdgeClusterEnableSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



