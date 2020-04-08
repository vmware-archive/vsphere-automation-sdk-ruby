# VSphereAutomation::ESX::SettingsInternalSummaryApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsInternalSummaryApi.md#get) | **GET** /api/esx/settings/internal/summary | Summarize the compliance result of the clusters. The API will return the cluster summary with an empty compliance result and/or desired software specification if the service failed get this information from the database due to unexpected scenarios.
[**scan_task**](SettingsInternalSummaryApi.md#scan_task) | **POST** /api/esx/settings/internal/summary?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans all the clusters to get their compliance information against its respective desired state.


# **get**
> Hash&lt;String, EsxSettingsInternalSummaryClusterSummary&gt; get(opts)

Summarize the compliance result of the clusters. The API will return the cluster summary with an empty compliance result and/or desired software specification if the service failed get this information from the database due to unexpected scenarios.

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

api_instance = VSphereAutomation::ESX::SettingsInternalSummaryApi.new
opts = {
  folder: 'folder_example', # String | Identifier of the folder entity. Exactly one of {@name #folder} or {@name #datacenter} must be specified.
  datacenter: 'datacenter_example' # String | Identifier of the datacenter entity Exactly one of {@name #folder} or {@name #datacenter} must be specified.
}

begin
  #Summarize the compliance result of the clusters. The API will return the cluster summary with an empty compliance result and/or desired software specification if the service failed get this information from the database due to unexpected scenarios.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsInternalSummaryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Identifier of the folder entity. Exactly one of {@name #folder} or {@name #datacenter} must be specified. | [optional] 
 **datacenter** | **String**| Identifier of the datacenter entity Exactly one of {@name #folder} or {@name #datacenter} must be specified. | [optional] 

### Return type

[**Hash&lt;String, EsxSettingsInternalSummaryClusterSummary&gt;**](EsxSettingsInternalSummaryClusterSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **scan_task**
> String scan_task(opts)

Scans all the clusters to get their compliance information against its respective desired state.

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

api_instance = VSphereAutomation::ESX::SettingsInternalSummaryApi.new
opts = {
  folder: 'folder_example', # String | Identifier of the folder entity. Exactly one of {@name #folder} or {@name #datacenter} must be specified.
  datacenter: 'datacenter_example' # String | Identifier of the datacenter entity Exactly one of {@name #folder} or {@name #datacenter} must be specified.
}

begin
  #Scans all the clusters to get their compliance information against its respective desired state.
  result = api_instance.scan_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsInternalSummaryApi->scan_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Identifier of the folder entity. Exactly one of {@name #folder} or {@name #datacenter} must be specified. | [optional] 
 **datacenter** | **String**| Identifier of the datacenter entity Exactly one of {@name #folder} or {@name #datacenter} must be specified. | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



