# VSphereAutomation::ESX::SettingsClustersSoftwareRecommendationsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_task**](SettingsClustersSoftwareRecommendationsApi.md#generate_task) | **POST** /api/esx/settings/clusters/{cluster}/software/recommendations?action&#x3D;generate&amp;vmw-task&#x3D;true | Generates recommended software image spec(s) based on current desired software spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**get**](SettingsClustersSoftwareRecommendationsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/recommendations | Returns Information about the most recent recommendation generation result.


# **generate_task**
> String generate_task(cluster)

Generates recommended software image spec(s) based on current desired software spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareRecommendationsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Generates recommended software image spec(s) based on current desired software spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.generate_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareRecommendationsApi->generate_task: #{e}"
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
> EsxSettingsClustersSoftwareRecommendationsInfo get(cluster)

Returns Information about the most recent recommendation generation result.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareRecommendationsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns Information about the most recent recommendation generation result.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareRecommendationsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**EsxSettingsClustersSoftwareRecommendationsInfo**](EsxSettingsClustersSoftwareRecommendationsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



