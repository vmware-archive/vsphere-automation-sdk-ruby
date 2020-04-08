# VSphereAutomation::VCenter::NamespaceManagementClusterAvailableVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NamespaceManagementClusterAvailableVersionsApi.md#list) | **GET** /api/vcenter/namespace-management/software/cluster-available-versions | Get information about each available upgrade.


# **list**
> Array&lt;VcenterNamespaceManagementClusterAvailableVersionsSummary&gt; list

Get information about each available upgrade.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementClusterAvailableVersionsApi.new

begin
  #Get information about each available upgrade.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementClusterAvailableVersionsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNamespaceManagementClusterAvailableVersionsSummary&gt;**](VcenterNamespaceManagementClusterAvailableVersionsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



