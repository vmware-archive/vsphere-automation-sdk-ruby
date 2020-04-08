# VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NsxManagementNetworkCompatibilityApi.md#list) | **GET** /api/vcenter/nsx/management-network-compatibility | List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> Array&lt;VcenterNsxManagementNetworkCompatibilitySummary&gt; list(cluster, dv_switch)

List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi.new
cluster = 'cluster_example' # String | Identifier of a vCenter Cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
dv_switch = 'dv_switch_example' # String | Identifier of a vSphere Distributed Switch (VDS). The parameter must be an identifier for the resource type: DistributedVirtualSwitch.

begin
  #List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(cluster, dv_switch)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxManagementNetworkCompatibilityApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of a vCenter Cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **dv_switch** | **String**| Identifier of a vSphere Distributed Switch (VDS). The parameter must be an identifier for the resource type: DistributedVirtualSwitch. | 

### Return type

[**Array&lt;VcenterNsxManagementNetworkCompatibilitySummary&gt;**](VcenterNsxManagementNetworkCompatibilitySummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



