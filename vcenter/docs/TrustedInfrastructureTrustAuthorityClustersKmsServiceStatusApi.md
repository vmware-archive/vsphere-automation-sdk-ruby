# VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_task**](TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi.md#get_task) | **GET** /api/vcenter/trusted-infrastructure/trust-authority-clusters/{cluster}/kms/service-status?vmw-task&#x3D;true | Return the Key Provider Service health in the given cluster.


# **get_task**
> String get_task(cluster)

Return the Key Provider Service health in the given cluster.

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

api_instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Return the Key Provider Service health in the given cluster.
  result = api_instance.get_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustedInfrastructureTrustAuthorityClustersKmsServiceStatusApi->get_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



