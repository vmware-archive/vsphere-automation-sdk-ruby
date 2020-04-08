# VSphereAutomation::VCenter::NsxClustersStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NsxClustersStatusApi.md#get) | **GET** /api/vcenter/nsx/clusters/{cluster}/status | Return the status of NSX configuration on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterNsxClustersStatusInfo get(cluster)

Return the status of NSX configuration on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::NsxClustersStatusApi.new
cluster = 'cluster_example' # String | Identifier for the cluster compute resource enabled for NSX networking. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return the status of NSX configuration on the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxClustersStatusApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster compute resource enabled for NSX networking. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNsxClustersStatusInfo**](VcenterNsxClustersStatusInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



