# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_task**](SettingsHostsSoftwareDraftsApi.md#commit_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?action&#x3D;commit&amp;vmw-task&#x3D;true | Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. It will also validate the document before committing it. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**create**](SettingsHostsSoftwareDraftsApi.md#create) | **POST** /api/esx/settings/hosts/{host}/software/drafts | Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](SettingsHostsSoftwareDraftsApi.md#delete) | **DELETE** /api/esx/settings/hosts/{host}/software/drafts/{draft} | Deletes the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](SettingsHostsSoftwareDraftsApi.md#get) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft} | Returns the information about given software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**import_software_spec**](SettingsHostsSoftwareDraftsApi.md#import_software_spec) | **POST** /api/esx/settings/hosts/{host}/software/drafts?action&#x3D;import-software-spec | Imports the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](SettingsHostsSoftwareDraftsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts | Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**scan_task**](SettingsHostsSoftwareDraftsApi.md#scan_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans the host against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**validate_task**](SettingsHostsSoftwareDraftsApi.md#validate_task) | **POST** /api/esx/settings/hosts/{host}/software/drafts/{draft}?acion&#x3D;validate&amp;vmw-task&#x3D;true | Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **commit_task**
> String commit_task(host, draft, opts)

Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. It will also validate the document before committing it. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the draft.
opts = {
  request_body: ESX::EsxSettingsHostsSoftwareDraftsCommitSpec.new # EsxSettingsHostsSoftwareDraftsCommitSpec | 
}

begin
  #Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. It will also validate the document before committing it. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.commit_task(host, draft, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->commit_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the draft. | 
 **request_body** | **EsxSettingsHostsSoftwareDraftsCommitSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> String create(host)

Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host

begin
  #Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(host, draft)

Deletes the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host
draft = 'draft_example' # String | Identifier of the draft.

begin
  #Deletes the software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(host, draft)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host | 
 **draft** | **String**| Identifier of the draft. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsHostsSoftwareDraftsInfo get(host, draft)

Returns the information about given software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy of the document.

begin
  #Returns the information about given software draft. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy of the document. | 

### Return type

[**EsxSettingsHostsSoftwareDraftsInfo**](EsxSettingsHostsSoftwareDraftsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_software_spec**
> String import_software_spec(host, opts)

Imports the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
opts = {
  request_body: ESX::EsxSettingsHostsSoftwareDraftsImportSpec.new # EsxSettingsHostsSoftwareDraftsImportSpec | 
}

begin
  #Imports the desired software specification. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.import_software_spec(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->import_software_spec: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **request_body** | **EsxSettingsHostsSoftwareDraftsImportSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsHostsSoftwareDraftsSummary&gt; list(host, opts)

Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
opts = {
  owners: ['owners_example'] # Array<String> | Owners of the drafts. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
}

begin
  #Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **owners** | [**Array&lt;String&gt;**](String.md)| Owners of the drafts. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 

### Return type

[**Hash&lt;String, EsxSettingsHostsSoftwareDraftsSummary&gt;**](EsxSettingsHostsSoftwareDraftsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **scan_task**
> String scan_task(host, draft)

Scans the host against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy of the document.

begin
  #Scans the host against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.scan_task(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->scan_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy of the document. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validate_task**
> String validate_task(host, draft)

Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy of the document.

begin
  #Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.validate_task(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsApi->validate_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy of the document. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



