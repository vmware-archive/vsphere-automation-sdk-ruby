# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Deletes the given component from the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Returns the component version for the given component in the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components | Returns the components that comprise the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components/{component} | Set the component version for a given component in the software draft. This will overwrite any existing version for the given component. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](SettingsHostsSoftwareDraftsSoftwareComponentsApi.md#update) | **PATCH** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/components | Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete**
> delete(host, draft, component)

Deletes the given component from the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.

begin
  #Deletes the given component from the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(host, draft, component)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareComponentsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsComponentInfo get(host, draft, component)

Returns the component version for the given component in the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.

begin
  #Returns the component version for the given component in the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host, draft, component)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareComponentsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 

### Return type

[**EsxSettingsComponentInfo**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsComponentInfo&gt; list(host, draft)

Returns the components that comprise the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the components that comprise the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareComponentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**Hash&lt;String, EsxSettingsComponentInfo&gt;**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(host, draft, component, opts)

Set the component version for a given component in the software draft. This will overwrite any existing version for the given component. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.
opts = {
  request_body: 'request_body_example' # String | 
}

begin
  #Set the component version for a given component in the software draft. This will overwrite any existing version for the given component. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(host, draft, component, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareComponentsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 
 **request_body** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(host, draft, opts)

Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.
opts = {
  request_body: ESX::EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec.new # EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec | 
}

begin
  #Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(host, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareComponentsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **request_body** | **EsxSettingsHostsSoftwareDraftsSoftwareComponentsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



