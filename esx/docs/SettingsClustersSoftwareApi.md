# VSphereAutomation::ESX::SettingsClustersSoftwareApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_task**](SettingsClustersSoftwareApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the desired software document associated with the given cluster to hosts within the cluster. If {@basename ApplySpec#commit} {@term field} is {@term set}, it implies the minimum commit that the {@link esx.settings.clusters.Software#apply} {@term operation} should use, however if subsequent commits have been made to the desired state document the apply {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**check_task**](SettingsClustersSoftwareApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;check&amp;vmw-task&#x3D;true | Runs checks on the cluster before applying the desired software document across all hosts in the cluster. Checks if all hosts in the cluster are in a good state to be updated with the desired software document. If {@basename CheckSpec#commit} {@term field} is {@term set} it implies the minimum commit that the check {@term operation} should use, however if subsequent commits have been made to the desired state document the check {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**export**](SettingsClustersSoftwareApi.md#export) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;export | Exports the desired software specification document and/or image. This API will not export the solution section of the desired software specification.
[**get**](SettingsClustersSoftwareApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software | Returns the complete desired software specification.
[**scan_task**](SettingsClustersSoftwareApi.md#scan_task) | **POST** /api/esx/settings/clusters/{cluster}/software?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the hosts in the cluster against the cluster&#39;s desired state. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.


# **apply_task**
> String apply_task(cluster, opts)

Applies the desired software document associated with the given cluster to hosts within the cluster. If {@basename ApplySpec#commit} {@term field} is {@term set}, it implies the minimum commit that the {@link esx.settings.clusters.Software#apply} {@term operation} should use, however if subsequent commits have been made to the desired state document the apply {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareApplySpec.new # EsxSettingsClustersSoftwareApplySpec | 
}

begin
  #Applies the desired software document associated with the given cluster to hosts within the cluster. If {@basename ApplySpec#commit} {@term field} is {@term set}, it implies the minimum commit that the {@link esx.settings.clusters.Software#apply} {@term operation} should use, however if subsequent commits have been made to the desired state document the apply {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.apply_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareApi->apply_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareApplySpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_task**
> String check_task(cluster, opts)

Runs checks on the cluster before applying the desired software document across all hosts in the cluster. Checks if all hosts in the cluster are in a good state to be updated with the desired software document. If {@basename CheckSpec#commit} {@term field} is {@term set} it implies the minimum commit that the check {@term operation} should use, however if subsequent commits have been made to the desired state document the check {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareCheckSpec.new # EsxSettingsClustersSoftwareCheckSpec | 
}

begin
  #Runs checks on the cluster before applying the desired software document across all hosts in the cluster. Checks if all hosts in the cluster are in a good state to be updated with the desired software document. If {@basename CheckSpec#commit} {@term field} is {@term set} it implies the minimum commit that the check {@term operation} should use, however if subsequent commits have been made to the desired state document the check {@term operation} will use the most recent desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.check_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareApi->check_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareCheckSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **export**
> Hash&lt;String, String&gt; export(cluster, opts)

Exports the desired software specification document and/or image. This API will not export the solution section of the desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareExportSpec.new # EsxSettingsClustersSoftwareExportSpec | 
}

begin
  #Exports the desired software specification document and/or image. This API will not export the solution section of the desired software specification.
  result = api_instance.export(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareApi->export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareExportSpec**|  | [optional] 

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> EsxSettingsSoftwareInfo get(cluster)

Returns the complete desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns the complete desired software specification.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**EsxSettingsSoftwareInfo**](EsxSettingsSoftwareInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **scan_task**
> String scan_task(cluster)

Scans all the hosts in the cluster against the cluster's desired state. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Scans all the hosts in the cluster against the cluster's desired state. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.scan_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareApi->scan_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



