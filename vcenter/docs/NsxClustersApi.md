# VSphereAutomation::VCenter::NsxClustersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxClustersApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster} | Returns information about NSX networking specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxClustersInfo get(cluster)

Returns information about NSX networking specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersApi.new
cluster = 'cluster_example' # String | Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns information about NSX networking specification on a vSphere cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the vSphere cluster on which NSX networking is enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNsxClustersInfo**](VcenterNsxClustersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



