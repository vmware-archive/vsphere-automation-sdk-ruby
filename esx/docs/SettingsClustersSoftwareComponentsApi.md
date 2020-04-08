# VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/components/{component} | Returns the component version for the given component in the desired software specification.
[**list**](SettingsClustersSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/components | Returns a list of components in the desired software specification.


# **get**
> EsxSettingsComponentInfo get(cluster, component)

Returns the component version for the given component in the desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
component = 'component_example' # String | Identifier of the component.

begin
  #Returns the component version for the given component in the desired software specification.
  result = api_instance.get(cluster, component)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareComponentsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **component** | **String**| Identifier of the component. | 

### Return type

[**EsxSettingsComponentInfo**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsComponentInfo&gt; list(cluster)

Returns a list of components in the desired software specification.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns a list of components in the desired software specification.
  result = api_instance.list(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareComponentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**Hash&lt;String, EsxSettingsComponentInfo&gt;**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



