# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Deletes a given host&#39;s working copy document Hardware Support Package configuration.
[**get**](SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Returns a given host&#39;s working copy document Hardware Support Package (HSP) configuration.
[**set**](SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/hardware-support | Replaces a given host&#39;s working copy document Hardware Support Package (HSP) configured.


# **delete**
> delete(host, draft)

Deletes a given host's working copy document Hardware Support Package configuration.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.new
host = 'host_example' # String | Identifier for the host.
draft = 'draft_example' # String | Identifier of image working copy document being updated

begin
  #Deletes a given host's working copy document Hardware Support Package configuration.
  api_instance.delete(host, draft)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host. | 
 **draft** | **String**| Identifier of image working copy document being updated | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsHardwareSupportInfo get(host, draft)

Returns a given host's working copy document Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.new
host = 'host_example' # String | Identifier for the host.
draft = 'draft_example' # String | Identifier of image working copy document being updated

begin
  #Returns a given host's working copy document Hardware Support Package (HSP) configuration.
  result = api_instance.get(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host. | 
 **draft** | **String**| Identifier of image working copy document being updated | 

### Return type

[**EsxSettingsHardwareSupportInfo**](EsxSettingsHardwareSupportInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(host, draft, opts)

Replaces a given host's working copy document Hardware Support Package (HSP) configured.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi.new
host = 'host_example' # String | Identifier for the host.
draft = 'draft_example' # String | Identifier of image working copy document being updated
opts = {
  request_body: ESX::EsxSettingsHardwareSupportSpec.new # EsxSettingsHardwareSupportSpec | 
}

begin
  #Replaces a given host's working copy document Hardware Support Package (HSP) configured.
  api_instance.set(host, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareHardwareSupportApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host. | 
 **draft** | **String**| Identifier of image working copy document being updated | 
 **request_body** | **EsxSettingsHardwareSupportSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



