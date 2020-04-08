# VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_task**](SettingsClustersEnablementSoftwareApi.md#check_task) | **POST** /api/esx/settings/clusters/{cluster}/enablement/software?action&#x3D;check&amp;vmw-task&#x3D;true | Checks the possibility to manage the cluster with a single software specification.
[**enable_task**](SettingsClustersEnablementSoftwareApi.md#enable_task) | **PUT** /api/esx/settings/clusters/{cluster}/enablement/software?vmw-task&#x3D;true | Enables the feature which manages the cluster with a single software specification.
[**get**](SettingsClustersEnablementSoftwareApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/enablement/software | Returns whether the given cluster is managed with a single software specification.


# **check_task**
> String check_task(cluster, opts)

Checks the possibility to manage the cluster with a single software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersEnablementSoftwareCheckSpec.new # EsxSettingsClustersEnablementSoftwareCheckSpec | 
}

begin
  #Checks the possibility to manage the cluster with a single software specification.
  result = api_instance.check_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersEnablementSoftwareApi->check_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersEnablementSoftwareCheckSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **enable_task**
> String enable_task(cluster, opts)

Enables the feature which manages the cluster with a single software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersEnablementSoftwareEnableSpec.new # EsxSettingsClustersEnablementSoftwareEnableSpec | 
}

begin
  #Enables the feature which manages the cluster with a single software specification.
  result = api_instance.enable_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersEnablementSoftwareApi->enable_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersEnablementSoftwareEnableSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> EsxSettingsClustersEnablementSoftwareInfo get(cluster)

Returns whether the given cluster is managed with a single software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersEnablementSoftwareApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns whether the given cluster is managed with a single software specification.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersEnablementSoftwareApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**EsxSettingsClustersEnablementSoftwareInfo**](EsxSettingsClustersEnablementSoftwareInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



