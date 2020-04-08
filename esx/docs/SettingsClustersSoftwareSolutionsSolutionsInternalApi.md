# VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsSolutionsInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_task**](SettingsClustersSoftwareSolutionsSolutionsInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions-internal?action&#x3D;apply&amp;vmw-task&#x3D;true | Apply the solution&#39;s components specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove_task**](SettingsClustersSoftwareSolutionsSolutionsInternalApi.md#remove_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions-internal?action&#x3D;remove&amp;vmw-task&#x3D;true | Remove solution&#39;s software components associated with the given cluster from hosts within the cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **apply_task**
> String apply_task(cluster, opts)

Apply the solution's components specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsSolutionsInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplySpec.new # EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplySpec | 
}

begin
  #Apply the solution's components specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.apply_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsSolutionsInternalApi->apply_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareSolutionsSolutionsInternalApplySpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_task**
> String remove_task(cluster, opts)

Remove solution's software components associated with the given cluster from hosts within the cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsSolutionsInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveSpec.new # EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveSpec | 
}

begin
  #Remove solution's software components associated with the given cluster from hosts within the cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsSolutionsInternalApi->remove_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareSolutionsSolutionsInternalRemoveSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



