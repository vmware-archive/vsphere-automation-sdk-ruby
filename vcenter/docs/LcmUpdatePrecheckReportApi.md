# VSphereAutomation::VCenter::LcmUpdatePrecheckReportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](LcmUpdatePrecheckReportApi.md#create_task) | **POST** /api/vcenter/lcm/update/pending/{version}/precheck-report?vmw-task&#x3D;true | Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 


# **create_task**
> String create_task(version)

Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::LcmUpdatePrecheckReportApi.new
version = 'version_example' # String | Pending update version for which pre-update compatibility check will be executed. The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.

begin
  #Creates a vCenter Server pre-update compatibility check report for the pending update version. The report can be exported and downloaded in CSV format.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
  result = api_instance.create_task(version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmUpdatePrecheckReportApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Pending update version for which pre-update compatibility check will be executed. The parameter must be an identifier for the resource type: vcenter.lcm.update.pending. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



