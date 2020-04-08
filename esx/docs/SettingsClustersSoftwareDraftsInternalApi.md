# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_and_create**](SettingsClustersSoftwareDraftsInternalApi.md#delete_and_create) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts-internal?action&#x3D;delete-and-create | Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted.
[**delete_and_import**](SettingsClustersSoftwareDraftsInternalApi.md#delete_and_import) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts-internal?action&#x3D;delete-and-import | Imports the desired software specification as a new draft. If there is a draft already associated with the user for this cluster, that draft will be deleted before new draft is created.


# **delete_and_create**
> EsxSettingsClustersSoftwareDraftsInternalCreateResult delete_and_create(cluster)

Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster

begin
  #Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted.
  result = api_instance.delete_and_create(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsInternalApi->delete_and_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster | 

### Return type

[**EsxSettingsClustersSoftwareDraftsInternalCreateResult**](EsxSettingsClustersSoftwareDraftsInternalCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_and_import**
> EsxSettingsClustersSoftwareDraftsInternalCreateResult delete_and_import(cluster, opts)

Imports the desired software specification as a new draft. If there is a draft already associated with the user for this cluster, that draft will be deleted before new draft is created.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareDraftsInternalImportSpec.new # EsxSettingsClustersSoftwareDraftsInternalImportSpec | 
}

begin
  #Imports the desired software specification as a new draft. If there is a draft already associated with the user for this cluster, that draft will be deleted before new draft is created.
  result = api_instance.delete_and_import(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsInternalApi->delete_and_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareDraftsInternalImportSpec**|  | [optional] 

### Return type

[**EsxSettingsClustersSoftwareDraftsInternalCreateResult**](EsxSettingsClustersSoftwareDraftsInternalCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



