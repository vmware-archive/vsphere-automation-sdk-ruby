# VSphereAutomation::VCenter::NetworkApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NetworkApi.md#list) | **GET** /vcenter/network | Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.


# **list**
> VcenterNetworkListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::NetworkApi.new
opts = {
  filter_networks: ['filter_networks_example'], # Array<String> | Identifiers of networks that can match the filter. If unset or empty, networks with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Network.
  filter_names: ['filter_names_example'], # Array<String> | Names that networks must have to match the filter (see Network.Summary.name). If unset or empty, networks with any name match the filter.
  filter_types: ['filter_types_example'], # Array<String> | Types that networks must have to match the filter (see Network.Summary.type). If unset, networks with any type match the filter.
  filter_folders: ['filter_folders_example'], # Array<String> | Folders that must contain the network for the network to match the filter. If unset or empty, networks in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'] # Array<String> | Datacenters that must contain the network for the network to match the filter. If unset or empty, networks in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) networks in vCenter matching the Network.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NetworkApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_networks** | [**Array&lt;String&gt;**](String.md)| Identifiers of networks that can match the filter. If unset or empty, networks with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Network. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that networks must have to match the filter (see Network.Summary.name). If unset or empty, networks with any name match the filter. | [optional] 
 **filter_types** | [**Array&lt;String&gt;**](String.md)| Types that networks must have to match the filter (see Network.Summary.type). If unset, networks with any type match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the network for the network to match the filter. If unset or empty, networks in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the network for the network to match the filter. If unset or empty, networks in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 

### Return type

[**VcenterNetworkListResult**](VcenterNetworkListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



