# VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsBeingAppliedInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareSolutionsBeingAppliedInternalApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions-being-applied-internal/{solution} | Returns the components registered for the given solution in the software specification that is being considered to be applied.


# **get**
> EsxSettingsSolutionInfo get(cluster, solution)

Returns the components registered for the given solution in the software specification that is being considered to be applied.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsBeingAppliedInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
solution = 'solution_example' # String | Identifier of the solution.

begin
  #Returns the components registered for the given solution in the software specification that is being considered to be applied.
  result = api_instance.get(cluster, solution)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsBeingAppliedInternalApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **solution** | **String**| Identifier of the solution. | 

### Return type

[**EsxSettingsSolutionInfo**](EsxSettingsSolutionInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



