# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_task**](SettingsClustersSoftwareDraftsApi.md#commit_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;commit&amp;vmw-task&#x3D;true | Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**create**](SettingsClustersSoftwareDraftsApi.md#create) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts | Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. If a desired document is missing, then this {@term operation} will create an empty draft.
[**delete**](SettingsClustersSoftwareDraftsApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft} | Deletes the software draft.
[**get**](SettingsClustersSoftwareDraftsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft} | Returns the information about given software draft.
[**import_software_spec**](SettingsClustersSoftwareDraftsApi.md#import_software_spec) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts?action&#x3D;import-software-spec | Imports the desired software specification as a new draft. If a desired document is missing, then this {@term operation} will create an empty draft except when the source type is of either {@link SourceType#LATEST_RECOMMENDATION} or {@link SourceType#CURRENT_SERIES_RECOMMENDATION}, then {@link NotFound} error is reported. In addition, the exisiting draft will be overwritten when the source type is of either {@name SourceType#LATEST_RECOMMENDATION} or {@name SourceType#CURRENT_SERIES_RECOMMENDATION}.
[**list**](SettingsClustersSoftwareDraftsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts | Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}.
[**scan_task**](SettingsClustersSoftwareDraftsApi.md#scan_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the hosts in the cluster against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
[**validate_task**](SettingsClustersSoftwareDraftsApi.md#validate_task) | **POST** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}?action&#x3D;validate&amp;vmw-task&#x3D;true | Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.


# **commit_task**
> String commit_task(cluster, draft, opts)

Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the draft.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareDraftsCommitSpec.new # EsxSettingsClustersSoftwareDraftsCommitSpec | 
}

begin
  #Commits the specified draft as the desired state document. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.commit_task(cluster, draft, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->commit_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the draft. | 
 **request_body** | **EsxSettingsClustersSoftwareDraftsCommitSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> String create(cluster)

Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. If a desired document is missing, then this {@term operation} will create an empty draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster

begin
  #Creates a new software draft from the desired document. It will be deleted, when the draft is committed successfully. If a desired document is missing, then this {@term operation} will create an empty draft.
  result = api_instance.create(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete**
> delete(cluster, draft)

Deletes the software draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster
draft = 'draft_example' # String | Identifier of the working copy of the document.

begin
  #Deletes the software draft.
  api_instance.delete(cluster, draft)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster | 
 **draft** | **String**| Identifier of the working copy of the document. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsClustersSoftwareDraftsInfo get(cluster, draft)

Returns the information about given software draft.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the software draft.

begin
  #Returns the information about given software draft.
  result = api_instance.get(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the software draft. | 

### Return type

[**EsxSettingsClustersSoftwareDraftsInfo**](EsxSettingsClustersSoftwareDraftsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_software_spec**
> String import_software_spec(cluster, opts)

Imports the desired software specification as a new draft. If a desired document is missing, then this {@term operation} will create an empty draft except when the source type is of either {@link SourceType#LATEST_RECOMMENDATION} or {@link SourceType#CURRENT_SERIES_RECOMMENDATION}, then {@link NotFound} error is reported. In addition, the exisiting draft will be overwritten when the source type is of either {@name SourceType#LATEST_RECOMMENDATION} or {@name SourceType#CURRENT_SERIES_RECOMMENDATION}.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareDraftsImportSpec.new # EsxSettingsClustersSoftwareDraftsImportSpec | 
}

begin
  #Imports the desired software specification as a new draft. If a desired document is missing, then this {@term operation} will create an empty draft except when the source type is of either {@link SourceType#LATEST_RECOMMENDATION} or {@link SourceType#CURRENT_SERIES_RECOMMENDATION}, then {@link NotFound} error is reported. In addition, the exisiting draft will be overwritten when the source type is of either {@name SourceType#LATEST_RECOMMENDATION} or {@name SourceType#CURRENT_SERIES_RECOMMENDATION}.
  result = api_instance.import_software_spec(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->import_software_spec: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareDraftsImportSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsClustersSoftwareDraftsSummary&gt; list(cluster, opts)

Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  owners: ['owners_example'] # Array<String> | Owners of the drafts.
}

begin
  #Returns information about the software drafts for the specified cluster that match the {@link FilterSpec}.
  result = api_instance.list(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **owners** | [**Array&lt;String&gt;**](String.md)| Owners of the drafts. | [optional] 

### Return type

[**Hash&lt;String, EsxSettingsClustersSoftwareDraftsSummary&gt;**](EsxSettingsClustersSoftwareDraftsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **scan_task**
> String scan_task(cluster, draft)

Scans all the hosts in the cluster against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy of the document.

begin
  #Scans all the hosts in the cluster against the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.scan_task(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->scan_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy of the document. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validate_task**
> String validate_task(cluster, draft)

Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the software draft.

begin
  #Validates the software draft. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.validate_task(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsApi->validate_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the software draft. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



