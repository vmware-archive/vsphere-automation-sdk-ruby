# VSphereAutomation::VCenter::NsxClustersNetworkingStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxClustersNetworkingStatusApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster}/networking-status | Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxClustersNetworkingStatusInfo get(cluster)

Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersNetworkingStatusApi.new
cluster = 'cluster_example' # String | Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns information about the overall configuration status of the cluster, status of the VDS which was used for the overlay network configuration of the cluster, configuration status and health status of the NSX Edge node(s) in the cluster, configuration status and health status of ESXi hosts in the cluster and information about the logical router in the NSX Edge node(s). Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersNetworkingStatusApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNsxClustersNetworkingStatusInfo**](VcenterNsxClustersNetworkingStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



