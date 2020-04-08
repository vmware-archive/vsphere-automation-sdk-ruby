# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Deletes a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.
[**get**](SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Returns a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.
[**set**](SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/hardware-support | Replaces a given cluster&#39;s working copy document Hardware Support Package (HSP) configuration.


# **delete**
> delete(cluster, draft)

Deletes a given cluster's working copy document Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.
draft = 'draft_example' # String | Identifier of image working copy document being updated

begin
  #Deletes a given cluster's working copy document Hardware Support Package (HSP) configuration.
  api_instance.delete(cluster, draft)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 
 **draft** | **String**| Identifier of image working copy document being updated | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsHardwareSupportInfo get(cluster, draft)

Returns a given cluster's working copy document Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.
draft = 'draft_example' # String | Identifier of image working copy document being updated

begin
  #Returns a given cluster's working copy document Hardware Support Package (HSP) configuration.
  result = api_instance.get(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 
 **draft** | **String**| Identifier of image working copy document being updated | 

### Return type

[**EsxSettingsHardwareSupportInfo**](EsxSettingsHardwareSupportInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, draft, opts)

Replaces a given cluster's working copy document Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.
draft = 'draft_example' # String | Identifier of image working copy document being updated
opts = {
  request_body: ESX::EsxSettingsHardwareSupportSpec.new # EsxSettingsHardwareSupportSpec | 
}

begin
  #Replaces a given cluster's working copy document Hardware Support Package (HSP) configuration.
  api_instance.set(cluster, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareHardwareSupportApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 
 **draft** | **String**| Identifier of image working copy document being updated | 
 **request_body** | **EsxSettingsHardwareSupportSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



