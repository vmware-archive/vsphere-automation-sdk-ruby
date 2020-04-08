# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_and_create**](SettingsHostsSoftwareDraftsInternalApi.md#delete_and_create) | **POST** /api/esx/settings/hosts/{host}/software/drafts-internal?action&#x3D;delete-and-create | Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete_and_import**](SettingsHostsSoftwareDraftsInternalApi.md#delete_and_import) | **POST** /api/esx/settings/hosts/{host}/software/drafts-internal?action&#x3D;delete-and-import | Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete_and_create**
> EsxSettingsHostsSoftwareDraftsInternalCreateResult delete_and_create(host)

Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsInternalApi.new
host = 'host_example' # String | Identifier of the host

begin
  #Creates a new software draft from the desired document. If there is a draft already associated with the user, that draft will be deleted before new draft is created. When the draft is committed successfully, it will be deleted. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.delete_and_create(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsInternalApi->delete_and_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host | 

### Return type

[**EsxSettingsHostsSoftwareDraftsInternalCreateResult**](EsxSettingsHostsSoftwareDraftsInternalCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_and_import**
> EsxSettingsHostsSoftwareDraftsInternalCreateResult delete_and_import(host, opts)

Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsInternalApi.new
host = 'host_example' # String | Identifier of the host.
opts = {
  request_body: ESX::EsxSettingsHostsSoftwareDraftsInternalImportSpec.new # EsxSettingsHostsSoftwareDraftsInternalImportSpec | 
}

begin
  #Imports the desired software specification as a new draft. If there is a draft already associated with the user for this host, that draft will be deleted before new draft is created. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.delete_and_import(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsInternalApi->delete_and_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **request_body** | **EsxSettingsHostsSoftwareDraftsInternalImportSpec**|  | [optional] 

### Return type

[**EsxSettingsHostsSoftwareDraftsInternalCreateResult**](EsxSettingsHostsSoftwareDraftsInternalCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



