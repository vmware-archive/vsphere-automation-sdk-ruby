# VSphereAutomation::VCenter::NsxEdgeClustersStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxEdgeClustersStatusApi.md#get) | **GET** /api/vcenter/nsx/edge-clusters/{cluster}/status | Return the status of configuration of NSX Edge capabilities on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxEdgeClustersStatusInfo get(cluster)

Return the status of configuration of NSX Edge capabilities on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxEdgeClustersStatusApi.new
cluster = 'cluster_example' # String | Identifier for the cluster compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return the status of configuration of NSX Edge capabilities on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxEdgeClustersStatusApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster compute resource associated with the NSX Edge node(s). The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNsxEdgeClustersStatusInfo**](VcenterNsxEdgeClustersStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



