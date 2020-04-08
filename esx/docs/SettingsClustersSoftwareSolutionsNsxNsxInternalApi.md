# VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsNsxNsxInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_task**](SettingsClustersSoftwareSolutionsNsxNsxInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/solutions/nsx?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the NSX Component specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **apply_task**
> String apply_task(cluster, opts)

Applies the NSX Component specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareSolutionsNsxNsxInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec.new # EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec | 
}

begin
  #Applies the NSX Component specified in the desired specification document to the hosts in the cluster. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.apply_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareSolutionsNsxNsxInternalApi->apply_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **request_body** | **EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



