# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareBaseImageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsHostsSoftwareDraftsSoftwareBaseImageApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/base-image | Returns the base-image specification in a software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](SettingsHostsSoftwareDraftsSoftwareBaseImageApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/base-image | Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsBaseImageInfo get(host, draft)

Returns the base-image specification in a software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareBaseImageApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the base-image specification in a software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareBaseImageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**EsxSettingsBaseImageInfo**](EsxSettingsBaseImageInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(host, draft, opts)

Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareBaseImageApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.
opts = {
  request_body: ESX::EsxSettingsBaseImageSpec.new # EsxSettingsBaseImageSpec | 
}

begin
  #Sets a new desired base-image specification in the software draft. It will overwrite the existing desired base-image specification if one already exists. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(host, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareBaseImageApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **request_body** | **EsxSettingsBaseImageSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



