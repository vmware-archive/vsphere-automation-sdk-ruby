# VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_task**](SettingsClustersSoftwareSolutionsApi.md#delete_task) | **DELETE** /api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task&#x3D;true | Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**get**](SettingsClustersSoftwareSolutionsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions/{solution} | Returns components registered for the given solution in the desired software specification.
[**list**](SettingsClustersSoftwareSolutionsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/solutions | Returns all solutions in the desired software specification.
[**set_task**](SettingsClustersSoftwareSolutionsApi.md#set_task) | **PUT** /api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task&#x3D;true | Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.


# **delete_task**
> String delete_task(cluster, solution)

Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
solution = 'solution_example' # String | Identifier of the solution.

begin
  #Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.delete_task(cluster, solution)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **solution** | **String**| Identifier of the solution. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsSolutionInfo get(cluster, solution)

Returns components registered for the given solution in the desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
solution = 'solution_example' # String | Identifier of the solution.

begin
  #Returns components registered for the given solution in the desired software specification.
  result = api_instance.get(cluster, solution)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsApi->get: #{e}"
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



# **list**
> Hash&lt;String, EsxSettingsSolutionInfo&gt; list(cluster)

Returns all solutions in the desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns all solutions in the desired software specification.
  result = api_instance.list(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**Hash&lt;String, EsxSettingsSolutionInfo&gt;**](EsxSettingsSolutionInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_task**
> String set_task(cluster, solution, opts)

Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
solution = 'solution_example' # String | Identifier of the solution.
opts = {
  request_body: ESX::EsxSettingsSolutionSpec.new # EsxSettingsSolutionSpec | 
}

begin
  #Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.set_task(cluster, solution, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsApi->set_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **solution** | **String**| Identifier of the solution. | 
 **request_body** | **EsxSettingsSolutionSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



