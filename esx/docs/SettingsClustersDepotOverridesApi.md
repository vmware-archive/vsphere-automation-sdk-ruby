# VSphereAutomation::ESX::SettingsClustersDepotOverridesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](SettingsClustersDepotOverridesApi.md#add) | **POST** /api/esx/settings/clusters/{cluster}/depot-overrides?action&#x3D;add | Adds a new depot override to the list of currently configured depot overrides for a given cluster.
[**get**](SettingsClustersDepotOverridesApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/depot-overrides | Returns the information about  currently configured depot overrides for a given cluster.
[**remove**](SettingsClustersDepotOverridesApi.md#remove) | **POST** /api/esx/settings/clusters/{cluster}/depot-overrides?action&#x3D;remove | Removes a depot override from the list of currently configured depot overrides for a given cluster.


# **add**
> add(cluster, opts)

Adds a new depot override to the list of currently configured depot overrides for a given cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersDepotOverridesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersDepotOverridesDepot.new # EsxSettingsClustersDepotOverridesDepot | 
}

begin
  #Adds a new depot override to the list of currently configured depot overrides for a given cluster.
  api_instance.add(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersDepotOverridesApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 
 **request_body** | **EsxSettingsClustersDepotOverridesDepot**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> EsxSettingsClustersDepotOverridesInfo get(cluster)

Returns the information about  currently configured depot overrides for a given cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersDepotOverridesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.

begin
  #Returns the information about  currently configured depot overrides for a given cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersDepotOverridesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 

### Return type

[**EsxSettingsClustersDepotOverridesInfo**](EsxSettingsClustersDepotOverridesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> remove(cluster, opts)

Removes a depot override from the list of currently configured depot overrides for a given cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersDepotOverridesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersDepotOverridesDepot.new # EsxSettingsClustersDepotOverridesDepot | 
}

begin
  #Removes a depot override from the list of currently configured depot overrides for a given cluster.
  api_instance.remove(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersDepotOverridesApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 
 **request_body** | **EsxSettingsClustersDepotOverridesDepot**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



