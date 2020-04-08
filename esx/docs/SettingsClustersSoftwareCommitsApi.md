# VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareCommitsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/commits/{commit} | Returns the information about a specific commit.


# **get**
> EsxSettingsClustersSoftwareCommitsInfo get(cluster, commit)

Returns the information about a specific commit.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareCommitsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
commit = 'commit_example' # String | Identifier of the specific commit.

begin
  #Returns the information about a specific commit.
  result = api_instance.get(cluster, commit)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareCommitsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **commit** | **String**| Identifier of the specific commit. | 

### Return type

[**EsxSettingsClustersSoftwareCommitsInfo**](EsxSettingsClustersSoftwareCommitsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



