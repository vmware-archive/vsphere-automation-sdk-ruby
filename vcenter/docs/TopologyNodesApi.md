# VSphereAutomation::VCenter::TopologyNodesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TopologyNodesApi.md#get) | **GET** /rest/vcenter/topology/nodes/{node} | Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
[**list**](TopologyNodesApi.md#list) | **GET** /rest/vcenter/topology/nodes | Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  


# **get**
> VcenterTopologyNodesResp get(node)

Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::TopologyNodesApi.new
node = 'node_example' # String | Identifier of the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. The parameter must be an identifier for the resource type: vcenter.VCenter.name.

begin
  #Retrieve details for a given identifier of the vCenter or Platform Services Controller node. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
  result = api_instance.get(node)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TopologyNodesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **node** | **String**| Identifier of the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. The parameter must be an identifier for the resource type: vcenter.VCenter.name. | 

### Return type

[**VcenterTopologyNodesResp**](VcenterTopologyNodesResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterTopologyNodesListResp list(opts)

Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::TopologyNodesApi.new
opts = {
  filter_types: ['filter_types_example'] # Array<String> | Types of the appliance that a vCenter and Platform Services Controller node must be to match the filter (see Nodes.ApplianceType. If unset or empty, node of any ApplianceType match the filter.
}

begin
  #Returns information about all vCenter and Platform Services Controller nodes matching the Nodes.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TopologyNodesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_types** | [**Array&lt;String&gt;**](String.md)| Types of the appliance that a vCenter and Platform Services Controller node must be to match the filter (see Nodes.ApplianceType. If unset or empty, node of any ApplianceType match the filter. | [optional] 

### Return type

[**VcenterTopologyNodesListResp**](VcenterTopologyNodesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



