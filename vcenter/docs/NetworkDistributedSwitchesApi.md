# VSphereAutomation::VCenter::NetworkDistributedSwitchesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NetworkDistributedSwitchesApi.md#list) | **GET** /rest/vcenter/network/distributed-switches | Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> VcenterNetworkDistributedSwitchesListResp list(opts)

Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NetworkDistributedSwitchesApi.new
opts = {
  filter_min_version: 'filter_min_version_example', # String | Minimum version that the vSphere distributed switches must have to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any version match the filter.
  filter_min_mtu: 56, # Integer | Minimum size of the Maximum Transmission Unit (MTU) that this vSphere distributed switch must permit for its network traffic, to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, vSphere distributed switches with any MTU size match the filter.
  filter_clusters: ['filter_clusters_example'], # Array<String> | Clusters that must contain host(s) connected to a vSphere distributed switch for it to match the filter. For each cluster provided, the value of DistributedSwitches.FilterSpec.connected-to-all-hosts is used to control whether any or all hosts in it must be connected to the vSphere distributed switch for the vSphere distributed switch to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  filter_connected_to_all_hosts: true # Boolean | Flag to alter the filtering behavior among clustered hosts. If false, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it. If true, a vSphere distributed switch will only match a cluster if all hosts in the cluster are connected to it (see DistributedSwitches.FilterSpec.clusters). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) vSphere distributed switches in vCenter matching the DistributedSwitches.FilterSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkDistributedSwitchesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_min_version** | **String**| Minimum version that the vSphere distributed switches must have to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any version match the filter. | [optional] 
 **filter_min_mtu** | **Integer**| Minimum size of the Maximum Transmission Unit (MTU) that this vSphere distributed switch must permit for its network traffic, to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, vSphere distributed switches with any MTU size match the filter. | [optional] 
 **filter_clusters** | [**Array&lt;String&gt;**](String.md)| Clusters that must contain host(s) connected to a vSphere distributed switch for it to match the filter. For each cluster provided, the value of DistributedSwitches.FilterSpec.connected-to-all-hosts is used to control whether any or all hosts in it must be connected to the vSphere distributed switch for the vSphere distributed switch to match the filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset or empty, vSphere distributed switches with any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
 **filter_connected_to_all_hosts** | **Boolean**| Flag to alter the filtering behavior among clustered hosts. If false, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it. If true, a vSphere distributed switch will only match a cluster if all hosts in the cluster are connected to it (see DistributedSwitches.FilterSpec.clusters). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, a vSphere distributed switch will match a cluster if any hosts in the cluster are connected to it. | [optional] 

### Return type

[**VcenterNetworkDistributedSwitchesListResp**](VcenterNetworkDistributedSwitchesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



