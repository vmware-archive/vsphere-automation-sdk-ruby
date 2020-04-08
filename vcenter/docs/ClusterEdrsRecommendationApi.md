# VSphereAutomation::VCenter::ClusterEdrsRecommendationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate**](ClusterEdrsRecommendationApi.md#generate) | **POST** /rest/vcenter/cluster/{cluster}/edrs/recommendation?action&#x3D;generate | Gives a recommendation to scale in a cluster when all resources (CPU/memory/storage) are underutilized, or to scale out a cluster when any resource is being heavily utilized. NO_ACTION will be returned if cluster resources are well utilized. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **generate**
> VcenterClusterEdrsRecommendationGenerateResp generate(cluster)

Gives a recommendation to scale in a cluster when all resources (CPU/memory/storage) are underutilized, or to scale out a cluster when any resource is being heavily utilized. NO_ACTION will be returned if cluster resources are well utilized. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterEdrsRecommendationApi.new
cluster = 'cluster_example' # String | Identifier of cluster that requests EDRS recommenation. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Gives a recommendation to scale in a cluster when all resources (CPU/memory/storage) are underutilized, or to scale out a cluster when any resource is being heavily utilized. NO_ACTION will be returned if cluster resources are well utilized. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.generate(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterEdrsRecommendationApi->generate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of cluster that requests EDRS recommenation. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterClusterEdrsRecommendationGenerateResp**](VcenterClusterEdrsRecommendationGenerateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



