# VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_task**](SettingsHostsSoftwareSolutionsApi.md#delete_task) | **DELETE** /api/esx/settings/hosts/{host}/software/solutions/{solution}?vmw-task&#x3D;true | Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](SettingsHostsSoftwareSolutionsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/solutions/{solution} | Returns components registered for the given solution in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](SettingsHostsSoftwareSolutionsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/solutions | Returns all solutions in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set_task**](SettingsHostsSoftwareSolutionsApi.md#set_task) | **PUT** /api/esx/settings/hosts/{host}/software/solutions/{solution}?vmw-task&#x3D;true | Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete_task**
> String delete_task(host, solution)

Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi.new
host = 'host_example' # String | Identifier of the host.
solution = 'solution_example' # String | Identifier of the solution.

begin
  #Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.delete_task(host, solution)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareSolutionsApi->delete_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **solution** | **String**| Identifier of the solution. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsSolutionInfo get(host, solution)

Returns components registered for the given solution in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi.new
host = 'host_example' # String | Identifier of the host.
solution = 'solution_example' # String | Identifier of the solution.

begin
  #Returns components registered for the given solution in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host, solution)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareSolutionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **solution** | **String**| Identifier of the solution. | 

### Return type

[**EsxSettingsSolutionInfo**](EsxSettingsSolutionInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsSolutionInfo&gt; list(host)

Returns all solutions in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi.new
host = 'host_example' # String | Identifier of the host.

begin
  #Returns all solutions in the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareSolutionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 

### Return type

[**Hash&lt;String, EsxSettingsSolutionInfo&gt;**](EsxSettingsSolutionInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_task**
> String set_task(host, solution, opts)

Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareSolutionsApi.new
host = 'host_example' # String | Identifier of the host.
solution = 'solution_example' # String | Identifier of the solution.
opts = {
  request_body: ESX::EsxSettingsSolutionSpec.new # EsxSettingsSolutionSpec | 
}

begin
  #Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.set_task(host, solution, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareSolutionsApi->set_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **solution** | **String**| Identifier of the solution. | 
 **request_body** | **EsxSettingsSolutionSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



