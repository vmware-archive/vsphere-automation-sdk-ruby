# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareBaseImageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareDraftsSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/base-image | Returns the base-image specification in a software draft.
[**set**](SettingsClustersSoftwareDraftsSoftwareBaseImageApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/base-image | Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists.


# **get**
> EsxSettingsBaseImageInfo get(cluster, draft)

Returns the base-image specification in a software draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareBaseImageApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the base-image specification in a software draft.
  result = api_instance.get(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareBaseImageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**EsxSettingsBaseImageInfo**](EsxSettingsBaseImageInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, draft, opts)

Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareBaseImageApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
opts = {
  request_body: ESX::EsxSettingsBaseImageSpec.new # EsxSettingsBaseImageSpec | 
}

begin
  #Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists.
  api_instance.set(cluster, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareBaseImageApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **request_body** | **EsxSettingsBaseImageSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



