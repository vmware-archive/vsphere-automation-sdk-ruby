# VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_task**](SettingsClustersSoftwareReportsHardwareCompatibilityApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility?action&#x3D;check&amp;vmw-task&#x3D;true | Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**get**](SettingsClustersSoftwareReportsHardwareCompatibilityApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility | Returns the hcl validation check summary.


# **check_task**
> String check_task(cluster)

Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Initiates a Cluster HCL Validation check for a given cluster. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.check_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareReportsHardwareCompatibilityApi->check_task: #{e}"
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



# **get**
> EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary get(cluster)

Returns the hcl validation check summary.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityApi.new
cluster = 'cluster_example' # String | identifier of the cluster.

begin
  #Returns the hcl validation check summary.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareReportsHardwareCompatibilityApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| identifier of the cluster. | 

### Return type

[**EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary**](EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



