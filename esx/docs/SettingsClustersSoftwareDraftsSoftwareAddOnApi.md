# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Deletes the desired OEM add-on specification in the software draft.
[**get**](SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Returns the OEM add-on specification in a software draft.
[**set**](SettingsClustersSoftwareDraftsSoftwareAddOnApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/add-on | Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.


# **delete**
> delete(cluster, draft)

Deletes the desired OEM add-on specification in the software draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Deletes the desired OEM add-on specification in the software draft.
  api_instance.delete(cluster, draft)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsAddOnInfo get(cluster, draft)

Returns the OEM add-on specification in a software draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the OEM add-on specification in a software draft.
  result = api_instance.get(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**EsxSettingsAddOnInfo**](EsxSettingsAddOnInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, draft, opts)

Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareAddOnApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
opts = {
  request_body: ESX::EsxSettingsAddOnSpec.new # EsxSettingsAddOnSpec | 
}

begin
  #Sets a new desired OEM add-on specification in the software draft. It will overwrite the existing desired OEM add-on specification if one already exists.
  api_instance.set(cluster, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareAddOnApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **request_body** | **EsxSettingsAddOnSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



