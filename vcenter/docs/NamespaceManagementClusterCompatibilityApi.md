# VSphereAutomation::VCenter::NamespaceManagementClusterCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NamespaceManagementClusterCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/cluster-compatibility | Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.


# **list**
> Array&lt;VcenterNamespaceManagementClusterCompatibilitySummary&gt; list(opts)

Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClusterCompatibilityApi.new
opts = {
  compatible: true # Boolean | Compatibility criteria for matching the filter. If true, only clusters which are compatible for Namespaces match the filter. If false, all clusters match the filter. If unset, both compatible and incompatible clusters match the filter.
}

begin
  #Returns Namespaces compatibility information for all clusters in vCenter matching the ClusterCompatibility.FilterSpec. The result contains only visible (subject to permission checks) clusters.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClusterCompatibilityApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compatible** | **Boolean**| Compatibility criteria for matching the filter. If true, only clusters which are compatible for Namespaces match the filter. If false, all clusters match the filter. If unset, both compatible and incompatible clusters match the filter. | [optional] 

### Return type

[**Array&lt;VcenterNamespaceManagementClusterCompatibilitySummary&gt;**](VcenterNamespaceManagementClusterCompatibilitySummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



