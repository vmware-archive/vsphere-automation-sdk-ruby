# VSphereAutomation::VCenter::NamespaceManagementStatsTimeSeriesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespaceManagementStatsTimeSeriesApi.md#get) | **GET** /api/vcenter/namespace-management/stats/time-series | Gather statistical values for a cluster, namespace, or pod.


# **get**
> Array&lt;VcenterNamespaceManagementStatsTimeSeriesTimeSeries&gt; get(obj_type, start, _end, opts)

Gather statistical values for a cluster, namespace, or pod.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementStatsTimeSeriesApi.new
obj_type = 'obj_type_example' # String | Type of statistics object that this request is operating on.
start = 56 # Integer | UNIX timestamp value indicating when the requested series of statistical samples should begin. https://en.wikipedia.org/wiki/Unix_time
_end = 56 # Integer | UNIX timestamp value indicating when the requested series of statistical samples should end. https://en.wikipedia.org/wiki/Unix_time
opts = {
  pod: 'pod_example', # String | 
  namespace: 'namespace_example', # String | Namespace name for queries for a namespace. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is NAMESPACE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance.
  cluster: 'cluster_example' # String | Cluster identifier for queries for a cluster. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is CLUSTER. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource.
}

begin
  #Gather statistical values for a cluster, namespace, or pod.
  result = api_instance.get(obj_type, start, _end, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementStatsTimeSeriesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **obj_type** | **String**| Type of statistics object that this request is operating on. | 
 **start** | **Integer**| UNIX timestamp value indicating when the requested series of statistical samples should begin. https://en.wikipedia.org/wiki/Unix_time | 
 **_end** | **Integer**| UNIX timestamp value indicating when the requested series of statistical samples should end. https://en.wikipedia.org/wiki/Unix_time | 
 **pod** | **String**|  | [optional] 
 **namespace** | **String**| Namespace name for queries for a namespace. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is NAMESPACE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance. | [optional] 
 **cluster** | **String**| Cluster identifier for queries for a cluster. This field is optional and it is only relevant when the value of TimeSeries.Spec.obj-type is CLUSTER. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | [optional] 

### Return type

[**Array&lt;VcenterNamespaceManagementStatsTimeSeriesTimeSeries&gt;**](VcenterNamespaceManagementStatsTimeSeriesTimeSeries.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



